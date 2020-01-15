class Project < ApplicationRecord
    has_many :assignments
    has_many :employees, :through => :assignments

    validates :name, presence: true
    validates_length_of :name, maximum: 250
    before_save(:titleize_project)


    private
    def titleize_project
        self.name = self.name.to_s.titleize
    end
end
