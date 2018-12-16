require_relative('../models/animal')
require_relative('../models/owner')

require('pry')
owner1 = Owner.new({'name' => 'James Kelly', 'city' => 'Perth', 'phone_number' => 6768686868})
owner1.save


animal1 = Animal.new({'name' => 'Neo', 'type' => 'cat', 'breed' => 'Persian', 'admission_date' => '12 04 2017', 'ready_adoption' => 'yes', 'owner_id' => owner1.id})
animal1.save
