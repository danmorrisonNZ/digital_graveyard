require_relative 'grave_controller.rb'


exit = false
undertaker = Undertaker.new


until exit

  input = @undertaker.user_input
  if input == "create"
    @undertaker.request_information
    @undertaker.user_input
    # @undertaker.create_tombstone
  elsif  input == "exit"
    break
  end
end