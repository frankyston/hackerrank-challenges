#!/bin/ruby

# https://www.hackerrank.com/challenges/simple-array-sum/problem
# Given an array of integers, find the sum of its elements.

# For example, if the array , , so return .

# Function Description

# Complete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer.

# simpleArraySum has the following parameter(s):

# ar: an array of integers
# Input Format

# The first line contains an integer, , denoting the size of the array. 
# The second line contains  space-separated integers representing the array's elements.

# Constraints
# 0 < n,ar[i] <= 1000

# Output Format

# Print the sum of the array's elements as a single integer.

# Sample Input

# 6
# 1 2 3 4 10 11
# Sample Output

# 31
# Explanation

# We print the sum of the array's elements: 1+2+3+4+10+11.



#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
    return ar.map(&:to_i).sum
end

ar = %w(1 2 3 4 10 11)

puts simpleArraySum(ar)