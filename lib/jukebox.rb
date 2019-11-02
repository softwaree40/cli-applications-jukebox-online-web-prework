# Add your code here
require 'pry'
def help
  #puts '- Please enter a command: '
  puts "I accept the following commands:"
  puts " - help : displays this help message "
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
  
end
def play(songs)
   puts "Please enter a song name or number:"
   user_respond = gets.chomp
   user_respond.strip
   binding.pry
   if user_respond.to_i == 0 
     if songs.include?(user_respond)
     puts "Playing #{user_respond}"
     else
       "Invalid input, please try again"
     end
     else
       if songs[user_respond.to_i-1]
         puts "Playing #{songs[user_respond.to_i-1]}"
       else
      "Invalid input, please try again"
      end
   end
end

def list (songs)
   songs = ['.Phoenix - 1901','.Tokyo Police Club - Wait Up','. Sufjan Stevens - Too Much','., The Naked and the Famous - Young Blood','. (Far From) Home - Tiga','.The Cults - Abducted','.Phoenix - Consolation Prizes','.Harry Chapin - Cats in the Cradle','. Amos Lee - Keep It Loose, Keep It Tight']
   split.songs.each_with_index do |word ,idx|
     
   end
   return (idx+1.to_s) + word
end

def exit_junkebox
   puts "Goodbye"
end

def run 
   if user_respond == 'help'
     help
   elsif
    user_respond == 'list'
     list(songs)
   elsif
    user_respond == 'play'
     play(songs)
   else
    user_respond == 'exit'
     exit_junkebox
      
    
   end
end
