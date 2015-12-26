# Write your code here!

  $todays_match = {
# Home Team:

# * team name: Brooklyn Nets
# * colors: Black, White
# * players:
# |          Stat          | Info | Info |  Info | Info | Info   |
# |:------------------:|:-------------:|:------------:|:------------:|:-------------:|:-------------:|
# | **Player Name**    |  Alan Anderson| Reggie Evans | Brook Lopez  | Mason Plumlee | Jason Terry   |
# | **Number**         | 0             | 30           | 11           | 1             | 31            |
# | **Shoe**           | 16            | 14           | 17           | 19            | 15            |
# | **Points**         | 22            | 12           | 17           | 26            | 19            |
# | **Rebounds**       | 12            | 12           | 19           | 12            | 2             |
# | **Assists**        | 12            | 12           | 10           | 6             | 2             |
# | **Steals**         | 3             | 12           | 3            | 3             | 4             |
# | **Blocks**         | 1             | 12           | 1            | 8             | 11            |
# | **Slam Dunks**     | 1             | 7            | 15           | 5             | 1             |

    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["black", "white"],
      :players => [
        {:player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
        {:player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks =>7},
        {:player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
        {:player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists =>6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5},
        {:player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1}
        ]
        },
# Away Team:

# * team name: Charlotte Hornets
# * colors: Turquoise, Purple
# * players:

# |        Stat       |     Info          |         Info     |              Info |         Info     |         Info      |
# |:------------------:|:-----------------:|:-----------------:|:-----------------:|:---------------:|:-----------------:|
# | **Player Name**  | Jeff Adrien     | Bismak Biyombo    | DeSagna Diop      | Ben Gordon      | Brendan Haywood   |
# | **Number**         | 4                 | 0                 | 2                 | 8               | 33                |
# | **Shoe**           | 18                | 16                | 14                | 15              | 15                |
# | **Points**         | 10                | 12                | 24                | 33              | 6                 |
# | **Rebounds**       | 1                 | 4                 | 12                | 3               | 12                |
# | **Assists**        | 1                 | 7                 | 12                | 2               | 12                |
# | **Steals**         | 2                 | 7                 | 4                 | 1               | 22                |
# | **Blocks**         | 7                 | 15                | 5                 | 1               | 5                 |
# | **Slam Dunks**     | 2                 | 10                | 5                 | 0               | 12                |

    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["turquoise", "purple"],
      :players => [
        {:player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2},
        {:player_name => "Bismak Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10},
        {:player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
        {:player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
        {:player_name => "Brendan Haywood",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12}
        ]
        }
      }
def game_hash
  return $todays_match
end

#     :home => {
#       :team_name => "Brooklyn Nets",
#       :colors => ["black", "white"],
#       :players => [
#         {:player_name => "Alan Anderson",
#         :number => 0,
#         :shoe => 16,
#         :points => 22,

def find_team (requested_team)
  $todays_match.each do |team, team_hash|
    #puts "Team: #{team}, team hash: #{team_hash}.\n\n"
    if team_hash[:team_name] == requested_team
      return team_hash
    end
  end
end

def find_player (requested_player)
  $todays_match.each do |team, team_hash|
    team_hash[:players].each do |player_hash|
      if player_hash[:player_name] == requested_player
        return player_hash
      end
    end
  end
end

def num_points_scored (requested_player)
  return find_player(requested_player)[:points]
end

def shoe_size (requested_player)
  return find_player(requested_player)[:shoe]
end

def team_colors (requested_team)
  colors = []
  find_team(requested_team)[:colors].each do |color|
    colors << color.capitalize
  end
  return colors
end

def team_names
  names = []
  $todays_match.each do |host, team_hash|
    names << team_hash[:team_name]
  end
  return names
end

def player_numbers(requested_team)
  numbers = []
  team_hash = find_team(requested_team)
  team_hash[:players].each do |player|
    numbers << player[:number]
  end
  return numbers
end

def player_stats (requested_player)
  new_hash = {}
  player_hash= find_player(requested_player)
  player_hash.each do |key, value|
    if key != :player_name
      new_hash[key] = value
    end
  end
  return new_hash
end

def big_shoe_rebounds
  #iterate through players, reset rebounds when shoe size is current largest
  largest_shoe = 0
  num_rebounds = 0
  $todays_match.each do |host, team_hash|
    team_hash[:players].each do |player|
      if player[:shoe] > largest_shoe then
        largest_shoe = player[:shoe]
        num_rebounds = player[:rebounds]
      end
    end
  end
  return num_rebounds
end

def most_points_scored
  #iterate through players, reset rebounds when shoe size is current largest
  high_scorer = ""
  highest_points = 0
  $todays_match.each do |host, team_hash|
    team_hash[:players].each do |player|
      if player[:points] > highest_points then
        high_scorer = player[:player_name]
        highest_points = player[:points]
      end
    end
  end
    return high_scorer
end

def find_score(team_hash)
  team_score = 0
  team_hash[:players].each do |player|
    team_score += player[:points]
  end
  return team_score
end

def winning_team
  home_score = find_score($todays_match[:home])
  #puts "Team: #{$todays_match[:home][:team_name]}, score: #{home_score}."
  away_score = find_score($todays_match[:away])
  #puts "Team: #{$todays_match[:away][:team_name]}, score: #{away_score}."
  if home_score > away_score then
    return $todays_match[:home][:team_name]
  else
    return $todays_match[:away][:team_name]
  end
end

def player_with_longest_name
  #iterate through players, reset long_name when player_name is current longest
  long_name = ""
  $todays_match.each do |host, team_hash|
    team_hash[:players].each do |player|
      if player[:player_name].length > long_name.length then
        long_name = player[:player_name]
      end
    end
  end
    return long_name
end

today = game_hash
puts "Points scored for Jeff are #{num_points_scored ("Jeff Adrien")}."
puts "Shoe size for Jeff is #{shoe_size("Jeff Adrien")}."
puts "Player numbers for the Hornets are #{player_numbers("Charlotte Hornets")}.\n\n"
puts "Team colors for the Hornets are #{team_colors("Charlotte Hornets")}."
puts "Todays teams are #{team_names}."
puts "Hash for Jeff is #{player_stats("Jeff Adrien")}."
puts "Big shoe rebounds are #{big_shoe_rebounds}."
puts "High scorer is #{most_points_scored}."
puts "Winning team is #{winning_team}."
puts "Player with longest name is #{player_with_longest_name}."