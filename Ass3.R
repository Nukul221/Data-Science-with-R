library(ggplot2)
library(datasets)
data(iris)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", title = "Scatterplot of Sepal Length vs. Petal Length by Species") +
  theme_minimal()
#2
data(txhousing, package = "ggplot2")
str(txhousing)
summary(txhousing)
missing_values <- sum(!complete.cases(txhousing))
cat("Number of missing values:", missing_values, "\n")
ggplot(txhousing, aes(x = median)) +
  geom_histogram(fill = "skyblue", color = "black") +
  labs(x = "Median Housing Price", y = "Frequency", title = "Histogram of Median Housing Prices") +
  theme_minimal()
ggplot(txhousing, aes(x = year, y = volume)) +
  geom_point(color = "darkblue") +
  labs(x = "Year", y = "Sales Volume", title = "Scatterplot of Sales Volume by Year") +
  theme_minimal()
ggplot(txhousing, aes(x = as.factor(month), y = median)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(x = "Month", y = "Median Housing Price", title = "Boxplot of Housing Prices by Month") +
  theme_minimal()
ggplot(txhousing, aes(x = date, y = median)) +
  geom_line(color = "darkred") +
  labs(x = "Year", y = "Median Housing Price", title = "Line Plot of Median Housing Prices over Time") +
  theme_minimal()
#3
ggplot(titanic, aes(y = factor(Survived), x = Fare, fill = Sex)) +
  geom_boxplot(position = "dodge") +
  stat_summary(fun = mean, geom = "point") +
  stat_summary(fun.y = mean, geom = "errorbar") +
  labs(x = "Fare", y = "Survived", fill = "Sex") +
  scale_fill_manual(values = c("blue", "pink")) +
  theme_minimal()
finalP

