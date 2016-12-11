$vowels = ["a", "e", "i", "o", "u"]

def translate_single(s)
  firstVowel = 0
  dropped = ""
  for i in 0..s.length-1
    if s[i] == "q" && s[i+1] == "u"
      firstVowel = i + 2
      break
    end
    if $vowels.include? s[i]
      firstVowel = i
      break
    end
  end
  if firstVowel != 0
    dropped = s[0..firstVowel-1]
  end
  s[firstVowel..s.length-1] + dropped + "ay"
end

def translate_many(s)
  words = s.split
  result = ""
  words.each do |word|
    result = result + translate_single(word) + " "
  end
  result[0..result.length-2]#accounts for extra space
end

def translate(s)
  words = s.split
  if words.length > 1
    translate_many(s)
  else
    translate_single(s)
  end
end
