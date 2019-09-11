require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/cross_origin'
require 'json'

set :bind, '0.0.0.0'

configure do
  enable :cross_origin
end

get '/' do
  'Welcome to yo-service'
end

namespace '/api/v1' do
  before do
    content_type 'application/json'
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  get '/yo' do
    response = {
      message: "yo yo"
    }

    response.to_json
  end

  get '/hello' do
    response = {
      message: "hello"
    }

    response.to_json
  end
end

options "*" do
  response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow_origin"] = "*"
  200
end
