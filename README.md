# Quadratic-Discriminant-Analysis

Quadratic Discriminant Analysis used dimensionality reduction to plot each row of the data into a linear subspace (https://scikit-learn.org/stable/modules/lda_qda.html). All of the points in the linear subspace are then divided into sections using linear and quadratic lines. Each group is then assigned the outcome it is most likely fit given  the data. QDA is very useful when it comes to predicting which group something belongs to.

THe data used for this exercise was about the size and shape of 13,611 beans. The aream perimeter, major and minor axis length, aspect ratio, eccentricity, convex area, equivalent diameter, extent, solidity, roundness, compactness, shape factors 1-4, and class were collected by taking pictures of the beans using a computer vision system. There are seven different classes of beans in the data. I will use QDA to be able to predict which class a bean belongs to based on the data.


KOKLU, M. and OZKAN, I.A., (2020), â€œMulticlass Classification of Dry Beans Using Computer Vision and Machine Learning Techniques.â€ Computers and Electronics in Agriculture, 174, 105507.
DOI:
