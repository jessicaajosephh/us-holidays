class CLI
    
    def call
        puts greeting
        API.get_holiday_data
        menu
    end

    def greeting
        puts "Welcome! Start searching for holidays now!"
        puts "To search for US federal holidays, enter 'holidays'"
        puts "If there is nothing else you would like to do at the moment, enter 'exit'"
    end

    def menu 
        
    end

end