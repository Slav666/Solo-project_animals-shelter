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

end
