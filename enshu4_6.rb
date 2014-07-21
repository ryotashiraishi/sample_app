def string_shuffle(s)
	s.split('').shuffle().join()
	
end

p string_shuffle("foobar")


class String
	def shuffle
		self.split('').shuffle().join
	end
end

p "foobar".shuffle

person1 = Hash.new
person1 = {first: "tanaka", last: "taro"}

person2 = Hash.new
person2 = {first: "yoshida", last: "jiro"}

person3 = Hash.new
person3 = {first: "sato", last: "saburo"}

params = Hash.new
params = {father: person1, mother: person2, child: person3}

p params[:father][:first]
