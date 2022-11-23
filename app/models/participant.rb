class Participant < ApplicationRecord
    validates :name, uniqueness: {case_sensitive: false}
    validates :gender, uniqueness: {case_sensitive: false}, presence: true
    has_many :registries 
    has_many :coordinators, :through => :registries
end