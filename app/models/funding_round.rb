class FundingRound

    @@all = []
    attr_reader :startup, :venture_capitalist, :type, :investment

#CLASS METHODS# 
    def self.all
        @@all
    end

#INSTANCE METHODS#

    def initialize(startup, vc, type, investment)
        @startup = startup
        @venture_capitalist = vc
        @investment = investment
        self.save
    end    

    def save
        @@all << self 
    end


end
