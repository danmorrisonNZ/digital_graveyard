class TombstoneView

  def render_welcome
    puts "Welcome to the digital graveyard, you can CREATE, VIEW or EXIT. "
  end

  def dead_details
    puts "Please enter the name,date of birth, date of death and last words of the deceased"
  end

  def user_input
    gets.chomp
  end

end