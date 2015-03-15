require "sahil_horntell/version"
require 'rubygems'
require 'json'
require 'rest_client'

require 'sahil_horntell/errors/horntell_error.rb'
require 'sahil_horntell/errors/network_error.rb'
require 'sahil_horntell/errors/authentication_error.rb'
require 'sahil_horntell/errors/forbidden_error.rb'
require 'sahil_horntell/errors/invalid_request_error.rb'
require 'sahil_horntell/errors/not_found_error.rb'
require 'sahil_horntell/errors/service_error.rb'

require 'sahil_horntell/http/resource.rb'

require 'sahil_horntell/http/http_client.rb'
require 'sahil_horntell/http/api_requestor.rb'
require 'sahil_horntell/profile.rb'
require 'sahil_horntell/horn.rb'
require 'sahil_horntell/activity.rb'
require 'sahil_horntell/campaign.rb'

module SahilHorntell
	class << self
		attr_accessor :api_key, :api_secret, :base_url
	end
end
