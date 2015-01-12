formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % { first: 1, second: 2, third: 3, fourth: 4 }
puts formatter % { first: "one", second: "two", third: "three", fourth: "four" }
puts formatter % { first: true, second: true, third: false, fourth: false }
puts formatter % { first: formatter, second: formatter, third: formatter, fourth: formatter }

puts formatter % {
	first: "first sentence",
	second: "sow",
	third: "gogo",
	fourth: "yes yes yes"
}