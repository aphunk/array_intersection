# Time complexity: O(n + m), where n is the length of array1 and m is the length of array2
# Space complexity: O(n), where n is the smaller of the two arrays
def intersection(array1, array2)
  common_elements = []
  if array1 == nil || array2 == nil
    return common_elements
  end

  if array1.length < array2.length
    small = array1
    big = array2
  else
    small = array2
    big = array1
  end

  hash = {}
  small.each do |num|
    hash[num] = 1
  end

  big.each do |num1|
    if hash.include?(num1)
      common_elements << num1
    end
  end
  return common_elements
end
