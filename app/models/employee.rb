class Employee < ApplicationRecord
    belongs_to :division
    has_many :assignments
    has_many :projects, :through => :assignments

    validates :name, presence: true
    validates_length_of :name, maximum: 100
    validates :title, presence: true
    validates_length_of :title, maximum: 100
    before_save(:titleize_employee)

    private
    def titleize_employee
        self.name = self.name.to_s.titleize
    end
end
