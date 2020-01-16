class HomeController < ApplicationController
    def index
        @bs = []
        5.times { @bs << Faker::Company.unique.bs.titleize }
        render :index
    end
end
