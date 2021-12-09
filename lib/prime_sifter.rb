require('pry')

class Prime_sifter
  def initialize(number)
    @number=number
  end
  def find_primes
    if @number==2
      return 2
    else 
      arr=*(2..@number)
      arr.each do |element|
        arr.reject! do |a| 
          if a!=element  
            a%element==0 
          end
        end
      end
    end
    arr
  end
end

