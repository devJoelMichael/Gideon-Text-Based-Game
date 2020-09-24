
HYBERNATION = ["HALLWAY", "MED BAY", "ENGINE ROOM", "CARGO BAY"] 

ENGINEROOM = ["HYBERNATION", "RED KEY CARD"]

CARGOBAY = ["HYBERNATION", "BLUE KEY CARD"]

MEDBAY = ["HYBERNATION"]

COMMROOM = ["HALLWAY", "RED KEY CARD"]

HALLWAY = ["ESCAPE PODS", "COMM ROOM", "MESS HALL", "HYBERNATION", "LOOK OUT THE WINDOWS"]

ESCAPEPODS = ["HALLWAY", "CAPTAINS KEY"]

LIVINGQ = ["MESS HALL", "WRENCH"]

MESSHALL = ["BRIDGE", "HALLWAY", "LIFE SUPPORT", "LIVING QUARTERS"]

LIFESUPPORT = ["MESS HALL", "GRAB WRENCH"]

BRIDGE = ["MESS HALL", "*COMPUTER BRAIN*", "PICK UP BLUE KEY CARD"]

COMPUTERBRAIN = ["BRIDGE", "CAPTAINS KEY"]




#######################STORY STARTS###########################

puts "*" * 50
puts "GIDEON"
puts "*" * 50

puts "\nSkhsssssssssssssshhhh"
puts "\nYou awaken with the sound of a pressurized seal being broken."
puts "\nYou look around at the hibernation chamber you've awoken in. You see tubes and wires\n jutting out of 5 hibernation pods that look identical to the one you now sit in.\n They are closed. As you come to, you hear an alarm siren blaring and see flashing red \nlights. You see a door to the north, south, east, and west. The door to the \n north reads 'HALLWAY', the south reads 'ENGINE-ROOM', the east reads 'MED-BAY', and \nthe west reads 'CARGO-HOLD'"

puts "\n You hear a familiar computer voice call out: \n \n 'Lifeforce detected. State your name:'\n"
player_name = gets.chomp.upcase

puts "\n #{player_name}...yes, I see you are part of the delta crew?"

puts "\n There is an awkward pause as the sirens continue to blare."

puts "\n Could you please fix this alarm? It has been going off for quite some time and my motherboard is on the brink of collapse. - Computer"

puts "\nPossible Actions: #{HYBERNATION.join(", ")}" # {lifesupport[rooms[bridge]]}

def room_picker (player_action)
    inventory = []

    if player_action == "HYBERNATION"
        puts "\nYou see tubes and wires\n jutting out of 5 hibernation pods that look identical to the one you now sit in.\n They are closed. As you come to, you hear an alarm siren blaring and see flashing red \nlights. You see a door to the north, south, east, and west. The door to the \n north reads 'HALLWAY', the south reads 'ENGINE-ROOM', the east reads 'MED-BAY', and \nthe west reads 'CARGO-HOLD'"
        puts "\nPossible Actions: #{HYBERNATION.join(", ")}"
    
        player_action = gets.chomp.upcase
        room_picker(player_action) 

    elsif player_action == "HALLWAY" 
        puts "\nYou press the command button and the door slowly grinds open." 
        puts "\n The Hallway looms in the distance. Stretching to the Mess Hall. The lights are flickering on and off. As you walk down the path taking in your surroundings you see two giant windows on either side of the hallway." 
        puts "\n Possible Actions: #{HALLWAY.join(", ")}"

        player_action = gets.chomp.upcase
        room_picker(player_action) 

    elsif player_action == "LOOK OUT THE WINDOWS"
        puts "\n You walk over and look out into the vasness of space. The view takes your breath away, no matter how many times you see it the awe of its beauty never ceases to amaze you. You notice a speck in the distance and believe that that is Vixon Base 12. It is slowly getting closer."
        puts "\n The sirens continue to blare. What do you do?"
        HALLWAY.pop
        puts "\n Possible Actions: #{HALLWAY.join(", ")}"
    
        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "MED BAY" 
        puts "\n You walk press the command button the door opens and you see a bunch of viles and tools spread out on the floor. Looks like no one has cleaned up in some time."
        puts "\n Possible Actions: #{MEDBAY.join(", ")}"

        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "CARGO BAY" 
        if inventory.include?("BLUE KEY CARD")
            puts "\n You enter room."
            puts "\n Possible Actions: #{CARGOBAY.join(", ")}"
        else 
            puts "\n You press the command button but error flashes on the panel. “Key Card Required” reads across the panel."
            puts "\n Possible Actions: #{HYBERNATION.join(", ")}"
        end

        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "ENGINE ROOM" 
        puts "\n You press the command button but error flashes on the panel. “Key Card Required” reads across the panel."
        puts "\n Possible Actions: #{ENGINEROOM.join(", ")}"
    
        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "MESS HALL"
        puts "\n You see a kitchen. Food is spilled all over the floor."
        puts "\n Possible Actions: #{MESSHALL.join(", ")}"
    
        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "LIVING QUARTERS"
        puts "\n You see six seperate bunks. There is a card table with playing cards on it."
        puts "\n Possible Actions: #{LIVINGQ.join(", ")}"
    
        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "LIFE SUPPORT"
        puts "\n You see tubes with colored liquids around the room. You notice that there is a WRENCH on the ground."
        puts "\n Possible Actions: #{LIFESUPPORT.join(", ")}"

        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "GRAB WRENCH"
        inventory << "WRENCH"
        puts "\n Inventory: #{inventory}"
        LIFESUPPORT.pop
        puts "\n Possible Actions: #{LIFESUPPORT.join(", ")}"
            
    
        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "BRIDGE"
        puts "\n You see large panels with instruments, knobs, and buttons. You wonder where the Captain is."
        puts "\n Possible Actions: #{BRIDGE.join(", ")}"
    
        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "PICK UP BLUE KEY CARD"
        inventory << "BLUE KEY CARD"
        puts "\n Inventory: #{inventory}"
        BRIDGE.pop
        puts "\n Possible Actions: #{BRIDGE.join(", ")}"
        

        player_action = gets.chomp.upcase
        room_picker(player_action)

    elsif player_action == "ESCAPE PODS"
        puts "\n You see two escape pods locked in place. You know you need the Captains Key card, but where is he?"
        puts "\n Possible Actions: #{ESCAPEPODS.join(", ")}"

        player_action = gets.chomp.upcase
        room_picker(player_action)

    end
end

player_action = gets.chomp.upcase
room_picker(player_action)