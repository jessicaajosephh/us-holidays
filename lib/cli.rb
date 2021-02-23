#require 'pry'
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
             Holidays.all.each_with_index do |holiday, index|
            puts "#{index + 1}. #{holiday.name}" 

        end
        input = gets.strip.downcase

        holiday_selection(input)
    end

    def holiday_selection(holiday)
        holiday = Holidays.find_by_name(holiday)
        holiday.each do |hol|
            puts "Name: #{hol.name}"
            puts "Date: #{hol.date}"
            puts "Country: #{hol.countryCode}"
            menu
            
            

            #holiday.each do {|hol| key == value}
            #self.class.attr_accessor(key)
            #self.send("#{key}=", value)
        end

    end


    def invalid_entry
        puts "Sorry, I'm not getting that, please try again."
        menu
    end

    

end