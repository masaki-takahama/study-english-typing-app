class UsersController < ApplicationController

  def show
    @users = User.all
    user = User.find(params[:id])
    if user.nickname == 'FEELING・EMOTION'
        @phrases = Phrase.where(tag_id: 10)
    else
      @phrases = user.phrases
    end

  end


  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

end
