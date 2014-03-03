class Video < ActiveRecord::Base
  # attr_accessible :title, :body
  require 'httparty'

	include HTTParty
	base_uri 'https://gdata.youtube.com'
end
