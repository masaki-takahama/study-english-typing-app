class PhrasesController < ApplicationController

def index
  @phrases = Phrase.includes(:user)
  # あとでallからインクルードに変更して表示するフレーズもユーザーに関連するものだけを取得して表示するようにしたい
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
    render :new
  end
end

private

def phrase_params
  params.permit(:text, :meaning, :tag_id, :image).merge(user_id: current_user.id)
end

end
