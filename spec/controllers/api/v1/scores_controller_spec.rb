require 'spec_helper'

describe Api::V1::ScoresController, :type => :controller do
  render_views

  let(:body) { JSON.parse(response.body) }

  describe "GET #index" do
    context "top scores" do
      before do
        stub_const("Api::V1::ScoresController::HIGH_SCORE_LIMIT", 2)

        3.times { |index| create(:score, :points => index) }
      end

      it "returns the top scores in order" do
        get :index, :format => :json

        expect(response).to have_http_status(:success)
        expect(body.length).to eq(2)
        expect(body[0]["points"]).to eq(2)
        expect(body[1]["points"]).to eq(1)
      end
    end

    context "score fields" do
      let!(:top_score) { create(:score) }

      it "returns the correct fields" do
        get :index, :format => :json

        expect(body[0]).to eq(JSON.parse({
          "user" => top_score.user,
          "points" => top_score.points,
          "created_at" => top_score.created_at
        }.to_json))
      end
    end
  end

  describe "POST #create" do
    let(:score) { Score.last }

    it "returns errors if the params are empty" do
      post :create, { "points" => 500 }

      expect(response).to have_http_status(:bad_request)
      expect(body["errors"]).to eq({
        "user" => ["can't be blank"],
      });
    end

    it "returns errors if the params are invalid" do
      post :create, { :format => 'json', "user" => "me", "points" => -1.12 }

      expect(response).to have_http_status(:bad_request)
      expect(body["errors"]).to eq({
        "points" => ["must be an integer"],
      });
    end

    it "returns the score if the params are valid" do
      post :create, { :format => 'json', "user" => "me", "points" => 100 }

      expect(response).to have_http_status(:created)
      expect(score.user).to eq("me")
      expect(score.points).to eq(100)
    end
  end
end
