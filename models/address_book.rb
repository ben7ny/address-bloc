require_relative 'entry'

require_relative 'controllers/menu_controller'

menu = MenuController.new
 # #5
 system "clear"
 puts "Welcome to AddressBloc!"
 # #6
 menu.main_menu

   class AddressBook
     attr_reader :entries

     def initialize
       @entries = []
     end


   def add_entry(name, phone_number, email)
     index = 0
     entries.each do |entry|
       if name < entry.name
         break
       end
       index+= 1
     end
     entries.insert(index, Entry.new(name, phone_number, email))
   end
 end
