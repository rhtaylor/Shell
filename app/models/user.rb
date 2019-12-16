class User < ApplicationRecord 
    validates :name, presence: true 
    validates :email,  format: { with: /\A+[a-zA-Z]+[@][a-zA-Z]+\.com\z/,
    message: "only allows letters" } 
    validates :phone_number , length: { in: 10..11 }
end
