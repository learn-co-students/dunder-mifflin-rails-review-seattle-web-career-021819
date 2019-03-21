class EmployeesController < ApplicationController

 def index
   @employees = Employee.all
 end

 def new
   @employee = Employee.new
 end

 def show
  @employee = Employee.find(params[:id])
 end

 def create
  @employee=Employee.create(employee_params)
   redirect_to employee_path(@employee)
 end

 def edit
 end

 def update
   @employee.update(employee_params)
   redirect_to employee_path(@employee)
 end

 private


 def employee_params
   params.require(:employee).permit(:first_name, :last_name, :alias, :title, :dog_id)
 end





end
