class Marka < ApplicationRecord
    has_many :uruns, dependent: :destroy
end
