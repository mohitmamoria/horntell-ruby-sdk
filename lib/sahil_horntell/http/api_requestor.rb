module SahilHorntell
    module Http
	    module ApiRequester
	    	include SahilHorntell::Http::HttpClient
	        def raw_request(method=nil, endpoint=nil, params=nil)

	        	url = SahilHorntell.base_url+endpoint

	        	headers = {
		            'Accept'=> 'application/vnd.horntell.v1+json',
		            'Content-Type' => 'application/json'
		        }

		        #parsing data into json
			    params = params.to_json

	            response = request(method,
	            	url,
	            	headers=headers,
	            	params=params,
	            	userName=SahilHorntell.api_key,
	            	password=SahilHorntell.api_secret)
	            # return response.class
	            return SahilHorntell::Http::Resource.new(response)
	        end
	    end
    end
end