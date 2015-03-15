module SahilHorntell
  class HorntellError < StandardError
    attr_reader :message
    attr_reader :code
    attr_reader :type

    def initialize(message=nil, code=nil, type=nil)
      @message = message
      @code = code
      @type = type
    end

  end
end
