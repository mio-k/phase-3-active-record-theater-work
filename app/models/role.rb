class Role < ActiveRecord::Base
    has_many :auditions
    @@all_locations = []
    @@all_actors =[]
    attr_accessor :chatacter_name

    def initialize(character_name)
      @chatacter_name = chatacter_name
      @@all_locations << self.location

    end

    def locations
      @@all_locations.map do |location|
        location == self
      end
    end

    def actors
      self.actor
    end
    def locations
      
    end
end