class KhansController < ApplicationController

def index
@khans = Khan.all
	
end

def show
@khan = Khan.find(params[:id])

end

def splash
end


end #of class
