$morse_dict = Hash[
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--..",
  " " => " ",
  "1" => ".----",
  "2" => "..---",
  "3" => "...--",
  "4" => "....-",
  "5" => ".....",
  "6" => "-....",
  "7" => "--...",
  "8" => "---..",
  "9" => "----.",
  "0" => "-----",
  "SOS" => "...---...",
  "sos" => "...---...",
  "!" => "-.-.--",
  "." => ".-.-.-"
]


def decodeMorse(morseCode)
    words = []
    morseCode.strip!
    	if morseCode.start_with? ".", "-"
			 arr = morseCode.split("   ")
			 arr.each{|x| words << x.split(" ")}
			 words.map!{|x| x.map{|y| $morse_dict.key(y)}}.map!(&:join)
			 return words.join(" ").upcase
		else
			arr = morseCode.downcase.split(" ")
			arr.each{|x| words << x.split("")}
			words.map!{|x| x.map{|y| $morse_dict[y]}}.map!{|x| x.join(" ")}
			return words.join("   ")
		end
end

puts "Please enter Morse Code to be decoded! Alternatively start with either a letter or number in order for your text to be converted to Morse."
puts decodeMorse(gets.chomp)