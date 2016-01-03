class ScoresController < ApplicationController
  def index
    @scores = Score.order(points: :desc).limit(10)
  end
end
