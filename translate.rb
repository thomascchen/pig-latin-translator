def translate(sentence)
  pig_sentence = []
  pig_word = nil

  sentence.split.each do |word|
    if word.match(/^[^aeiou]{1,2}/)
      pig_word = word.partition(/^[^aeiou]{1,2}/)[2] << word.partition(/^[^aeiou]{1,2}/)[1] << "ay"
      pig_sentence << pig_word
    elsif word.match(/^[aeiou]/)
      pig_word = word << "way"
      pig_sentence << pig_word
    end
  end

  return pig_sentence.join(' ')
end

input = ARGV.join(" ")
puts translate(input)
