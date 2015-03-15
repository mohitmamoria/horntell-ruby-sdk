module SahilHorntell
  class NetworkError < HorntellError
    attr_accessor :message
    attr_accessor :type

    def initialize(message=nil, code=nil, type=nil)
      super(message, code, type)
		@message="Could not connect to Horntell. Please check your network connection and try again. If the problem persists, please get in touch with us at hello@horntell.com."
	    @type='network_error'
    end
  end
end
