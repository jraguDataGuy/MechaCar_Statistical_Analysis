# Mecha Car Statistical Analysis
AutoRUs has inquired on reviewing production data for their newest care, the MechaCar. Using the data provided, we were able to use statistical testing to make reasonable conclusions on this new business venture. 
## Linear Regression to Predict MPG
We were provided data to analyze MPG based on vehicle length, weight, ground clearance, spoiler clearance, and presence of All Wheel Drive (AWD). Thanks to R studio, this process was quick and painless for us. Our regression analysis produced the following equation:

Miles Per Gallon (MPG) = (6.267)VL + (1.245e-3)VW + (6.877e-02)SA + (3.546)GC + (-3.411)AWD -1.040e2

Where:
- VL = Vehicle Length
- VW = Vehicle Weight
- SA = Spoiler Angle
- GC = Ground Clearance
- AWD = All Wheel Drive

We then pulled our summary statistics below:
![Deliverable1](https://github.com/jraguDataGuy/MechaCar_Statistical_Analysis/blob/main/Deliverable%201%20-%20Summary.png)
A few items of note:

_Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?_

Vehicle Length and Ground clearance provided non-random varaiance. 

_Is the slope of the linear model considered to be zero? Why or why not?_

Our p-value is well below the .05 null hypothesis, therefore rejecting the null of a zero slope. 

_Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?_
- Our line is a solid fit at .7149 R value
- Given our evaluation of R squared would imply a solid fit being closer to 1 than 0. 
## Summary Statistics of Suspension Coils
We were tasked with evaluating production effeciency of suspension coils. There are 3 lots to evaluate, along with a global analysis. 

The summary statistics for all of the cars in all 3 production lots are as follows"
![Deliverable 2a](https://github.com/jraguDataGuy/MechaCar_Statistical_Analysis/blob/main/Deliverable%202%20-%20Summary.png)

Each lot had the following summary statistics:
![Deliverable 2b](https://github.com/jraguDataGuy/MechaCar_Statistical_Analysis/blob/main/Deliverable%202%20-%20Lot%20Summary.png)

With this information, we were posed the following question: _The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?_
- If we evaluate all suspension coils, we are within the production standard.
- The Variance in Lot 3 exceeds our production standards of 100 PSI variance. We exceeded the standard by 70 PSI. 

## T-Tests on Suspension Coils
**T-Test for All Lots**
![Deliverable 3](https://github.com/jraguDataGuy/MechaCar_Statistical_Analysis/blob/main/Deliverable%203%20-%20T-Test.png)
- For the analysis of all lots, we can conclude that the mean is statistically similar to the presumed mean of 1500 PSI. This is because our p-value exceeds the common significance level of .05
**T-Test for Each Lot Compared to 1500PSI**
![Deliverable 3](https://github.com/jraguDataGuy/MechaCar_Statistical_Analysis/blob/main/Deliverable%203%20-%20T-Test%20by%20Lot.png)
- When we evaluate each lot individually, we can find issue in the individual production lots
- In lot 1, we evaluate that the mean is statistically similar to the 1500 evaluation. The p-value of 1 exceeds the .05 common significance level
- In lot 2, we evaluate that the mean is statistically similar to the 1500 evaluation. The p-value of .6 exceeds the .05 common significance level
- In lot 3, we evalue that the mean is not statistically similar to the 1500 evaluation. Given the wide standard deviation we saw above, this shouuld not be a bit surprise. The .04168 is below th ecommon significance level of .05. 

## Study Design: MechaCar vs Competition
Consumers are what drive our business. In order to maximize our profits, we will need to make sure we stand out against our competition. I would preferably want to run data on consumer preferences first to get information on what drives their buying decisions. For the sake of this exercise, let's assume fuel economy is the number 1 factor in choosing a vehicle. We can easily evaluate our vehicles vs the competition. 
**Null and Alternative Hypothesis**
Our null hypothesis would be that MechaCar fuel economy is better than our competition. The alternate would prove our competition is superior
**Testing**
To prove this, I would use a t-test in which we subgroup cars by their maker. We would then take the mean of our fuel economy data and assume it to be the mean of the other car companies to compare. For each company in which we reject our null, we will know a consumer is potentially more likely to select that vehicle
**Data Needs**
We will need data of fuel economy for cars split out by maker. 
