require('minitest/autorun')
require('minitest/rg')
require_relative('../owner')

class OwnerTest < MiniTest::Test

def setup
    @owner_1 = Owner.new({
      'name' => 'James Kelly',
      'city' => 'Perth',
      'phone_number' => 6768686868})
    @owner_2 = Owner.new({
      'name' => 'Quentin Tarantino',
      'city' => 'Edinburgh',
      'phone_number' => 5687487877})
end

def test_owner_has_name
  assert_equal("James Kelly", @owner_1.name())
end

def test_owner_lives_in_city
  assert_equal("Edinburgh", @owner_2.city())
end

def test_owner_has_number
  assert_equal(6768686868, @owner_1.phone_number())
end

end
