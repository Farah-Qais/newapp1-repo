class Registry < ApplicationRecord
    validates :name, uniqueness: {case_sensitive: false,message: "This name is already taken"} 
    validates :location, uniqueness: {case_sensitive: false}
    belongs_to :coordinator 
    belongs_to :participant 
end