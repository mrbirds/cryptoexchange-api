#!/usr/bin/env ruby

require 'bundler/setup'
require 'cryptoexchange'
require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
    client = Cryptoexchange::Client.new
    result = Hash.new
    result["pairs"] = Array.new 
    pairs = client.pairs(params[:dce])
    pairs.each {|p|
        result['pairs'] << { 'symbol' => p.base + '-' +p.target}
    }
    result.to_json
end