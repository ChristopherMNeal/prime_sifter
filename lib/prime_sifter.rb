require('pry')

class Prime_sifter
  def initialize(number)
    @number=number
  end
  def find_primes
      arr=*(2..@number)
      arr.each do |element|
        arr.reject! do |a| 
          if a!=element  
            a%element==0 
          end
      end
    end
    arr
  end
end

