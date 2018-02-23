require 'rails_helper'

describe 'navigate' do
    describe 'homepage' do
        before do
            visit root_path
        end

        it 'can be reached successfully' do
            expect(page.status_code).to eq(200)
            expect(page).to have_content(/Connect with Instagram/)
        end

        it 'lists the list of user photos' do
            access_token = "87bf48e454cb4119a703f426c1b37ccf"
            visit("http://localhost:3000/#access_token=#{access_token}")
            expect(page.status_code).to eq(200)            
        end
    end
end