class API

    def initialize
        @url = "https://date.nager.at/Api/v1/Get/US/2021"
    end

    def get_holiday_data
        holiday_hash = HTTParty.get(@url)
        holiday_hash
        #binding.pry
    end

    def create_holiday(holiday_array)
        holiday_array.each do |holiday_hash|
           Holidays.new(holiday_hash) 
        end
    end



end