 require('minitest/autorun')
require('minitest/rg')
 require_relative('../animal')
 require_relative('../owner')
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
          'owner_id' => nil})# ask about this
      end

def test_animal_has_name
  assert_equal("Neo", @animal_1.name())
end

def test_animal_has_type
  assert_equal("cat", @animal_1.type())
end
def test_animal_has_breed
  assert_equal("Persian", @animal_1.breed())
end
def test_animal_has_admission_date
    assert_equal("12 04 2017", @animal_1.admission_date())
end
def test_animal_ready_adoption
  assert_equal("yes", @animal_1.ready_adoption())
end
def test_animal_has_owner_id
  assert_equal(nil, @animal_1.owner_id())#?
end

# write a test to check the animal has an owner
def test_animal_has_owner
  owner = @animal_1.owner()
  assert_equal(nil, owner)
end
#need an animal
# animal.giveMeMyOwner()

end
