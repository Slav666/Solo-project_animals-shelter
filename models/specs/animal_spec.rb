require('minitest/autorun')
require('minitest/rg')
require_relative('../animal')

class AnimalTest < MiniTest::Test



def setup
  @animal_1 = Animal.new({
          'name' => 'Neo',
          'type' => 'cat',
          'breed' => 'Persian',
          'admission_date' => '12 04 2017',
          'ready_adoption' => 'yes',
          'owner_id' => nil})

  @animal_2 = Animal.new({
          'name' => 'Morpheus',
          'type' => 'dog',
          'breed' => 'Boxer',
          'admission_date' => '14 09 2017',#?
          'ready_adoption' => 'yes',#?
         'owner_id' => nil })#?

  @animal_3 = Animal.new({
          'name' => 'Trinity',
          'type' => 'cat',
          'breed' => 'Persian',
          'admission_date' => '03 04 2018',
          'ready_adoption' => 'yes',
          'owner_id' => nil })

  @animal_4 = Animal.new({
          'name' => 'Cypher',
          'type' => 'dog',
          'breed' => 'Beagle',
          'admission_date' => '03 01 2018',
          'ready_adoption' => 'no',
          'owner_id' => nil})

  @animal_5 = Animal.new({
          'name' => 'Tank',
          'type' => 'dog',
          'breed' => 'Labrador',
          'admission_date' => '19 01 2016',
          'ready_adoption' => 'no',
          'owner_id' => nil})
      end

end
