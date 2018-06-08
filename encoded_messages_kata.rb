class EncodedMessagesKata

  def initialize(dictionary)
    @dictionary = dictionary
    @solutions = 0
  end

  def calc(message)
    @solutions = 0
    return 0 if message.size == 0
    recursive_calc(message)
    @solutions
  end

  def recursive_calc(message)
    if message.size == 0
      @solutions += 1
    else
      @dictionary.each do |el|
        # se la stringa inizia con un carattere valido
        if message.start_with?(el.to_s)
          recursive_calc(message[el.to_s.size..-1])
        end
      end
    end
  end
end
