require_relative('../db/sql_runner')
require_relative('owner')
require('pry')


class Animal

attr_reader :id, :name, :type, :breed, :admission_date, :ready_adoption, :owner_id
#:name, :type, :breed, :admission_date, :ready_adoption, :owner_id

def initialize(options)
  @id = options['id'].to_i if options['id']# new var added
  @name = options['name']
  @type = options['type']
  @breed = options['breed']
  @admission_date = options['admission_date']
  @ready_adoption = options['ready_adoption']
  @owner_id = options['owner_id'].to_i  if options['id']
end

def save()
      sql = "INSERT INTO animals
      (
        name,
        type,
        breed,
        admission_date,
        ready_adoption,
        owner_id
      )
      VALUES
      (
        $1, $2, $3, $4, $5, $6
      )
      RETURNING id"
      values = [@name, @type, @breed, @admission_date, @ready_adoption, @owner_id]
      result = SqlRunner.run(sql, values)
      id = result.first["id"]
      @id = id.to_i
    end




end
