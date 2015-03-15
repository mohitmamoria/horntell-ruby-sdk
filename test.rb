# require_relative 'lib/sahil_horntell.rb'
require "sahil_horntell"
SahilHorntell.api_key = 'T4BCjNDpWLU2qs1nQO220Chwf8wgbHIEExHoPqVH'
SahilHorntell.api_secret = 'Brx4DLKjEWs9aufHpo2sVVznVd1LNZY6S3KiY8E3'
SahilHorntell.base_url = 'http://horntell-api.dev'


# profile = SahilHorntell::Http::ApiRequester
# profile = SahilHorntell::Http::HttpClient

begin
	profile = SahilHorntell::Profile.find(480)

	# profile = SahilHorntell::Profile.create({
 #            :uid => "4702",
 #            :first_name => "gobar singh",
 #            :last_name => "Doe",
 #            :email => "john@example.com",
 #            :signedup_at => "843478374"
 #        })


 	# profile = SahilHorntell::Profile.update(4702,{
  #           :first_name => "gobar singh",
  #           :last_name => "chaman",
  #           :email => "john@example.com",
  #           :signedup_at => "843478374"
        # })

	# profile = SahilHorntell::Profile.delete(4702)



	options = {
	  :format => "ask",
	  :type => "success",
	  :bubble => 0,
	  :text => "sdsdsdb",
	  :options => [
			{
				:text => "Yes",
				:type => "success"
			},
			{
				:text => "No",
				:type => "danger"
			},
			{
				:text => "Chaos",
				:type => "default"
			}
		]

	}


	# profile = SahilHorntell::Horn.to_profile(480, options)
	# profile = SahilHorntell::Horn.to_profiles([460,470, 480], options)

	#campaign
	# campaign = SahilHorntell::Campaign.to_profile('470', '54f562ded76af12d2d8b4567')
	# campaign = SahilHorntell::Campaign.me
	# campaign = SahilHorntell::Campaign.to_profiles([460,470, 480], '54f562ded76af12d2d8b4567')


	#activity
	# activity = SahilHorntell::Activity.create('470', {
	#             :name => "Chaman",
	#             :revenue => "34",
	#             :direction => "inbound"
	#         })

	# puts activity.get_body()

	# puts campaign.get_original()
	puts profile.get_body()

rescue SahilHorntell::NotFoundError => details
	puts [details.message, details.type]
rescue SahilHorntell::InvalidRequestError => details
	puts [details.message, details.type]
rescue SahilHorntell::NetworkError => details
	puts details.message
rescue SahilHorntell::HorntellError => details
	puts [details.type]
end