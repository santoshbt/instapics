require 'spec_helper'
require 'instagram'

describe 'HomeController' do
    before do
        access_token = "40510994.589e122.50031c42af2846cfb40f991810bb9316"
        @client = Instagram.client(access_token: access_token) 
    end

    describe '#index' do
        it 'lists the user details and pics' do            
            expect(@client.user.full_name).to eq("santosh t")
            expect(@client.user_recent_media.count).to eq(8)
        end
    end
end