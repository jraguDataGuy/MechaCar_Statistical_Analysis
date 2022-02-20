# MechaCar_Statistical_Analysis
Module 15 - R
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
