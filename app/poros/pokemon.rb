class Pokemon
  attr_reader :name, :number, :type, :image

  def initialize(data)
    @name = data[:name].capitalize
    @number = data[:id]
    @type = data[:types][0][:type][:name]
    @image = data[:sprites][:front_default]
  end

end