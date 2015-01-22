# Analysis process
## Data Gathering
The training and testing data is read from three files:
* X_(train|test).txt
* Y_(train|test).txt
* subject(train|test).txt
The names of the features is taken from the features.txt. 

## Analysis Steps
1. Data sets are combined column and row wise. 
2. The relevant variables are selected (mean and std).
3. Activity values are translated to factors.
4. The data is summarized
5. The data set is saved.