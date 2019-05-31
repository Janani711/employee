class EmpsController < ApplicationController
	def index
		@emps = Emp.all
	end
	def show
		@emps = Emp.find(params[:id])
	end
	def new
		@emps = Emp.new
	end
	def create
		@emps = Emp.new(emps_params)
		if @emps.save
			redirect_to emps_path
		else
			render :new
		end
	end
	def edit
		@emps = Emp.find(params[:id])
	end
	def update
		@emps =Emp.find(params[:id])
		if @emps.update(emps_params)
			redirect_to emps_path
		else
			render :edit
		end
	end
	def destroy
		@emps = Emp.find(params[:id])
		@emps.destroy
		redirect_to emps_path
	end
	private
	def emps_params
		params.require(:emp).permit(:name, :age, :gender, :designation)
	end
end


