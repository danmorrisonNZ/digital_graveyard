require_relative 'grave_controller.rb'
exit = false
undertaker = Undertaker.new
undertaker.welcome_message
until exit
  input = undertaker.user_input.upcase
  case input
    when "CREATE"
      undertaker.create
      undertaker.menu_message
    when "VIEW"
      undertaker.view_all_tombstones
      undertaker.menu_message
    when "EXIT"
      break
    else
      undertaker.incorrect_message
      undertaker.menu_message
  end
end
