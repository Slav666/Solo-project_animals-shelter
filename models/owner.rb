require_relative('../db/sql_runner')
require_relative('animal')
class Owner


attr_reader :id, :name, :city, :phone_number

def initialize(options)
  @id = options['id']
  @name = options['name']
  @city = options['city']
  @phone_number = options['phone_number']
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
end
