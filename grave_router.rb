require_relative 'grave_controller.rb'


exit = false
undertaker = Undertaker.new


undertaker.welcome_message

until exit

  input = undertaker.user_input
  if input == "CREATE"
    undertaker.request_name
    undertaker.new_tombstone_input
    undertaker.request_date_of_birth
    undertaker.new_tombstone_input
    undertaker.request_date_of_death
    undertaker.new_tombstone_input
    undertaker.request_last_words
    undertaker.new_tombstone_input
    undertaker.menu_message
  elsif  input == "EXIT"
   break
  else
    undertaker.incorrect_message
    undertaker.menu_message
 end
end