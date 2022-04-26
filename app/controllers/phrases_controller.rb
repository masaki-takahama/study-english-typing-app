class PhrasesController < ApplicationController

def index
  @phrases = Phrase.includes(:user)
  # あとでallからインクルードに変更して表示するフレーズもユーザーに関連するものだけを取得して表示するようにしたい
  @phrase = Phrase.find(2)
  @arr_json = @phrase.text.to_json.html_safe
  # 画面表示用に１つだけフレーズを取得しているので、表示を整えて、タイピング機能つけたら@phrase = Phrase.find(1)は消す
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
