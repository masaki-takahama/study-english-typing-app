class PhrasesController < ApplicationController

def index


  @users = User.all
  @phrases = Phrase.includes(:user)
  @image = []








end

def new
  @phrase = Phrase.new
end

def create
  @phrase = Phrase.new(phrase_params)
  if @phrase.save
    redirect_to root_path
  else
    @phrase = Phrase.new(phrase_params)
    redirect_to root_path
  end
end

private

def phrase_params
  params.require(:phrase).permit(:text, :meaning, :tag_id, :image).merge(user_id: current_user.id)
end

end

