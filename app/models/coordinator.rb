class Coordinator < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }  
    number_regex = /\d[0-9]\)*\z/
    validates_format_of :phone, :with =>  number_regex, :message => "Only positive number without spaces are allowed"
    validates :name, length: { minimum: 2 }

    has_many :registries
    has_many :participants, :through => :registries
end