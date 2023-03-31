class Director < ApplicationRecord
    validates :name, :nascionalidade, :birth, presence: true
end
