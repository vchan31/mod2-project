class KhansController < ApplicationController

def index
@khans = Khan.all
	
end

def show
@khan = Khan.find(params[:id])

end



end #of class
