require './hashketball.rb'
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |home_away, team_data| #accesses home and away umbrella hash, and then embedded team information hashes
  team_data[:players].each do |player| #accesses each hash of individual player statistics
    return player[:points] if player[:player_name] == player_name #returns value within key if input value matches corresponding key
  
 end
end
end

def shoe_size(player_name)
  game_hash.each do |home_away, team_data|
    team_data[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_name
    end
  end
end

def team_colors(team_name)
  game_hash.each do |home_away, team_data|
    return team_data[:colors] if team_data[:team_name] == team_name #returns the colors if value of individual team characteristics hash matches input
  end
end

def team_names
    game_hash.map do |home_away, team_data| #maps the outer hash of team characteristics to return a new array of the values within :team_name keys
      team_data[:team_name]
end    
end

def player_numbers(team_name)
  game_hash.each do |home_away, team_data|
   if team_data[:team_name] == team_name
     return team_data[:players].map do |player|
       player[:number]
  end
end #if the team_data team characteristic hash's name key matches the input, it maps individual player data to a new array containing players' numbers
end
end

def player_stats(player_name)
  game_hash.each do |home_away, team_data|
    team_data[:players].each do |player| #accesses all the individual statistictics for each player
      if player[:player_name] == player_name #if player_name key equals input, it returns all the elements/statistics for each player
        return player
    end
  end
end
end

def big_shoe_rebounds
  biggest_shoe = 0
  most_rebounds = 0 #set baseline minimum values for shoes and rebounds
  game_hash.each do |home_away, team_data|
    team_data[:players].each do |player|
      shoe_size = player[:shoe] #sets shoe size to the value of each player elements show sieze
      if shoe_size > biggest_shoe
        biggest_shoe = shoe_size
        most_rebounds = player[:rebounds] #loops through player to find the 
        # biggest shoe size and the player with it, then assigns
        #most rebounds to to rebound key value of player found to have largest shoe size
      end
    end
  end
  most_rebounds
end

def most_points_scored
  mp = 0
  game_hash.each do |home_away, team_data|
   team_data[:players].each do |player_stat|
     pointnum = player_stat[:points]
     if pointnum > mp
       pointnum = mp
     end
   end
 end
 pointnum
end     

def winning_team
  count = 0
  game_hash.each do |home_away, team_data|
   team_data[:players].each do |player|
     pointind = player[:points]
  while count < game_hash[:home][:players].length
  
  count += 1
     
def player_with_longest_name
  name_long = 0
  game_hash.each do |home_away, team_data|
   team_data[:players].map do |player|
     name_length = player[:player_name].split("")
     if name
     
      
      
      
      