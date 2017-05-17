module Api
  class V1::ScoresController < ApplicationController
    HIGH_SCORE_LIMIT = 10

    def create
      # TODO
      # FIXME
      begin
        @score = Score.create(
          user: params[:user],
          points: params[:points]
        )

        # TODO
        if @score.valid?
          render "api/v1/scores/show", :status => :created
        else
          render :json => { :errors => @score.errors }, :status => :bad_request
        end
      rescue => e
        render :json => { :errors => e.message }, :status => :bad_request
      end
    end

    def index
      # COOL
      @scores = Score.order(points: :desc).limit(HIGH_SCORE_LIMIT)
    end
  end
end
