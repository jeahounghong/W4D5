def bad_two_sum?(arr, target_sum) #quadratic
  (0...arr.length - 1).each do |idx1|
    (idx1 + 1...arr.length).each do |idx2|
      return true if arr[idx1] + arr[idx2] == target_sum
    end
  end
  false
end

def okay_two_sum?(arr, target_sum) # O(n log(n))
  sorted_arr = arr.sort
  return shorten_array(arr, target_sum)
end

def shorten_array(arr, target_sum)
  return false if arr.length < 2
  return arr.sum == target_sum if arr.length == 2
  return true if arr.first + arr.last == target_sum

  if arr.first + arr.last > target_sum
    arr.pop
    return shorten_array(arr, target_sum)
  else
    arr.shift
    return shorten_array(arr, target_sum)
  end

end


def two_sum?(arr,target_sum)

  hash = {}
  arr.each do |ele|
    diff = target_sum - ele
    return true if hash.has_key?(diff)
    hash[ele] = true
  end

  false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false