def translate(words)
	word = words.split
	
	word.each do |i|
		nw = ''
		until ['a','e','i','o','u'].include?(i[0]) do
			if (i.length-1 > 0 && i[0,2] == 'qu')
				nw << i[0, 2]
				i[0,2] = ''
			else
				nw << i[0]
				i[0] = ''
			end
		end
		i << nw + 'ay'
	end
	word.join(' ')
end


