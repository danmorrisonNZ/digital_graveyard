require 'csv'
class TombstoneParse
  attr_accessor :new_tombstones
  attr_reader :file, :graveyard
  def initialize
    @file = 'grave_database.csv'
    @graveyard = nil
    tombstone
    @new_tombstones = []
  end
  def new_user_tombstone
    @graveyard.push(Tombstones.new(@new_tombstones))
    CSV.open(@file,"a") {|csv| csv << @new_tombstones}
    @new_tombstones.clear
  end
  def tombstone
      @graveyard if @graveyard
      @graveyard = []
      CSV.foreach(@file) do |row|
        next if row.first == "NAME"
        @graveyard << Tombstones.new(row)
      end
  end
end
class Tombstones
  attr_reader :name
  def initialize (row)
    @name = row[0]
    @date_of_birth = row[1]
    @date_of_death = row[2]
    @last_words = row[3]
  end
  def to_s
    <<-STRING

    Name         #{@name}
    DOB-DOD      #{@date_of_birth} - #{@date_of_death}
    Last words   #{@last_words}

    STRING
  end
end
