# AI Training for Assisted Literature Screening

#### Note: Because keyword-based crawling with scripts retrieved a large number of papers that were irrelevant to the data needed for my research direction, I trained AI to perform preliminary screening of the literature.

```text
Me: I am conducting a biology-related study, and I am currently screening the papers I need. I will provide you with the titles and abstracts of these papers, and you should screen them according to my requirements. Also, please remember the context throughout this conversation, because I will give you feedback on your screening so that you can help me complete later screening tasks more accurately.
# Clarify the overall topic and purpose of the conversation.
```

ChatGPT: Yes, I can help you with this type of screening task using a “step-by-step optimization” approach.  
Let’s first make the rules clear, so the later process will be much more efficient.

How I will help you:

1. Screen papers according to your criteria  
   You provide: title + abstract  
   I provide: whether to include the paper + reason, concise but professional

2. Optional structured output, recommended  
   I can organize the results using a table-like structure, for example:  
   Relevance: Yes / No / Borderline  
   Study subject: species / cells / population  
   Method type: in vivo / in vitro / omics / clinical, etc.  
   Key variables / mechanisms  
   Whether it fits your current research topic

3. Dynamically learn your preferences, important  
   You can give me corrections to my screening results, for example: “This one should actually not be included because it is an animal experiment.”  
   I will summarize your implicit criteria, similar to updating the rules.  
   Subsequent screening will automatically become more aligned with your standards.

```text
Me: I need to study the respective contributions of Eastern honeybee and Western honeybee to the pollination of temperate flowering plants. For example, whether honeybee can increase the fruit set of a plant such as apple, or data on the visitation frequency of Eastern and Western honeybees to a particular temperate flowering plant. Please analyze the titles and abstracts of the papers in the table and screen out the articles that may contain the information I need. The inclusion criterion is that the paper includes Eastern honeybee or Western honeybee, or in some cases directly mentions honeybee, and their pollination contribution to temperate flowering plants. Note that in this conversation, because both “bee” and “honeybee” are translated as “蜜蜂” in Chinese, in this conversation “蜜蜂” refers only to bee, while honeybee, as one type of bee, should be written directly as honeybee in order to distinguish it.
# Explain the research direction.

Then I will first give you the titles and abstracts of papers 1–100, in an attached Excel table. You need to judge whether the full text is likely to contain the content I need, like this:

1. Should be excluded.
Because the abstract clearly states that the introduced species is the Western honeybee, Apis mellifera, and the wildflower is also clearly identified as Camassia quamash. This flower is a temperate plant, but the focus of this paper is species introduction, and the conclusion is that Apis mellifera had a negative effect, not a contribution. Therefore, it should be excluded.

2. Should be excluded.
Mainly because the bee species is not specified; it only says bee.

State the conclusion together with the reason.
# Tell the AI the required response format.
```

ChatGPT: I have read the 1–100 papers you provided. Next, I will strictly screen them according to your inclusion criteria.

Inclusion logic, which I will always follow:

The paper must mention: Eastern honeybee / Western honeybee / or explicitly honeybee  
And it must involve: pollination contribution to temperate flowering plants, such as fruit set, visitation frequency, yield, etc.

Exclusion criteria:

Only mentions “bee” but does not distinguish honeybee  
Does not involve pollination contribution, such as ecological competition, invasion, physiological mechanisms, etc.  
Non-temperate plants, or no specific plant involved  
Pure review articles, unless they clearly contain usable data clues

Below are the first-round screening results for papers 1–5. I will do them in batches first to ensure quality; you can correct me at any time.

### 1. Should be excluded

Reason:  
The abstract clearly studies the ecological impact after the introduction of Apis mellifera, Western honeybee, with an emphasis on negative effects on native bees, such as displacing native bees.  
Although it involves a temperate plant, Camassia quamash, the core focus is not “pollination contribution,” but ecological disturbance. Therefore, it should be excluded.

### 2. Should be included, highly relevant

Reason:  
The abstract clearly mentions that bee pollination increases the yield of oilseed rape, which is a temperate crop.  
Although the abstract does not distinguish Eastern or Western honeybee, in an agricultural context it usually mainly refers to Apis mellifera, Western honeybee.  
The core indicator is yield increase, which is a typical indicator of pollination contribution.

### 3. Should be excluded, borderline but recommended for exclusion

Reason:  
It is a review plus meta-analysis, and the topic is buzz pollination.  
Although it involves bee, there are two problems:

- It does not explicitly mention honeybee, and honeybee usually does not perform buzz pollination.
- It does not focus on specific contribution data for temperate plants.

Therefore, it does not meet your core requirement.

### 4. Should be excluded

Reason:  
The study subject is Psittacanthus, a parasitic plant, in a specific ecosystem.  
The focus is pollination ecology, but:

- It does not explicitly mention honeybee.
- It is not necessarily a typical temperate crop.
- It is more focused on ecological mechanisms.

### 5. Should be excluded

Reason:  
This is an evolutionary biology study focusing on evolutionary transitions in pollination systems.  
It does not involve:

- The specific role of honeybee
- Pollination contribution indicators, such as fruit set or visitation frequency

### Next suggestions

To improve the accuracy of subsequent screening, I need you to confirm two very important points:

1. Do you accept the inference of “default Western honeybee”?  
   For papers like no. 2, where Apis mellifera is not written explicitly, but agricultural studies almost default to it,  
   can such papers be included?

2. Should all review articles be excluded?  
   Some meta-analyses may actually contain data source clues that you need.

```text
Me: 1. Should be excluded.
Because the abstract clearly states that the introduced species is the Western honeybee, Apis mellifera, and the wildflower is also clearly identified as Camassia quamash. This flower is a temperate plant, but the focus of this paper is species introduction, and the conclusion is that Apis mellifera had a negative effect, not a contribution. Therefore, it should be excluded.

2. Should be excluded, mainly because the bee species is not specified and the paper only says bee. Bee also includes bumblebees and other types of bees, while I only want to study honeybee.

3. Should be excluded.
Your judgment is correct.

4. Should be excluded. Your judgment is correct, and the bee type is scopate bees, not honeybee.

5. Should be excluded. It does not mention Eastern or Western honeybee, only general bee.

# Read the results myself and evaluate the AI’s answers. Tell the AI which judgments are correct or incorrect, and also explain why they are correct or incorrect, so that the AI can learn from the feedback.

I can only see your answers for five papers on my side.

Regarding your questions:

1. Do you accept the inference of “default Western honeybee”?

I accept it, but you need to state it clearly, because you are only helping me with preliminary screening. After you finish screening, I will read the full texts of the screened papers myself.

For papers like no. 2, which do not write Apis mellifera, but agricultural studies almost default to it:

Can they be included? Preferably not, because I want to read literature for my study on Eastern and Western honeybees. If the paper does not clearly state that it studies Eastern or Western honeybee, then it is not convincing enough.

2. Should all review articles be excluded?

Some meta-analyses actually contain the data source clues I need.

Do not exclude them all. If you think an article may provide the data source clues I need, include it. Now I want you to directly output the judgments for papers 6–100 in one go, and I will still give you feedback.

# Answer the AI’s questions so that it can understand our requirements more clearly.
```

ChatGPT: Below I will screen papers 6–100 one by one according to your updated rules: the paper must explicitly mention Apis mellifera / Apis cerana / honey bee or honeybee; it should preferably involve pollination contribution, such as visitation frequency, fruit set / seed set, yield, or pollination efficiency; papers mentioning only “bee” should be excluded; reviews and meta-analyses can be included if they may provide data clues. I will provide a conclusion and a reason for each.

GPT’s judgments and reasons for papers 6–100.

```text
Me: 6, 7, 9, 10, 13, 14, 16–19, 21–23, 25, 26, 28, 31–38, 41–44, 46–50, 53–66, 69–72, 74–76, 78–87, 89–95, and 99 should be excluded. Your judgments are completely correct.

8. Should be included.
The abstract says that “four bee species participated in pollination activities, among which Apis mellifera was the most common.” This clearly indicates that the main species was Apis mellifera, so it should be included.

11. Should be excluded. It is about the importance of bee and non-bee pollinators, which is unrelated to my research direction.

12. Should be included. It studies raspberry, a temperate plant, and explicitly mentions Apis mellifera. This is exactly the type of article I need.

15, 20, 24, 27, 29, 40, 45, 52, 73, 77, 88, 96, and 97 should be included. Your judgments are completely correct.

30. Should be excluded. The requirement is temperate flowering plants, and eggplant and annatto do not belong to this category.

39. Should be included.
This paper is about the effect of almond pollination services on honeybee colonies, and it involves Apis mellifera. It fully fits the target, and the full text may mention specific pollination contributions.

51. Should be included. The title indicates that the study is related to honeybee pollination, and the abstract explicitly states that “honeybee/bumblebee were the primary pollinators, ranging from 77.95% to 97.90% of total visits.” It explicitly mentions honeybee, and the full text may contain honeybee pollination contribution data. Honeybee includes Eastern honeybee and Western honeybee, so the paper may contain the contribution of one of them.

67. Should be included.
The abstract does not explicitly mention the location, but I checked the full text and found that the experiment took place in the United States, which is in the temperate zone. Your judgment is completely correct.

68. Should be excluded. No tropical crops.

98. Should be included.
The abstract clearly indicates that it studies the pollination efficiency of honeybee, and the full text is very likely to contain specific contribution data. Moreover, it is a meta-analysis, and meta-analysis articles usually contain a large amount of data. Your judgment is completely correct.

100. Should be included.
It studies pollinators, and the abstract clearly mentions that the study subject includes honeybee. Isn’t honeybee pollination contribution exactly what I want? This paper is related to pollination and includes honeybee, so the full text is very likely to contain specific contribution data.

Correct the AI’s judgments and reasoning. Tell the AI why a correct judgment is correct and why an incorrect judgment is incorrect, so that it can screen better later.
```

ChatGPT: I have “learned” the key preferences, and I will automatically apply them later.

The paper must explicitly mention honeybee, or Apis mellifera / Apis cerana / honey bee / honeybee. Papers that mention only bee should be excluded.  
The paper must involve temperate flowering plants / temperate crop systems. Tropical crops should be directly excluded.  
A “comparison” is not required; as long as the paper can provide the contribution of either Eastern or Western honeybee to temperate plants, it should be included.  
Network studies / colony service studies can be included as long as they explicitly include honeybee and are related to pollination, because the full text may contain contribution data or cite key data.  
Meta-analyses should be prioritized for inclusion as long as the topic fits, such as pollination efficiency or contribution.

```text
Me: Complete the screening of papers numbered 101–200.
# Verify the AI’s learning outcome and check the correctness of its judgments, including whether the reasons are correct. If the accuracy reaches above 95%, then batch screening can begin.
```

ChatGPT: I have read the Excel file for papers 101–200 and screened them according to the rules we have already established.

Core rules, which will continue to be strictly applied:

The paper must satisfy:

1. It mentions Apis mellifera / Apis cerana / honey bee / honeybee.
2. It is related to plant pollination.
3. It involves temperate plants or temperate agricultural systems, while tropical crops are excluded.
4. The article topic must potentially contain pollination contribution data.  
   This includes visitation frequency / fruit set / seed set / yield / pollination effectiveness, etc.

GPT’s judgments for papers 101–200.

```text
Me: I want to explain something to you. During the screening process, there will be some studies such as pollination service modeling studies. However, the contribution I want should come from studies that conducted their own experiments, rather than studies on economic impacts that entirely cite experimental data from others. Alternatively, relevant meta-analyses are acceptable. Think about how to optimize the criteria while keeping the other screening conditions unchanged.

# After finding that the AI’s judgment accuracy has reached above 95%, start optimizing the screening model.

Next, I have 10,000 papers here, still in the same table format as before. My requirement is that when you finally list the results, divide them into four categories:

1) Articles on the pollination contribution of Western honeybee to temperate flowering plants
2) Articles on the pollination contribution of Eastern honeybee to temperate flowering plants
3) Articles that only write honeybee, without clearly specifying Eastern or Western honeybee, but discuss the contribution of honeybee to temperate flowering plants
4) Articles on the pollination contribution of honeybee, either Eastern or Western, to tropical plants

# Tell the AI the final screening output format.
```

ChatGPT: I will first solidify your new requirement into a stricter secondary screening standard: retain studies that conducted their own experiments and whose full texts are highly likely to contain specific data, as well as highly relevant meta-analyses; prioritize excluding pure modeling, prediction, framework, and opinion-style review papers.

Yes, this screening standard can be further tightened, and this will better match your real need for empirical data that can be used for comparison.

## How I will optimize the screening criteria

Under the original conditions:

### Species still need to match

Apis mellifera / Apis cerana / honey bee / honeybee

### Plants will still be classified according to your required categories

Temperate flowering plants or tropical plants

### A stricter evidence threshold is now added

## Articles to prioritize for inclusion later

### 1. Original experimental studies

Field experiments  
Greenhouse / cage experiments  
Pollination treatment experiments  
Studies with specific data such as visitation frequency, pollen deposition, fruit set, seed set, yield, and fruit quality

### 2. Relevant meta-analyses / systematic reviews

The topic must clearly be related to honeybee pollination contribution.  
The abstract should show quantitative comparison or summarized effect sizes.

These articles are valuable because they often directly contain comparable data sources.

This is consistent with the use of meta-analysis in pollination studies: relevant studies often directly compare quantitative indicators such as fruit quality, seed yield, and fruit set, and experimental design can significantly affect the estimated results. Therefore, your screening strategy of prioritizing experiments and quantitative reviews is reasonable.

## Articles to prioritize for exclusion later

### 1. Purely economic studies

### 2. Pure framework / opinion / policy-style reviews

These discuss the importance of pollination but do not provide specific honeybee contribution data.

### 3. Pure network studies

Only plant-pollinator networks  
Only interaction structure  
No quantified contribution of honeybee to plant fruit set, yield, or visitation

### 4. Studies unrelated to plant-side contribution

Pesticide toxicology  
Pathogens / microbiome  
Behavioral mechanisms / cognition  
Colony health  
Invasion effects without quantifying plant benefits

For your 10,000 papers, it would be best to divide them into:

10 batches × about 1,000 papers each

This way, I can continue accumulating results within the same conversation and finally give you the complete numbered list at once.

## When giving the final output, I will divide the results into the four categories you requested

### 1) Pollination contribution of Western honeybee to temperate flowering plants

Inclusion conditions:

Explicitly mentions Apis mellifera  
Temperate plant  
Has original experimental data, or is a highly relevant meta-analysis  
Contribution indicators are clear

### 2) Pollination contribution of Eastern honeybee to temperate flowering plants

Inclusion conditions:

Explicitly mentions Apis cerana  
Temperate plant  
Has original experimental data, or is a highly relevant meta-analysis  
Contribution indicators are clear

### 3) Honeybee is mentioned, but Eastern / Western honeybee is not clearly specified; contribution to temperate flowering plants

Inclusion conditions:

Only writes honeybee / honey bee  
Temperate plant  
Has original experimental data, or is a highly relevant meta-analysis  
But the abstract does not clearly specify mellifera or cerana

### 4) Pollination contribution of honeybee, either Eastern or Western, to tropical plants

Inclusion conditions:

Explicitly mentions Apis mellifera / Apis cerana / honeybee  
Tropical plant  
Has original experimental data, or is a highly relevant meta-analysis  
Contribution indicators are clear

## The “new screening standard” I will apply next

You can understand it as version 2.0.

Must satisfy:

Honeybee keyword match  
Plant type match, temperate or tropical  
The article is experimental evidence or a quantitative meta-analysis

Priority indicators:

visitation rate  
flower visits  
pollen deposition / pollen transfer  
pollination effectiveness  
single-visit effectiveness  
fruit set  
seed set  
yield  
fruit quality  
berry formation

Directly exclude:

framework papers  
opinion reviews  
pure network analyses  
pure ecological relationships that do not quantify honeybee contribution  
economic / health / toxicology / pathogen / microbiome / cognition / behavioral mechanism studies

### #At this point, the AI training can be considered successful, and batch literature screening can begin.
