module Ex25
  def Ex25.break_words(stuff)
  	words = stuff.split(' ')
  	return words
  end

  def Ex25.sort_words(words)
  	return words.sort
  end

  def Ex25.print_first_word(words)
  	word = words.shift
  	puts word
  end

  def Ex25.print_last_word(words)
  	word = words.pop
  	puts word
  end

  def Ex25.sort_sentence(sentence)
  	split_sentence = Ex25.break_words(sentence)
  	return Ex25.sort_words(split_sentence)
  end

  def Ex25.print_first_and_last(sentence)
  	words = Ex25.break_words(sentence)
  	Ex25.print_first_word(words)
  	Ex25.print_last_word(words)
  end

  def Ex25.print_first_and_last_sorted(sentence)
  	words = Ex25.sort_sentence(sentence)
  	Ex25.print_first_word(words)
  	Ex25.print_last_word(words)
  end

  def Ex25.my_split(string, spliter)
  	output = []
  	character_block = ""

  	string.split('').each_with_index do |char, i|
  		if i + 1 == string.size
  	  	character_block << char unless char == spliter
  	  	output << character_block
  	  	break
  	  end

  	  if char == spliter
  	  	unless character_block.empty?
  	  		output << character_block
  	  		character_block = ""
  	  	end
  	  	next
  	  end

  	  character_block << char
  	end

  	return output
  end
end