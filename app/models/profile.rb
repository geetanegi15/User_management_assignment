class Profile < ApplicationRecord
    has_many :addresses , dependent: :destroy
end