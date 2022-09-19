def decodeBits(bits)
  bits = bits.gsub(/0{14}/, "yzy").gsub(/0{6}/, "yxy").gsub(/1{6}/, "-").gsub(/1{2}/, ".").gsub(/0{2}/, "").split("y").join.gsub(/x/, " ").gsub(/z/, "   ")
  return bits
end

def decodeMorse(morseCode)
  morseCode = morseCode.gsub(/\s{3}/, " * ").split(" ")
  morseCode = morseCode.map do |e|
    if e == "*"
      "*"
    else
      MORSE_CODE[e]
    end
  end
  morseCode = morseCode.join.gsub(/\*/, " ")
end
