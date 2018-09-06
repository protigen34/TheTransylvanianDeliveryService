require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email: 'peter@example.com', password: '1234567890') }

  describe 'GET #show' do
     context 'when a user is logged in' do
        before(:each) do
            sign_in @user1
     end
    end

     context 'when a user is not logged in' do
       it 'redirects to login' do
         get :show, params: { id: user.id }
         expect(response).to redirect_to(new_user_session_path)
       end
     end
  end

end