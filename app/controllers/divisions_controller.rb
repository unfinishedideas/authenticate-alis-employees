class DivisionsController < ApplicationController
  before_action :admin_access, only: [:destroy]
  before_action :authorize, only: [:create, :new, :edit, :update]
    def index
        # Code for listing all divisions goes here.
        @divisions = Division.all
        render :index
    end

    def new
        # Code for new division form goes here.
        @division = Division.new
        render :new
    end
    def create
        # Code for creating a new division goes here.
        @division = Division.new(division_params)
        if @division.save
            flash[:notice] = "Division '#{@division.name}' created successfully!"
            redirect_to divisions_path
        else
            render :new
        end
    end

    def show
        # Code for showing a single album goes here.
        @division = Division.find(params[:id])
        render :show
    end

    def edit
        # Code for edit album form goes here.
        @division = Division.find(params[:id])
        render :edit
    end
    def update
        # Code for updating an album goes here.
        @division = Division.find(params[:id])
        if @division.update(division_params)
            flash[:notice] = "Division '#{@division.name}' updated."
            redirect_to division_path
        else
            render :edit
        end
    end

    def destroy
        # Code for deleting an album goes here.
        @division = Division.find(params[:id])
        @division.destroy
        flash[:alert] = "Division '#{@division.name}' destroyed."
        redirect_to divisions_path
    end

    private
    def division_params
        params.require(:division).permit(:name)
    end
end
