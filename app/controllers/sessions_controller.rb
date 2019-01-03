class SessionsController < ApplicationController

	def create
		
		return redirect_to(controller: 'khans', action: 'splash') if !params[:name] || params[:name].empty?
			redirect_to splash_path
		session[:name] = params[:name]
		@found_player = Player.find_by(name:params[:name])
		render 'player/action_page'
		
	 end

	
	  def destroy
  		session.delete :name
  		redirect_to splash_path
  	  end


 private
	
	def login_params
	end



end
