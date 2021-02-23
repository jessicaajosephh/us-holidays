class Holidays

    @@all = []

    def initialize(holiday_hash)
        holiday_hash.each do |key, value|
            self.send("#{key}=", value)
       @@all << self
    end

    def self.all
       @@all
    end

end