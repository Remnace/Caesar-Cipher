def substrings(root, dictionary)
	sub = Hash.new
	root.downcase!
	for word in dictionary
		sub_occur = root.scan(/#{word.downcase}/).length
		sub[word] = sub_occur unless sub_occur.zero?
	end
	return sub
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("below", dictionary))
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))