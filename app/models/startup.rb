
class Startup

    @@all = []
    attr_reader :founder
    attr_accessor :name, :domain

#CLASS METHODS# 

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        @@all.find {|up| up.founder == founder}
    end

    def self.domains
        @@all.collect{|up| up.domain}
    end

#INSTANCE METHODS#

    def initialize(domain, name, founder)
        @name = name
        @founder = founder
        @domain = domain
        self.save
    end

    def save
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end


end
