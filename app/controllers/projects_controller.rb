class ProjectsController < ApplicationController
    def index
        # Code for listing all divisions goes here.
        @projects = Project.all
        render :index
    end

    def new
        # Code for new division form goes here.
        @project = Project.new
        render :new
    end
    def create
        # Code for creating a new division goes here.
        @project = Project.new(project_params)
        if @project.save
            flash[:notice] = 'Project created successfully!'
            redirect_to projects_path
        else
            render :new
        end
    end

    def show
        # Code for showing a single album goes here.
        @project = Project.find(params[:id])
        render :show
    end

    def edit
        # Code for edit album form goes here.
        @project = Project.find(params[:id])
        render :edit
    end
    def update
        # Code for updating an album goes here.
        @project = Project.find(params[:id])
        if @project.update(project_params)
            redirect_to project_path
        else
            render :edit
        end
    end

    def destroy
        # Code for deleting an album goes here.
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to projects_path
    end

    private
    def project_params
        params.require(:project).permit(:name, :due_date)
    end
end
