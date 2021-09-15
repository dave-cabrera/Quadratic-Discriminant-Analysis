pacman::p_load(readxl,tidyverse,magrittr,skimr,caret,
               GGally,corrplot,class, heplots, scales, MASS)

## Read in data
beans = read_excel('DryBeanDataset/Dry_Bean_Dataset.xlsx')


beans$Class = as.factor(beans$Class)
levels(beans$Class)

# Rescale the data
beans_scaled = beans %>%
  group_by(Class) %>%
  mutate(across(Area:ShapeFactor4, ~ . / sd(.))) %>%
  ungroup()

# Check normality
hist(beans_scaled$Area)
hist(beans_scaled$ConvexArea)
hist(beans_scaled$Extent)

### Quadratic Discriminant Analysis
qda_beans = qda(Class~., data = beans_scaled)
names(qda_beans)


qda_beans_predict = round(predict(object = qda_beans,
                            newdata = beans_scaled)$post)

qda_bean_dataframe = data.frame(beans_scaled,
                                predict(object = qda_beans,
                                        newdata = beans_scaled))

table(predcted = qda_bean_dataframe$class,
      actual = beans$Class) %>%
  confusionMatrix()

# According to the confusion matrix, the model was 100% accurate in predicting the class of each
# bean in the data set.
