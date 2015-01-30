require_relative 'grave_controller.rb'


exit = false
undertaker = Undertaker.new


undertaker.welcome_message

until exit

  input = undertaker.user_input
  if input == "CREATE"
    undertaker.request_name
    undertaker.user_input
    undertaker.request_date_of_birth
    undertaker.user_input
    undertaker.request_date_of_death
    undertaker.user_input
    undertaker.request_last_words
    undertaker.user_input
    undertaker.create_tombstone
  elsif  input == "EXIT"
    break
  end
end