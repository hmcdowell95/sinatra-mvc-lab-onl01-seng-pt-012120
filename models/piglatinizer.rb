class PigLatinizer
  
  attr_reader :text
  
  def initialize
    @text = text
  end
  
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
        y = z.first
        a = []
        begin
          a << y
          z.shift
        end until y.scan(/[aeiou]/).count == 1
        a << "ay"
        b = a.join
        z << b
        z.join
        i << z
      end
    end
  end
        
        
  
end
    
  
  