class PigLatinizer
  
  def piglatinize(w)
    text = w.downcase.split(" ")
    i = []
    text.each do |x|
      if x.chars.first.scan(/[aeiou]/).count == 1
        if x.chars.size == 1 
          y = x.capitalize
          a = [y, 'way'].join
          i << a
        else
          a = [x, 'way'].join
          i << a
        end
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
        i << z.join
      end
    end
    i.join(" ")
  end
        
        
  
end
    
  
  