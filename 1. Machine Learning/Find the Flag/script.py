# Importing required libraries
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
import matplotlib.pyplot as plt

# Loading flags dataset and observing it
flags = pd.read_csv("flags.csv", header = 0)
flags.head()
flags.columns
flags.Landmass.unique()
# Landmass is number representing continents
labels = flags['Landmass']
# Using flag colors and shapes as features to predict flag of a country
data = flags[["Red", "Green", "Blue", "Gold",
 "White", "Black", "Orange", "Circles",
"Crosses", "Saltires", "Quarters", "Sunstars",
"Crescent", "Triangle"]]

# Splitting data in training and testing sets
train_data, test_data, train_labels, test_labels = train_test_split(data, labels, random_state = 1)

# Building DecisionTree and fitting it with train_data and train_labels
tree = DecisionTreeClassifier(random_state = 1)
tree.fit(train_data, train_labels)
# Score tells the percentage of predicted data being correct
print("Score is {}".format(round(tree.score(test_data, test_labels), 5)))

# Varying max_depth and plotting the graph of scores vs max_depth
scores = []
for i in range(1,21):
  tree = DecisionTreeClassifier(random_state = 1, max_depth = i)
  tree.fit(train_data, train_labels)
  scores.append(tree.score(test_data, test_labels))

plt.plot(range(1,21), scores)
plt.show()

X_India = [[0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0]]
tree.predict(X_India)
