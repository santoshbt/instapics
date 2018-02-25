require 'rails_helper'

describe 'navigate' do
    describe 'homepage when user is not logged in' do
        before do
            visit root_path
            session = nil
        end

        it 'can be reached successfully without user session' do
            expect(page.status_code).to eq(200)
            expect(page).to have_content(/Connect with Instagram/)
        end
    end

    describe 'homepage when user is not logged in' do
        it 'lists the user photos' do
            access_token = "87bf48e454cb4119a703f426c1b37ccf"
            visit("#{APP_URL}#access_token=#{access_token}")
            expect(page.status_code).to eq(200)            
        end
    end
end

