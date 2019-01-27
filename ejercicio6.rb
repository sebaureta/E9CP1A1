class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name.to_i
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end

print products_list
