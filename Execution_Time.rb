#Phase I-O(n^2) quadratic time
def my_min_1a(arr)

  arr.each do |ele1|
    min = true
    arr.each do |ele2|
      min = false if ele2 < ele1
    end
    return true if min
  end
  false

end

#-Phase II-O(n)
def my_min_2(arr)

arr.inject {|acc, el| acc if acc.sum < el.sum}.sum

end




def largest_contiguous_subsum1(arr)
  subarrays = []

  (0...arr.length).each do |idx1|
    (idx1..arr.length).each do |idx2|
      subarrays << array[idx1..idx2]
    end
  end

  subarrays.inject {|acc, el| acc if acc.sum < el.sum}.sum
end

#O(n) linear time
#O(1) constant space
def largest_contiguous_subsum2(arr)
  largest_sum = arr.first
  current_sum= arr.first

  arr.drop(1).each do |ele|
    current = 0 if current_sum < 0
    current_sum += ele
    largest_sum = current_sum if current_sum > largest_sum
  end

  largest_sum
end
