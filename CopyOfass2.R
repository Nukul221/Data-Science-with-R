#1
data(iris)
library(tidyverse)

ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  ylab("Sepal Length") +
  xlab("Species") +
  ggtitle("Boxplot of Sepal Length by Species")

ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species)) +
  geom_boxplot() +
  ylab("Sepal Width") +
  xlab("Species") +
  ggtitle("Boxplot of Sepal Width by Species")

ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  ylab("Petal Length") +
  xlab("Species") +
  ggtitle("Boxplot of Petal Length by Species")

ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) +
  geom_boxplot() +
  ylab("Petal Width") +
  xlab("Species") +
  ggtitle("Boxplot of Petal Width by Species")

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  xlab("Sepal Length") +
  ylab("Petal Length") +
  ggtitle("Scatterplot of Sepal Length and Petal Length by Species")

#4
library(rvest)

url <- "https://stats.stackexchange.com/questions?tab=Votes"
page <- read_html(url)

titles <- page %>% 
  html_nodes(".question-summary h3 a") %>% 
  html_text()
views <- page %>% 
  html_nodes(".views .mini-counts span") %>% 
  html_text() %>% 
  gsub("\\D", "", .) 
answers <- page %>% 
  html_nodes(".status .mini-counts span") %>% 
  html_text() %>% 
  gsub("\\D", "", .) 
votes <- page %>% 
  html_nodes(".votes .mini-counts span") %>% 
  html_text() %>% 
  gsub("\\D", "", .)
data <- data.frame(
  Title = titles,
  Views = as.numeric(views),
  Answers = as.numeric(answers),
  Votes = as.numeric(votes)
)
# 3
library(MASS)
?ships
data(ships)
barplot(table(ships$type), main = "Accidents by Ship Type", xlab = "Ship Type", ylab = "Number of Accidents")

print(data)
 #5
n <-200
expected_value <- sum((100 + 1:n - 1) / sum(100 + 1:n))
print(expected_value)
#2

library(imager)

# Define the flip function
flip <- function(image) {
  flipped_image <- imager::channel(image, "rgb")
  flipped_image <- imager::aperm(flipped_image, c(2, 1, 3))
  return(flipped_image)
}

# Load an input image
input_image <- imager::load.image("Downloads/IMG20230304214606.jpg")

# Check if the image has three dimensions (height, width, channels)
if (length(dim(input_image)) == 3) {
  # Call the flip function
  output_image <- flip(input_image)
  
  # Display the output image
  imager::plot(output_image)
} else {
  cat("The image does not have three dimensions. Make sure it is a valid RGB image.")
}

