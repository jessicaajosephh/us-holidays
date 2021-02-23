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
        puts "-----------------------------------------------------------------------------"
        puts ""
        puts "Welcome! Start searching for holidays now!"
        puts ""
        puts "--To search for US federal holidays, enter 'holidays'"
        puts ""
        puts "--If there is nothing else you would like to do at the moment, enter 'exit'"
        puts ""
        puts "-----------------------------------------------------------------------------"
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
        puts ""
        puts "-------------------------------------"
        puts "Goodbye! Thanks for stopping in!"
        puts "-------------------------------------"
    end

    def list_of_holidays
        puts "-----------------------------------------------------------------------------"
        puts ""
        puts "Select which holiday you would like information about."
        puts ""
          Holidays.all.each_with_index do |holiday, index|
            #puts ""
            puts "#{index + 1}. #{holiday.name}" 
            


        end
        input = gets.strip.downcase

        holiday_selection(input)
    end

    def holiday_selection(holiday)
        holiday = Holidays.find_by_name(holiday)
        holiday.each do |holiday_info|
            puts "------------------------------"
            puts "Holiday Name: #{holiday_info.name}"
            puts "Holiday Date: #{holiday_info.date}"
            puts "Country: #{holiday_info.countryCode}"
            puts "------------------------------"
            puts ""
            puts "Continue searching for holidays, enter 'holidays'."
            puts "If you are finished, enter 'exit'."
            menu

        end
            
    end


    def invalid_entry
        puts "Sorry, I'm not getting that, please try again."
        menu
    end

    

end