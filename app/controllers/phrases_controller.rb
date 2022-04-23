class PhrasesController < ApplicationController

def index
  @phrases = Phrase.all
  # あとでallからインクルードに変更して表示するフレーズもユーザーに関連するものだけを取得して表示するようにしたい
end

def new
end

def create
end



end
