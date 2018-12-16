require_relative('../models/animal')
require_relative('../models/owner')

require('pry')

#Animal.delete_all
owner1 = Owner.new({'name' => 'James Kelly', 'city' => 'Perth', 'phone_number' => 6768686868})
owner1.save

owner2  = Owner.new({'name' => 'Quentin Tarantino', 'city' => 'Edniburgh', 'phone_number' => 5687487877})
owner2.save
owner3 = Owner.new({'name' => 'Theresa May', 'city' => 'London',  'phone_number' => 666666})
owner3.save


animal1 = Animal.new({'name' => 'Neo', 'type' => 'cat', 'breed' => 'Persian', 'admission_date' => '12 04 2017', 'ready_adoption' => 'yes', 'owner_id' => owner1.id})
animal1.save

animal2 = Animal.new({'name' => 'Morpheus', 'type' => 'dog', 'breed' => 'Boxer', 'admission_date' => '14 09 2017', 'ready_adoption' => 'yes', 'owner_id' => owner2.id})
animal2.save
animal3 = Animal.new({'name' => 'Trinity', 'type' => 'cat', 'breed' => 'Persian', 'admission_date' => '03 04 2018', 'ready_adoption' => 'no', 'owner_id' => nil})#animal3.save
animal3.save

animal3.delete

all_animals = Animal.all
find_neo = Animal.find(animal2.id)


binding.pry
nil
