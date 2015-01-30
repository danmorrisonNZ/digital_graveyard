require_relative 'grave_model.rb'
require_relative 'grave_view.rb'

class Undertaker

  def initialize
    @tombstone_parse = TombstoneParse.new
    @tombstone_view = TombstoneView.new
  end

  def create_tombstone
    @tombstone.create
  end

  def request_name
    @tombstone_view.render_name_request
  end

  def user_input
     @tombstone_view.user_input
  end

  def new_tombstone_input
    tombstone_info = @tombstone_view.tombstone_input
    @tombstone_parse.new_tombstones << tombstone_info
  end

  def request_date_of_birth
    @tombstone_view.render_date_of_birth_request
  end

  def request_date_of_death
    @tombstone_view.render_date_of_death_request
  end

  def request_last_words
    @tombstone_view.render_last_words_request
  end

  def welcome_message
    @tombstone_view.render_welcome
  end

  def menu_message
    @tombstone_view.render_menu
  end

  def view_all_tombstones
    all_tombstones = @tombstone_parse.graveyard
    @tombstone_view.render_tombstones(all_tombstones)
  end

  def incorrect_message
    @tombstone_view.render_error_message
  end

end