class Holidays

    @@all = []

    def initialize(holiday_hash)
        
        holiday_hash.each do |key, value|
           self.class.attr_accessor(key)
           self.send("#{key}=", value)
            #binding.pry
        end
       @@all << self
    end

    def self.all
       @@all
    end

    def self.find_by_name(name)
        self.all.select do |holiday|
          holiday.name.downcase == name
        end 
    end


end