require 'rails_helper'


 

describe User do 
  let(:attributes) do 
      { 
          name: "Randy", 
          email: "randyisbusy@gmail.com",
          phone_number: 5208226568
      } 
  end  
  it "is considered valid" do 
      expect(User.new(attributes)).to be_valid 
  end 
end   


# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}" 
# end