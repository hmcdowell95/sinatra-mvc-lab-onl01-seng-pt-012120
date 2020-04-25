class PigLatinizer
  
  def piglatinize(w)
    text = w.downcase.split(" ")
    i = []
    text.each do |x|
      if x.chars.first.scan(/[aeiou]/).count == 1
        a = [x, 'way'].join
        i << a
      elsif x.scan(/[aeiou]/).count == 0
        i << x
      else
        z = x.chars
        a = []
        until z.first.scan(/[aeiou]/).count == 1 do
         a << z.first
         z.shift
        end
        a << "ay"
        b = a.join
        z << b
        z.join
        i << z
      end
    end
  end
        
        
  
end
    
  
  