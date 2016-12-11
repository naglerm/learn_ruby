#echo method repeats a string
def echo(s)
  s
end

#shout returns an all-caps version of a strings
def shout(s)
  s.upcase
end

#repeat returns a given num times, seperated by a space
def repeat(s, num=2)
  result = s
  repeats = num - 1
  repeats.times do
    result = result + " " + s
  end
  result
end

#returns subtring of specified string to specified index
def start_of_word(s, i)
  s[0..i-1]
end

def first_word(s)
  i = s.index(" ")
  if i != nil
    s[0..i-1]
  else
  s
end
end

def titleize(s)
  #an incomplete list of words not capitalized in titles
  preps = ["a", "an", "and", "by", "at", "down", "by", "for", "from", "like", "the", "over", "under", "with", "without", "in", "of"]
  result = first_word(s).capitalize + ' '

  words = s.split
  wordsNotFirst = words.drop(1)
  if wordsNotFirst.length != 0
    wordsNotFirst.each do |word|
      if preps.include? word
        result = result + word + ' '
      else
        result = result + word.capitalize + ' '
      end
    end
  end
  result[0..result.length-2]
end
