def translate string
  vowels = ["a", "e", "i", "o", "u"]
  qu = "qu"
  pig_latin_word = string.split.map do |string|
    if
      qu.include? (string[0..1])
      string = string[2..(string.length - 1)] + string[0..1]
    elsif
      qu.include? (string[1..2])
      string = string[3..(string.length - 1)] + string[0..2]
    elsif vowels.include? (string[0..0])
      string
    elsif
      vowels.include? (string[1..1])
      string = string[1..(string.length - 1)] + string[0..0]
    elsif
      vowels.include? (string[2..2])
      string = string[2..(string.length - 1)] + string[0..1]

    else
      string = string[3..(string.length - 1)] + string[0..2]
    end
    string = string + 'ay'
  end
  pig_latin_word.join ' '
end
