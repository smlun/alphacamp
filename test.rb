
def are_there_duplicates(nums)
  nums_copy = nums.clone 
  for i in nums
    nums_copy.shift
    if nums_copy.include?(i)
      return true
    end
  end
  return false
end
nums = [2,3,5,6,7]
nums1 = [1,3,4,4]
nums2 = [1,2,3,4]
puts are_there_duplicates(nums)
puts are_there_duplicates(nums1)
puts are_there_duplicates(nums2)
