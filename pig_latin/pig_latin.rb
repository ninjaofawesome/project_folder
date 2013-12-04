class Pig_latin

def word
		puts "Type in a single word and I'll translate it to Pig Latin."
		word = gets.chomp.downcase
		if word.match(/^[bcdfghjklmnpqrstvwxyz]/)
			b = word.reverse.chop
			c = b.reverse 
			d = word[0]
			e = c.concat(d)
			"your word is: #{e + "ay"}"
		else
			puts word + "way"
		end
end



end #end of class

latin = Pig_latin.new

word = latin.word
p word






