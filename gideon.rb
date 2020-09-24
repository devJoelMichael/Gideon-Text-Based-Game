class Player

    attr_accessor :x_coord, :y_coord

    def initialize name
        @name = name
        @inventory = []
        @x_coord, @y_coord = 0, 0
        
    end

    def set_name name 
        @name = name
    end

    def name 
        @name
    end

    def location
       "#{@x_coord}, #{@y_coord}"
    end
end

class Item

    def interact(player)
        puts "You pick up #{self}"
    end

    def to_s
        "a #{@type.to_s}"
    end
end

class Wrench < Item 
    def initialize
        @name = "Wrench"
    end
end

class FusionCutter < Item
    def initialize
        @name = "Fusion Cutter"
    end
end

class RedKeyCard < Item
    def initialize
        @name = "Red KeyCard"
    end
end

class BlueKeyCard < Item
    def initialize
        @name = "Blue KeyCard"
    end
end

class GreenKeyCard < Item
    def initialize
        @name = "Green KeyCard"
    end
end


class Ship

    attr_accessor :rooms

    def initialize
        # @rooms = [["computer room", "bridge"], ["living quarters", "mess hall", "life support"], ["comm room", "hallway", "escape pods"], ["med bay", "hibernation chamber", "cargo hold"], ["engine room"]]

        @rooms = Array.new(6, Array.new(3, "X"))
    end

    def layout 
        i = 0
        while i < 6 
            p rooms[i]
            i += 1
        end
    end
end

class Room 

    def initialize name
        @name = name
        @description = ""
        @items = []
    end

    def look_around 
        @description
    end
end


puts "*" * 50
puts "GIDEON"
puts "*" * 50

puts "\nSkhsssssssssssssshhhh"
puts "\nYou awaken with the sound of a pressurized seal being broken."
puts "\nYou look around at the hibernation chamber you've awoken in. You see tubes and wires\n jutting out of 5 hibernation pods that look identical to the one you now sit in.\n They are closed. As you come to, you hear an alarm siren blaring and see flashing red \nlights. You see a door to the north, south, east, and west. The door to the \n north reads 'HALLWAY', the south reads 'ENGINE ROOM', the east reads 'MED BAY', and \nthe west reads 'CARGO HOLD'"

puts "\nYou hear a familiar computer voice call out: \n \n 'Lifeforce detected. State your name:'\n"
player_name = gets.chomp
player = Player.new(player_name) 
new_ship = Ship.new

puts "\n'Crewmember accepted. Hello, #{player.name}. Several mechanical failures detected. Please report to the BRIDGE for further instructions."

puts "\nAction:" 
player_action = gets.chomp


