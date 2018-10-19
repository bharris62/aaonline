# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  # your code goes here
  (arr[0]..arr[1]).count - 1
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  # your code goes here
  arr == arr.sort
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  # your code goes here
  str.downcase.scan(/[aeiou]/).count
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  vowels = ['a','e','i','o','u']
  new_arry = []

  # your code goes here
  arry = str.split('')
    arry.each do |letter| 
      if !vowels.include? letter.downcase
        new_arry.push(letter)
      end
    end
  new_arry.join()
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  # your code goes here
  int.to_s.split('').sort.reverse
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  # your code goes here
  lowered = str.downcase.split('')
  (1..lowered.length-1).each do |num|
    if lowered[num -1] == lowered[num]
      return true
    end
  end
  return false
end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  # your code goes here
  first = arr[0,3].join
  second = arr[3,3].join
  third = arr[6,10].join


  "(#{first}) #{second}-#{third}"
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  # your code goes here
  sorted = str.split(',').map(&:to_i).sort
  (sorted[0]..sorted[-1]).to_a.size - 1
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  # your code goes here
  split_idx = offset % arr.length
  arr.drop(split_idx) + arr.take(split_idx)
end
