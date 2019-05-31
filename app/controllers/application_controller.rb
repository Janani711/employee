class ApplicationController < ActionController::Base
	def index
		@emps = Emp.all
	end
end
