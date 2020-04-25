class PigLatinizer
  
  def piglatinize(w)
    text = w.downcase.split(" ")
    i = []
    text.each do |x|
      if x.chars.first.scan(/[aeiou]/).count == 1
        a = [x, 'way'].join
        i << a
      elsif x.chars.count == 1
        i << x.capitalize
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
    
  
  