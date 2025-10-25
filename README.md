# 🧬 Mammal Body Mass Predictor

This Shiny web application estimates a mammal’s approximate **body weight (kg)** from its **brain weight (g)** and **sleep duration (hours/day)**.

## 🌿 Data Source
Data come from the `msleep` dataset in the **ggplot2** R package, originally compiled from:
> Savage, V. M. & West, G. B. *A quantitative theory of mammalian sleep*. Nature (2008).

This dataset includes physiological and ecological information for over 80 mammal species, such as:
- `bodywt`: body weight (kg)
- `brainwt`: brain weight (g)
- `sleep_total`: total sleep duration (hours/day)
- `vore`: feeding type (carnivore, herbivore, omnivore, insectivore)

## 🔬 Biological Rationale
Across mammals, brain size, metabolism, and sleep duration correlate with body size.  
Smaller species tend to have higher metabolic rates and longer sleep, whereas larger mammals usually sleep less.  
These variables provide a simple but meaningful model to estimate body mass.

## ⚙️ How It Works
1. Adjust **Brain Weight** and **Sleep Duration** sliders.  
2. Choose whether to apply a **log-transformed regression model**.  
3. The app predicts the estimated **body weight** and highlights the chosen values on the scatter plot.

## 🧭 Technology
- **R Shiny** for interactivity  
- **ggplot2** for visualization  
- Dataset: `ggplot2::msleep`  
- Hosted via [shinyapps.io](https://www.shinyapps.io/)



