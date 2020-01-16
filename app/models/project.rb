class Project < ApplicationRecord
    has_many :assignments
    has_many :employees, :through => :assignments

    validates :name, presence: true
    validates_length_of :name, maximum: 250

    scope :today, -> {
        where(
            "created_at >=?",
            Time.now.beginning_of_day
        )
    }
end
