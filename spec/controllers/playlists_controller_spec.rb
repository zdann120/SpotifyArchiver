require 'rails_helper'

RSpec.describe PlaylistsController, type: :controller do

  describe "GET #send_mail" do
    it "returns http success" do
      get :send_mail
      expect(response).to have_http_status(:success)
    end
  end

end
