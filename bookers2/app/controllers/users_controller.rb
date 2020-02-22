class UsersController < ApplicationController




def show
	 @user = User.find(params[:id])
	 @book = Book.new
   @book = Book.all

end


    def index
      @users = User.all
      @user = User.find(params[:id])
      @book = Book.new

    end

    def edit
    	@user = User.find(params[:id])
end
   
   def update
   	@user = User.find(params)
    @user.update(user_params)
    redirect_to user_path(user.id)
   end

    private 
def user_params
    params.require(:user).permit(:name, :profile_image)

end

end