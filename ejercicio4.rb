class Dog
  attr_accessor :propiedades
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end
  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end


propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }
dog1 = Dog.new(propiedades)

dog1.ladrar
