class Profile < ApplicationRecord
    has_many :addresses , dependent: :destroy
    has_many :educations , dependent: :destroy
end
