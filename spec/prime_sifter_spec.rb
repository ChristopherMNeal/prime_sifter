require('rspec')
require('prime_sifter.rb')

describe('#find_primes') do
  newObj1 = Prime_sifter.new(8)
  newObj2 = Prime_sifter.new(50)
  newObj3 = Prime_sifter.new(1)
  newObj4 = Prime_sifter.new(2)
  it("should return array of 2,3,5,7 for number 8") do
    expect(newObj1.find_primes).to(eq([2,3,5,7]))
  end
  it("should return array of 2,3,5,7..47 for number 50") do
    expect(newObj2.find_primes).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]))
  end
  it("should return array of [] for number 1") do
    expect(newObj3.find_primes).to(eq([]))
  end
  it("should return array of 2 for number 2") do
    expect(newObj4.find_primes).to(eq([2]))
  end
end
