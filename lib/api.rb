class API

    def initialize
        @url = "https://date.nager.at/Api/v1/Get/US/2021"
    end

    def get_holiday_data
        holiday_hash = HTTParty.get(@url)
        holiday_hash
        binding.pry
    end


end