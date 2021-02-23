class CLI

    def initialize
        API.new.get_holiday_data
    end
    
    def call
        greeting
        menu
    end

    def greeting
        puts "Welcome! Start searching for holidays now!"
        puts "To search for US federal holidays, enter 'holidays'"
        puts "If there is nothing else you would like to do at the moment, enter 'exit'"
    end

    def menu 
        input = gets.strip.downcase

        if input == "holidays"
            list_of_holidays
        elsif input == "exit"
            goodbye
        else
            invalid_entry
        end
    end

    def goodbye
        puts "Goodbye! Thanks for stopping in!"
    end

    def list_of_holidays
        puts "Select which holiday you would like information about."
        puts "holiday 1"
        puts "holiday 2"
        puts "holiday 3"
        input = gets.strip.downcase

        holiday_selection(input)
    end

    def holiday_selection(holiday)
        puts "#{holiday}"
    end

    def invalid_entry
        puts "Invalid entry, please try again."
    end

end