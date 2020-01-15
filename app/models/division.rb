class Division < ApplicationRecord
    has_many :employees, dependent: :destroy
end
