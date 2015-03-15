module SahilHorntell
	module Http
		class Resource
			attr_reader :response
    		attr_reader :body
    		attr_reader :code

		    def initialize(response=nil)
			    @response = response
			    @body = response.body
		    end

		    def get_original
			    return response
		    end

		    def get_body
		    	return (get_code == 204 ? nil : JSON.parse(body))
		    end

		    def get_code
			    return response.code
		    end
		end
	end
end
