require_relative('../db/sql_runner')
require_relative('animal')
require('pry')
class Owner


attr_accessor :id, :name, :city, :phone_number
#attr_reader :id
def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @city = options['city']
  @phone_number = options['phone_number'].to_i
end
def save()
    sql = "INSERT INTO owners
    (
      name,
      city,
      phone_number
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @city, @phone_number]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

  def update() #UPDATE
    sql = "UPDATE owners
    SET
    (
    name,
    city,
    phone_number
    ) =
    (
    $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @city, @phone_number, @id ]
    SqlRunner.run(sql, values)
  end

  def delete()# DELETE
    sql = "DELETE FROM owners
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()#DELETE
    sql = "DELETE FROM owners"
    SqlRunner.run(sql)
  end

  def self.find(id) #READ
    sql = "SELECT * FROM owners
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql ,values).first
    owner = Owner.new(result)
    return owner
  end

  def self.all() #READ
    sql = "SELECT * FROM owners"
    owner_data = SqlRunner.run(sql)
    owners = map_items(owner_data)
    return owners
  end

  def self.map_items(owner_data)
    return owner_data.map { |owner| Owner.new(owner) }
  end

  def animal()
    sql = "SELECT animals.* FROM animals INNER JOIN owners ON animals.owner_id = owners.id
           WHERE owners.id = $1"
    values = [@id]
    animals = SqlRunner.run(sql, values)
    return animals.map { |animal| Animal.new(animal) }
  end




end
