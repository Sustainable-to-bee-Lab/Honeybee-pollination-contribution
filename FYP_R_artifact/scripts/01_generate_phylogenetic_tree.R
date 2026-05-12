# Installation runs only once
install.packages(c("rotl", "ape"))

library(rotl)
library(ape)

# Set the working directory to the artifact folder
setwd("E:/ljz/fyp/FYP_R_artifact")

# Create output folder if it does not exist
dir.create("results/tree", recursive = TRUE, showWarnings = FALSE)

taxa <- c(
  "Allium_cepa",
  "Macadamia_integrifolia",
  "Helianthus_annuus",
  "Anethum_graveolens",
  "Daucus_carota",
  "Actinidia_deliciosa",
  "Vaccinium_corymbosum",
  "Vaccinium_macrocarpon",
  "Vitis_vinifera",
  "Paeonia_ostii",
  "Brassica_napus",
  "Brassica_oleracea",
  "Medicago_sativa",
  "Vicia_faba",
  "Cucumis_sativus",
  "Cucurbita_pepo",
  "Malus_domestica",
  "Pyrus_communis",
  "Prunus_avium",
  "Prunus_dulcis",
  "Prunus_persica",
  "Camellia_oleifera",
  "Solanum_lycopersicum",
  "Citrullus_lanatus",
  "Trifolium_pratense",
  "Persea_americana",
  "Solanum_melongena",
  "Paeonia_lactiflora",
  "Coffea_arabica",
  "Fragaria_virginiana",
  "Sinapis_arvensis",
  "Eruca_vesicaria",
  "Perilla_frutescens",
  "Asclepias_syriaca",
  "Echinacea_angustifolia",
  "Citrus_limon",
  "Vigna_unguiculata",
  "Passiflora_edulis",
  "Fagopyrum_esculentum",
  "Eriobotrya_japonica",
  "Gossypium_hirsutum",
  "Yucca_aloifolia",
  "Ceratonia_siliqua",
  "Brassica_rapa",
  "Ribes_uva_crispa",
  "Physalis_philadelphica",
  "Papaver_rhoeas",
  "Pimpinella_anisum",
  "Rubus_idaeus"
)

taxa_query <- gsub("_", " ", taxa)
name_map <- setNames(taxa, taxa_query)

res <- tnrs_match_names(
  names = taxa_query,
  context_name = "Land plants",
  do_approximate_matching = TRUE
)

# Remove unmatched taxa
res <- res[!is.na(res$ott_id), ]

# Keep taxa that are available in the synthetic tree
in_tree_flag <- is_in_tree(res$ott_id)
res_in_tree <- res[in_tree_flag, ]

# Print taxa excluded from the synthetic tree
dropped <- res[!in_tree_flag, c("search_string", "unique_name", "ott_id")]
print(dropped)

cat("Number of taxa available for tree construction：", nrow(res_in_tree), "\n")

stopifnot(nrow(res_in_tree) >= 2)

tree <- tol_induced_subtree(
  ott_ids = res_in_tree$ott_id,
  label_format = "name"
)

tree <- collapse.singles(tree)

tree$tip.label <- gsub(" ", "_", tree$tip.label)

tmp_labels <- gsub("_", " ", tree$tip.label)
tmp_labels <- ifelse(
  tmp_labels %in% names(name_map),
  name_map[tmp_labels],
  gsub(" ", "_", tmp_labels)
)
tree$tip.label <- tmp_labels

if ("Allium_cepa" %in% tree$tip.label) {
  tree <- root(tree, outgroup = "Allium_cepa", resolve.root = TRUE)
}

write.tree(tree, file = "results/tree/plants_opentree_clean.tree")

plot(tree, cex = 0.5)