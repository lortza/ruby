monopoly.rb


@properties = [
  { name: 'Go', position: 1, price: 0, rent: -200, group: 'game-play', owner_id: 0 },
  { name: 'Mediterranean Ave.', position: 2, price: 60, rent: 2, group: 'purple', owner_id: 0 },
  { name: 'Community Chest', position: 3, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  { name: 'Baltic Ave.', position: 4, price: 60, rent: 4, group: 'purple', owner_id: 0 },
  { name: 'Income Tax', position: 5, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  { name: 'Reading Railroad', position: 6, price: 200, rent: 0, group: 'railroad', owner_id: 0 },
  { name: 'Oriental Ave.', position: 7, price: 100, rent: 6, group: 'light-blue', owner_id: 0 },
  { name: 'Chance', position: 8, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  { name: 'Vermont Ave.', position: 9, price: 100, rent: 6, group: 'light-blue', owner_id: 0 },
  { name: 'Connecticut Ave.', position: 10, price: 120, rent: 8, group: 'light-blue', owner_id: 0 },
  { name: 'Just Visiting / Jail', position: 11, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  { name: 'St. Charles Place', position: 12, price: 140, rent: 10, group: 'violet', owner_id: 0 },
  { name: 'Electric Company', position: 13, price: 150, rent: 0, group: 'utilities', owner_id: 0 },
  { name: 'States Ave.', position: 14, price: 140, rent: 10, group: 'violet', owner_id: 0 },
  { name: 'Virginia Ave.', position: 15, price: 160, rent: 12, group: 'violet', owner_id: 0 },
  # { name: 'Pennsylvania Railroad', position: 16, price: 200, rent: 0, group: 'railroad', owner_id: 0 },
  # { name: 'St. James Place', position: 17, price: 180, rent: 14, group: 'orange', owner_id: 0 },
  # { name: 'Community Chest', position: 18, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Tennessee Ave.', position: 19, price: 180, rent: 14, group: 'orange', owner_id: 0 },
  # { name: 'New York Ave.', position: 20, price: 200, rent: 16, group: 'orange', owner_id: 0 },
  # { name: 'Free Parking', position: 21, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Kentucky Ave.', position: 22, price: 220, rent: 18, group: 'red', owner_id: 0 },
  # { name: 'Chance', position: 23, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Indiana Ave.', position: 24, price: 220, rent: 18, group: 'red', owner_id: 0 },
  # { name: 'Illinois Ave.', position: 25, price: 240, rent: 20, group: 'red', owner_id: 0 },
  # { name: 'B. & O. Railroad', position: 26, price: 200, rent: 0, group: 'railroad', owner_id: 0 },
  # { name: 'Atlantic Ave.', position: 27, price: 260, rent: 22, group: 'yellow', owner_id: 0 },
  # { name: 'Ventnor Ave.', position: 28, price: 260, rent: 22, group: 'yellow', owner_id: 0 },
  # { name: 'Water Works', position: 29, price: 150, rent: 0, group: 'utilities', owner_id: 0 },
  # { name: 'Marvin Gardens', position: 30, price: 280, rent: 24, group: 'yellow', owner_id: 0 },
  # { name: 'Go to Jail', position: 31, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Pacific Ave.', position: 32, price: 300, rent: 26, group: 'dark-green', owner_id: 0 },
  # { name: 'North Carolina Ave.', position: 33, price: 300, rent: 26, group: 'dark-green', owner_id: 0 },
  # { name: 'Community Chest', position: 34, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Pennsylvania Ave.', position: 35, price: 320, rent: 28, group: 'dark-green', owner_id: 0 },
  # { name: 'Short Line Railroad', position: 36, price: 200, rent: 0, group: 'railroad', owner_id: 0 },
  # { name: 'Chance', position: 37, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Park Place', position: 38, price: 350, rent: 35, group: 'dark-blue', owner_id: 0 },
  # { name: 'Luxury Tax', position: 39, price: 0, rent: 0, group: 'game-play', owner_id: 0 },
  # { name: 'Boardwalk', position: 40, price: 400, rent: 50, group: 'dark-blue', owner_id: 0 }
]


player1 = {name: "Bret", current_position: 4, last_roll: 0, bank_balance: 200}
player2 = {name: "Jemaine", current_position: 1, last_roll: 0, bank_balance: 200}
@all_players = [player1, player2]

def determine_current_player
  if @current_player
  end
end

def last_property_position
  positions = @properties.map {|property| property[:position]}
  positions.sort.last
end
LAST_PROPERTY_POSITION = last_property_position

def roll_dice
  roll_value = 0
  2.times {roll_value += (1..6).to_a.sample.to_i}
  roll_value
end

def determine_current_property(player)
  @properties.select {|property| property[:position] == player[:current_position] }
end

def display_current_position_name(player)
  current_property = determine_current_property(player)
  p "#{current_property[0][:name]}, ##{current_property[0][:position]}"
end

def calculate_players_next_position(player)
  if player[:current_position] + player[:last_roll] <= LAST_PROPERTY_POSITION
    player[:current_position] += player[:last_roll]
  else
    wrap_remainer = (player[:current_position] + player[:last_roll]) - LAST_PROPERTY_POSITION
    player[:current_position] = wrap_remainer
  end
end

def determine_property_ownership(player)
  property = determine_current_property(player)
  if property_is_owned(property)
    p "pay_the_landlord(property, player)"
  else
    p "buy_property(property, player)"
  end
end

def property_is_owned(property)
  property[0][:owner_id] != 0
end

def take_turn(player)
  display_current_position_name(player)
  player[:last_roll] = roll_dice
  calculate_players_next_position(player)
  display_current_position_name(player)
  determine_property_ownership(player)
  # end_turn(player)
end

def play_game
  @current_player = @all_players.first
  p @current_player[:name]
  take_turn(@current_player)
  determine_current_player
end

p play_game