# ReadMe for: Getting and Cleaning Data - Course Project

This project consists of the following script file - 'run_analysis.R', output file - 'independent_tidydata.txt' and Codebook.md file to explain the code and output.

The algorithm is as follows:

1. read the input files to create test and train set of data
2. using grep to find the mean and std fields only for further computation
3. read subject and activties from files
4. use colMeans function to compute the mean and save the result in 'independent_tidydata.txt'