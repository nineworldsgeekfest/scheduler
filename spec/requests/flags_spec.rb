require 'rails_helper'

RSpec.describe "Flags", type: :request do
  describe "GET /flags" do
    it "works! (now write some real specs)" do
      get flags_path
      expect(response).to have_http_status(200)
    end
  end
end
