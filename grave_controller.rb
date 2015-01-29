require_relative 'grave_model.rb'
require_relative 'grave_view.rb'

class Undertaker

  def initialize
    @tombstone = Tombstones.new
    @tombstone_constructor = TombstoneConstructor.new
    @tombstone_view = TombstoneView.new
  end

  def create_tombstone
    @tombstone.create
  end

  def request_information
    @tombstone_view.dead_details
  end

  def user_input
    @tombstone_view.user_input
  end

end