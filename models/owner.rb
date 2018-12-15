#require_relative('../db/sql_runner')
class Owner


attr_reader :name, :city, :phone_number

def initialize(options)

  @name = options['name']
  @city = options['city']
  @phone_number = options['phone_number']
end

end
