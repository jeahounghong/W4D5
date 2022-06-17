

def first_anamgram?(string_1, string_2) #O(n*n!)
  array = string_1.split("").permutation(string_1.length).to_a
  array.include?(string_2.split(""))
  # return array.include?()
end


def second_anagrams(string_1, string_2) #O(n**2)
  string_1.each_char.with_index do |c, i|
    return false if string_2.index(c) == nil
    string_2.slice!(string_2.index(c))
  end
  return true if string_2.length == 0
end



def third_anagram?(string_1, string_2) #O(n*log(n))
  return string_1.split("").sort == string_2.split("").sort
  # string.each_char
end

def fourth_angram?(string_1, string_2) #O(n)
  hash = Hash.new(0)

  string_1.each.char.with_index do |c, i|
    hash[c]+= 1
    hash[string_2[i]] -= 1  
  end
  hash.all?{|k,v| v == 0}
end

string_1 = "alvin"
p second_anagrams(string_1, "vinbl")