require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
    #This is so we can use rack-test helper methods.
    include Rack::Test::Methods

    #We need to declare the 'app' valye by instantiating the Application class so that our tests work.
    let(:app) { Application.new }

    # GET/

    context 'POST /sort-names' do
        it 'returns list in alphabetical order' do
        response = post('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')

        expect(response.status).to eq 200
        expect(response.body).to eq 'Alice,Joe,Julia,Kieran,Zoe'
        end
    end
    


    # context 'GET /hello' do
    #     it 'return "Hello Leo"' do
    #         response = get('/hello?name=Leo')

    #         expect(response.status).to eq 200
    #         expect(response.body).to eq 'Hello Leo!'
    #     end

    #     it 'should return "Hello Josh!"' do
    #         response = get('/hello?name=Josh')

    #         expect(response.status).to eq 200
    #         expect(response.body).to eq 'Hello Josh!'
    #     end
    # end
end

