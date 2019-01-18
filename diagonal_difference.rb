#!/bin/ruby

# https://www.hackerrank.com/challenges/diagonal-difference/problem
# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# For example, the square matrix  is shown below:

# 1 2 3
# 4 5 6
# 9 8 9  

# The left-to-right diagonal = 1+5+9 = 15. The right to left diagonal = 3+5+9=17. Their absolute difference is |15-17| = 2.

# Function description

# Complete the  function in the editor below. It must return an integer representing the absolute diagonal difference.

# diagonalDifference takes the following parameter:

# arr: an array of integers .
# Input Format

# The first line contains a single integer, 'n', the number of rows and columns in the matrix 'arr'. 
# Each of the next 'n' lines describes a row, arr[i], and consists of 'n' space-separated integers arr[i][j].

# Constraints

# -100 <= arr[i][j] <= 100

# Output Format

# Print the absolute difference between the sums of the matrix's two diagonals as a single integer.

# Sample Input

# 3
# 11 2 4
# 4 5 6
# 10 8 -12
# Sample Output

# 15
# Explanation

# The primary diagonal is:

# 11
#    5
#      -12
# Sum across the primary diagonal: 11 + 5 - 12 = 4

# The secondary diagonal is:

#      4
#    5
# 10
# Sum across the secondary diagonal: 4 + 5 + 10 = 19 
# Difference: |4 - 19| = 15

# Note: |x| is the absolute value of x

def diagonalDifference(arr)
  # v1
  # left_to_right = arr.flatten.map.with_index(0){|e, i| e if [0,4,8].include?(i)}.reject(&:nil?).sum 
  # right_to_left = arr.flatten.map.with_index(0){|e, i| e if [2,4,6].include?(i)}.reject(&:nil?).sum

  arr.size.times do |i|
    arr[i] = arr[i].map(&:to_i)
  end
  
  index_left_to_right = 0
  index_right_to_left = arr.first.size-1
  left_to_right = []
  right_to_left = []
  arr.each_with_index { |e, index| left_to_right << arr[index][index_left_to_right]; index_left_to_right = index_left_to_right+1 }
  arr.each_with_index { |e, index| right_to_left << arr[index][index_right_to_left]; index_right_to_left = index_right_to_left-1 }
  (left_to_right.sum - right_to_left.sum).abs
end

arr = [ [11, 2, 4], [4, 5, 6], [10, 8, -12] ]
arr = [ [-1, 1, -7, -8], [-10, -8, -5, -2], [0, 9, 7, -1], [4, 4, -2, 1] ]
arr = [ [6 8], [-6 9] ]

puts diagonalDifference(arr)

2.times do |i|
    arr[i] = arr[i].map(&:to_i)
end