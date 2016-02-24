# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 






def canonical_maker(word)
 word = word.downcase.gsub(/[^a-z]/,'').split("").sort.join.to_s
end

 File.open("words.txt").each do |line|
  line.each_line do |word|
    canonical = canonical_maker(word.chomp)
    Word.create!(words: word.chomp, canonical: canonical)
  end
end

puts canonical_maker("Palabra")