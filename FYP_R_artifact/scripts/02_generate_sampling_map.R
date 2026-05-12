# Installation runs only once
install.packages("Rcpp")
install.packages("ggimage")
install.packages(c("ggplot2", "sf", "rnaturalearth", "rnaturalearthdata", "readxl"))

library(ggimage)
library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(readxl)

# Set the working directory to the artifact folder
setwd("E:/ljz/fyp/FYP_R_artifact")

# Create output folder if it does not exist
dir.create("results/map", recursive = TRUE, showWarnings = FALSE)

# Read Excel file
pts <- read_excel("data/site.xlsx", sheet = 1)

# Ensure longitude and latitude are numeric
pts$lon <- as.numeric(pts$lon)
pts$lat <- as.numeric(pts$lat)

# Remove rows with missing coordinates
pts <- pts[complete.cases(pts[, c("lon", "lat")]), ]

# Convert group labels to lower case to avoid issues such as RED / Blue
pts$group <- tolower(pts$group)

# Assign icons by group
pts$icon <- ifelse(
  pts$group == "red",
  "assets/pin_red.png",
  "assets/pin_blue.png"
)

# Convert to spatial object while keeping lon/lat columns
pts_sf <- st_as_sf(pts, coords = c("lon", "lat"), crs = 4326, remove = FALSE)

# Adjust latitude so the pin tip better matches the coordinate
pts_sf$lat_pin <- pts_sf$lat + 1.0

# Load world basemap
world <- ne_countries(scale = "medium", returnclass = "sf")

# Plot map
p <- ggplot() +
  geom_sf(data = world, fill = "gray95", color = "gray70", linewidth = 0.2) +
  geom_image(
    data = pts_sf,
    aes(x = lon, y = lat_pin, image = icon),
    size = 0.03,
    asp = 1
  ) +
  coord_sf(crs = st_crs(4326), expand = FALSE) +
  theme_minimal(base_size = 12) +
  labs(
    title = "Global distribution of sampling locations",
    x = "Longitude",
    y = "Latitude"
  )

ggsave(
  filename = "results/map/global_sampling_map.pdf",
  plot = p,
  width = 10,
  height = 5,
  units = "in"
)

ggsave(
  filename = "results/map/global_sampling_map.png",
  plot = p,
  width = 10,
  height = 5,
  units = "in",
  dpi = 300
)

p