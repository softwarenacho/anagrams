get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  @anagrams = anagrams_maker(@new_word)
  erb :word
end

post '/new_word' do
  @new_word = params[:user_word]
  redirect to ("/#{@new_word}")
end

def anagrams_maker(word)
  word = canonical(word)
  @anagrams = Word.where("canonical = ?", word)
end

def canonical(word)
 word = word.downcase.gsub(/[^a-z]/,'').split("").sort.join.to_s
end
