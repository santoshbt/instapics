
# require File.expand_path('../../spec/spec_helper.rb', __FILE__)

# describe Instagram::API do
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
#     end
# end