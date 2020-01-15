class Project < ApplicationRecord
    has_many :assignments
    has_many :employees, :through => :assignments
end
