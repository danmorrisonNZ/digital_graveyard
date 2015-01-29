require_relative 'grave_model.rb'
require_relative 'grave_view.rb'

class Undertaker

  def initialize
    @tombstone = Tombstones.new
    @tombstone_constructor = TombstoneConstructor.new
  end


end