class AssignmentsController < ApplicationController

    def index
        # Code for listing all divisions goes here.
        @assignments = Assignment.all
        render :index
    end

    def new
        # Code for new division form goes here.
        @project = Project.find(params[:project_id])
        @assignment = @project.assignments.new

        render :new
    end
    def create
        # Code for creating a new division goes here.
        @project = Project.find(params[:project_id])
        @assignment = @project.assignments.new(assignment_params)
        if @assignment.save
            redirect_to project_path(@project)
        else
            render :new
        end
    end

    def show
        # Code for showing a single album goes here.
        @project = Project.find(params[:project_id])
        @assignment = Assignment.find(params[:id])
        render :show
    end

    def edit
        # Code for edit album form goes here.
        @project = Project.find(params[:project_id])
        @assignment = Assignment.find(params[:id])
        render :edit
    end
    def update
        # Code for updating an album goes here.
        @project = Project.find(params[:project_id])
        @assignment = Assignment.find(params[:id])
        if @assignment.update(assignment_params)
            redirect_to project_path(@assignment.project)
        else
            render :edit
        end
    end

    def destroy
        # Code for deleting an album goes here.
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        redirect_to project_path(@assignment.project)
    end

    private
    def assignment_params
        params.require(:assignment).permit(:employee_id, :project_id)
    end
end
