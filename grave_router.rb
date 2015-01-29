require_relative 'grave_controller.rb'


exit = false
undertaker = Undertaker.new

undertaker.welcome_message

until exit

  input = undertaker.user_input
  if input == "CREATE"
    undertaker.request_information
    undertaker.user_input
    undertaker.create_tombstone
  elsif  input == "EXIT"
    break
  end
end