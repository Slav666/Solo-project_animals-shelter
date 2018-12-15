class Animal


attr_accessor :name, :type, :breed, :admission_date, :ready_adoption, :owner_id

def initialize(options)

  @name = options['name']
  @type = options['type']
  @breed = options['breed']
  @admission_date = options['admission_date']
  @ready_adoption = options['ready_adoption']
  @owner_id = options['owner_id'].to_i  if options['id']
end

end
