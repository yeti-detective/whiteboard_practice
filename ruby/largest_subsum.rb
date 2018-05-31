'''
Given an array of integers, find the largest sum of a subarray.
Try to solve it in O(n) time with O(1) memory.
'''

def largest_subsum(arr)
  curr_sum = 0
  max = arr.first || 0
  arr.each do |n|
    curr_sum += n
    max = curr_sum if max < curr_sum
    curr_sum = 0 if curr_sum < 0
  end
  max
end
