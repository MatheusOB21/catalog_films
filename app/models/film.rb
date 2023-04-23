class Film < ApplicationRecord
   validates :title, :release_year, :summary, :country, :duration,  :director, :image, presence: true
end
