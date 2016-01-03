require 'spec_helper'

describe ScoresController, :type => :request do
  before do
    8.times do |index|
      create(:score,
             :user => "User#{index}",
             :points => 100)
    end
    4.times do |index|
      create(:score,
             :user => "User#{index}",
             :points => 0)
    end
  end

  let!(:top_score) do
    create(:score,
           :user => "Max",
           :points => 1000)
  end
  let!(:bottom_score) do
    create(:score,
           :user => "Min",
           :points => 50)
  end
  let(:json_response) { JSON.parse(response.body) }

  context 'returning scores' do
    before do
      get "/scores"
    end

    it "limits the results to 10" do
      expect(json_response.length).to eq(10)
    end

    it "orders the results by score" do
      expect(json_response.first["user"]).to eq(top_score.user)
      expect(json_response.last["user"]).to eq(bottom_score.user)
    end

    it "contains the right fields" do
      first_score_response = json_response.first

      expect(first_score_response).to eq(JSON.parse({
        "user" => top_score.user,
        "points" => top_score.points,
        "created_at" => top_score.created_at
      }.to_json))
    end
  end
end
