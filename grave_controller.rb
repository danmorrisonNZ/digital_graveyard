require_relative 'grave_model.rb'
require_relative 'grave_view.rb'

class Undertaker

  def initialize
    @tombstone = Tombstone.new
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

end