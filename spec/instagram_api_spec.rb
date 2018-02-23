
require File.expand_path('../../spec/spec_helper.rb', __FILE__)

describe Instagram::API do
#     describe ".authorize_url" do
#         it "should generate an authorize URL with necessary params" do
#           params = { :client_id => "CID", :client_secret => "CS" }
    
#           client = Instagram::Client.new(pasrams)
    
#           redirect_uri = 'http://localhost:3000/oauth/callback'
#           url = client.authorize_url(:redirect_uri => redirect_uri)
    
#           params2 = client.send(:access_token_params).merge(params)
#           params2[:redirect_uri] = redirect_uri
#           params2[:response_type] = "code"
#           url2 = client.send(:connection).build_url("/oauth/authorize/", params2).to_s
    
#           url2.should == url
#         end
    # before do
    #     @client = Instagram::Client.new(:format => format, :client_id => 'CID', :client_secret => 'CS', :access_token => 'AT')
    # end

    # describe "List user pics API" do
    #     it 'retrieves the user photos' do
    #         stub_get("users/self.json").
    #         with(:query => {:access_token => "at1"}).
    #         to_return(:body => fixture("john.json"), :headers => {:content_type => "application/json; charset=utf-8"})
    #         client1 = Instagram::Client.new(:access_token => "at1")
    #         client1.send(:get_username).should == "john"
    #     end
    # end
end