class EmployeesController < ApplicationController
  before_action :admin_access, only: [:destroy]
  before_action :authorize, only: [:create, :new, :edit, :update]

    def index
        # Code for listing all divisions goes here.
        @employees = Employee.all
        render :index
    end

    def new
        # Code for new division form goes here.
        @division = Division.find(params[:division_id])
        @employee = @division.employees.new

        render :new
    end
    def create
        # Code for creating a new division goes here.
        @division = Division.find(params[:division_id])
        @employee = @division.employees.new(employee_params)
        if @employee.save
            flash[:notice] = "Employee '#{@employee.name}' created."
            redirect_to division_path(@division)
        else
            render :new
        end
    end

    def show
        # Code for showing a single album goes here.
        @division = Division.find(params[:division_id])
        @employee = Employee.find(params[:id])
        render :show
    end

    def edit
        # Code for edit album form goes here.
        @division = Division.find(params[:division_id])
        @employee = Employee.find(params[:id])
        render :edit
    end
    def update
        # Code for updating an album goes here.
        @division = Division.find(params[:division_id])
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            flash[:notice] = "Employee '#{@employee.name}' updated."
            redirect_to division_employee_path(@division, @employee)
        else
            render :edit
        end
    end

    def destroy
        # Code for deleting an album goes here.
        @employee = Employee.find(params[:id])
        @employee.destroy
        flash[:alert] = "Employee '#{@employee.name}' terminated."
        redirect_to division_path(@employee.division)
    end

    private
    def employee_params
        params.require(:employee).permit(:name, :title, :division_id)
    end
end
