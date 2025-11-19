
# March Madness Predictive Modeling

### Predicting NCAA Tournament Outcomes Using Team Strength Metrics

## Overview

This project looks at whether a few key team strength indicators — **power rating difference**, **seed difference**, and **pool value difference** — can help predict the outcomes of NCAA March Madness matchups.

I combined data from historical tournament games, FiveThirtyEight team ratings, and HeatCheck’s tournament analytics, then built a simple model to see how well these features actually explain which team wins.

---

## Datasets Used

### FiveThirtyEight Ratings

Historical team ratings that include:

* Power Rating
* Power Rating Rank
* Team, Seed, Year

### Matchups Dataset

Game-level results:

* Teams
* Seeds
* Scores
* Round

### HeatCheck Tournament Index

Extra context behind each team:

* Pool Value
* Power-Path
* Other ranking metrics

---

## Project Workflow

### Data Import and Merging

I loaded all three datasets, merged them together by team and year, and inspected the columns to make sure the join worked correctly.

### Feature Engineering

I created three features that capture different sides of team strength:

| Feature               | Description                            |
| --------------------- | -------------------------------------- |
| ratings_difference    | Difference in the teams' Power Ratings |
| seed_difference       | Tournament seed gap between teams      |
| pool_value_difference | Difference in HeatCheck Pool Values    |

These features represent team quality, expectations, and matchup balance.

### Exploratory Analysis

I plotted the power rating difference against the actual score difference and found a clear positive trend: higher-rated teams usually win by more.

### Baseline Accuracy

A simple baseline prediction — picking the team with the higher power rating — reached:

**70.7% accuracy**

### Logistic Regression Model

Using the engineered features, I trained a Logistic Regression classifier to predict winner (1 or 0).

**Training Accuracy:** 72%
**Testing Accuracy:** 63%

---

## Results Summary

### What Worked Well

* Power ratings lined up closely with real game outcomes.
* Seed difference gave consistent signals about expected matchup strength.
* Pool value difference added additional context and helped capture how evenly matched games were.

### Limitations

* The model only uses three features on purpose to stay simple and interpretable.
* I didn’t use deeper metrics like efficiency stats or player-level data.
* March Madness upsets limit how accurate any model can be.

### Takeaway

Even with a small feature set, the model picked up real patterns in tournament matchups. This project highlights my ability to merge and clean datasets, engineer features, explore relationships, and build a predictive model in a structured way.

---

## How to Run the Notebook

1. Clone the repo:

```
git clone <your-repo-link>
```

2. Install dependencies:

```
pip install pandas matplotlib scikit-learn
```

3. Open the notebook:

```
jupyter notebook
```

4. Run all cells.

---

## Future Improvements

Some logical next steps:

* Add more advanced basketball metrics
* Try tree-based models
* Predict round-by-round or build bracket simulations
* Test additional features like team pace, efficiency, or historical trends

---

If you want, I can also revise your repo description, add a file structure section, or help you create a clean cover image for the project.
