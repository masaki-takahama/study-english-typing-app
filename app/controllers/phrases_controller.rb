class PhrasesController < ApplicationController

def index
  # あとでallからインクルードに変更して表示するフレーズもユーザーに関連するものだけを取得して表示するようにしたい
  @phrase = Phrase.find(3)
  # 画面表示用に１つだけフレーズを取得しているので、表示を整えて、タイピング機能つけたら@phrase = Phrase.find(1)は消す


  @phrases = Phrase.includes(:user)
  @users = []

  @phrases.each do |phrase|
    @users.push(phrase)
  end








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

