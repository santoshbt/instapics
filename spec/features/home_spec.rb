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

        # it 'can be logged in successfully' do
        #     params = { :client_id => "CID", :client_secret => "CS" }
        #     click_link("Connect with Instagram")

        #     client = Instagram::Client.new(params)
        #     redirect_uri = 'http://localhost:3000/oauth/callback'

        #     params2 = client.send(:access_token_params).merge(params)
        #     params2[:redirect_uri] = redirect_uri
        #     params2[:response_type] = "code"
        #     url2 = client.send(:connection).build_url("/oauth/authorize/", params2).to_s
        #     puts url2.inspect

        #     puts "4444444444444444"

        #     url = client.authorize_url(:redirect_uri => redirect_uri)
        #     puts url.inspect
        #     puts "555555555555555"

        #     visit(url2)
            
            
        #     expect(page.status_code).to eq(200)
        #     expect(page).to have_content(/Logout/)
        # end
    end
end