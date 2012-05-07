class HomeController< ApplicationController 

	def index
	@users = User.all
	
	end
	
	def edit
	user_id = params[:id]
	@user = User.find_by_id(user_id)
		
	end
	
	def show
	user_id = params[:id]
	@user = User.find_by_id(user_id)
	end
	
	def update
	user_id = params[:id]
	@user = User.find_by_id(user_id)
	
	@user.name = params[:user][:name]
	@user.email = params[:user][:email]
	@user.profession = params[:user][:profession]
	@user.save
	
	redirect_to users_url
	
	end
	
	
	def destroy
	user_id = params[:id]
	@user = User.find_by_id(user_id)
	@user.destroy
	redirect_to users_url
	
	end
	
	def create
	@user = User.new
	@user.name = params[:user][:name]
	@user.email = params[:user][:email]
	@user.profession = params[:user][:profession]
	
	if @user.save
		flash[:notice] = "New user added!"
		redirect_to users_url
	else
		flash[:alert] = "Something is wrong."
		render 'new'
	end
	
	def new
	@user = User.new
	end
	

end
end	
	
	
	
