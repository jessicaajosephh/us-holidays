class CLI
    
    def call
        greeting
        API.get_holiday_data
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
        puts "holiday 1"
        puts "holiday 2"
        puts "holiday 3"
        puts "Select which holiday you would like information about."
        input = gets.strip.downcase
        holiday_selection(input)
    end

    def holiday_selection
        puts "#{holiday}"
    end

    def invalid_entry
        puts "Invalid entry, please try again."
    end

end