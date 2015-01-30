class TombstoneView

  def render_welcome
    puts "Welcome to the digital graveyard, you can CREATE, VIEW or EXIT. "
  end

  def render_name_request
    puts "Please enter the name of the deceased"
  end

  def user_input
    gets.chomp
  end

   def tombstone_input
    gets.chomp
  end

  def render_date_of_birth_request
    puts "Please enter the date of birth of the deceased"
  end

  def render_date_of_death_request
    puts "Please enter the date of death of the deceased"
  end

  def render_last_words_request
    puts "Please enter the last words of the deceased"
  end

  def render_menu
     puts "Digital graveyard menu: You can CREATE, VIEW or EXIT. "
  end

  def render_tombstones(all_tombstones)
    puts all_tombstones
  end

  def render_error_message
    puts "I'm sorry that is not a valid command"
  end

end
