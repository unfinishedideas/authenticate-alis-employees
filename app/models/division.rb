class Division < ApplicationRecord
    has_many :employees, dependent: :destroy
    validates :name, presence: true
    validates :name, uniqueness: true
    validates_length_of :name, maximum: 100
    before_save(:titleize_division)


    private
    def titleize_division
        self.name = self.name.to_s.capitalize
    end

    scope :num_employees, -> (division_param) { Employee.where(division_id: division_param.id).count }
end
