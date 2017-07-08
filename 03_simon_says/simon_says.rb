def echo string
  string
end

def shout string
  string.upcase
end

def repeat (string, times = 2)
  ([string] * times).join(' ')
end

def start_of_word (string, x)
  string[0..x-1]
end

def first_word string
  string.split[0]
end

def titleize string
  array = string.split(' ')
  array.each do |word|
    word.capitalize!
    if word == "And" || word == "The" || word == "Over"
      word.downcase!
    end
    if array.first == "the"
      word.capitalize!
    end
  end
  string = array.join(' ')
end
