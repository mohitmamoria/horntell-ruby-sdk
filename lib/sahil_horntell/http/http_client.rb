module SahilHorntell
	module Http
		module HttpClient
			def request(method, url, headers=nil, params=nil, userName, password)
				begin
					opts = {
						:method => method,
						:headers => headers,
				        :url => url,
				        :payload => params,
						:user => userName,
						:password => password,
				        :timeout => 80
				    }


					response = RestClient::Request.execute(opts)

					return response
				rescue RestClient::ExceptionWithResponse => e
					if code = e.http_code and body = e.http_body
				        return handle_api_error(code, body)
			      	else
						raise SahilHorntell::NetworkError.new
			      	end
				# rescue RestClient::Exception => e
				# 	return "saa"
				# 	raise SahilHorntell::NetworkError.new
				rescue Exception => e
					raise SahilHorntell::NetworkError.new
				end
			end
			def handle_api_error(code, body)
			    begin
			      error_obj = JSON.parse(body)

			      error = error_obj["error"]
			      # return error
			    # rescue JSON::ParserError, StripeError
			      # raise general_api_error(code, body)
			    end


			    case code
			    when 400
			      raise invalid_request_error error, code
			    when 401
			      raise authentication_error error, code
			    when 403
			      raise forbidden_error error, code
			  	when 404
			      raise not_found_error error, code
			  	when 500
			      raise service_error error, code
			    else
			      raise horntell_error
			    end
			end

			def authentication_error(error, code)
			    AuthenticationError.new(error["message"], code, error["type"])
			end

			def forbidden_error(error, code)
			    ForbiddenError.new(error["message"], code, error["type"])
			end

			def horntell_error(error, code)
			    HorntellError.new(error["message"], code, error["type"])
			end

			def invalid_request_error(error, code)
			    InvalidRequestError.new(error["message"], code, error["type"])
			end

			def not_found_error(error, code)
			    NotFoundError.new(error["message"], code, error["type"])
			end

			def service_error(error, code)
			    ServiceError.new(error["message"], code, error["type"])
			end
		end
	end
end

