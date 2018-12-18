require_relative('../db/sql_runner')
require_relative('owner')
require('pry')


class Animal
attr_accessor :id, :name, :type, :breed, :admission_date, :ready_adoption, :owner_id
#:name, :type, :breed, :admission_date, :ready_adoption, :owner_id

def initialize(options)
  @id = options['id'].to_i if options['id']# new var added
  @name = options['name']
  @type = options['type']
  @breed = options['breed']
  @admission_date = options['admission_date']
  @ready_adoption = options['ready_adoption']
  @owner_id = options['owner_id'].to_i  if options['owner_id']
end

    def save() #CREATE
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

    def update() #UPDATE
      sql = "UPDATE animals
      SET
      (
      name,
      type,
      breed,
      admission_date,
      ready_adoption,
      owner_id
      ) =
      (
      $1, $2, $3, $4, $5, $6
      )
      WHERE id = $7"
      values = [@name, @type, @breed, @admission_date, @ready_adoption, @owner_id, @id ]
      SqlRunner.run(sql, values)
    end

    def delete()# DELETE
      sql = "DELETE FROM animals
      WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql, values)
    end

    def self.delete_all()#DELETE
      sql = "DELETE FROM animals"
      SqlRunner.run(sql)
    end

    def self.find(id) #READ
      sql = "SELECT * FROM animals WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql ,values)
      animal = Animal.new(result)
      return animal
    end

    def self.all() #READ
      sql = "SELECT * FROM animals"
      results = SqlRunner.run( sql )
      return results.map { |hash| Animal.new(hash)}
    end


  def owner()
    # i need to find owner by sql query

    if @owner_id != nil
      sql = "SELECT * FROM owners WHERE id = $1"
      values = [@owner_id]
      results = SqlRunner.run(sql, values)
      owner = Owner.new(results.first)
    end
      return owner
   # run this sql
    # use resukts to make owner object
    # return  object
  end
end
