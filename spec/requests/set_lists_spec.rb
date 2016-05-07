require 'rails_helper'

RSpec.describe "SetLists", type: :request do
  describe "GET /set_lists" do
    it "works! (now write some real specs)" do
      get set_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
