class PigLatinizer
  
  def piglatinize(w)
    text = w.downcase.split(" ")
    i = []
    text.each do |x|
      if x.chars.first.scan(/[aeiou]/).count == 1
        if x.chars == 1 
          x.capitalize
        end
        a = [x, 'way'].join
        i << a
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
    i.join(" ")
  end
        
        
  
end
    
  
  