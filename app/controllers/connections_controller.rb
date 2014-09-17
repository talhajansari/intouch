class ConnectionsController < ApplicationController
	
	def index
		@connections = Connection.all
	end
	
	def new
  		@connection = Connection.new
	end

	def show
  		@connection = Connection.find(params[:id])
	end

	def create
		@connection = Connection.new(connection_params)
		if @connection.save
			redirect_to @connection
		else
			render 'new'
		end
	end

	def edit
		@connection = Connection.find(params[:id])
	end

	def update
		@connection = Connection.find(params[:id])
		if @connection.update(connection_params)
    		redirect_to @connection
  		else
    		render 'edit'
  		end
	end

	def destroy
		@connection = Connection.find(params[:id])
		@connection.destroy

		redirect_to connections_path
	end

	private
  		def connection_params
    		params.require(:connection).permit(:first_name, :last_name, :firm, :last_contacted, :other_info)
  		end

end

