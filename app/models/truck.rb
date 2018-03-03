class Truck < ApplicationRecord
has_many :gpswaypoints, dependent: :destroy
end
