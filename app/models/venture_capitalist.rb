
class VentureCapitalist

    @@all = []
    attr_reader :name
    attr_accessor :total_worth

    #CLASS METHODS# 

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.select do |cap|
            cap.total_worth > 1_000_000_000
        end
    end

    #INSTANCE METHODS#
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        self.save
    end

    def save
        @@all << self
    end


end
