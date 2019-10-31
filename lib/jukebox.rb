require 'pry'
# Add your code here
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.strip
#puts say_hello(users_name)

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index{|item, index|
    puts "#{index+1}. #{item}"
  }
end

def play(song_list)
  puts "Please enter a song name or number:"
  answer = gets.strip
  if answer = answer.to_i.to_s
    if answer.to_i >0 && answer.to_i < song_list. length+1
      puts "#{answer}. #{song_list[answer.to_i-1]}"
    else
      puts "Inavalid input, please try again"
    end
    
  else
    row = 0 
    while song_list[row] do
      binding.pry
      if song_list[row] == answer
        puts "Playing #{song_list[row]}"
      end
      
      row += 1 
    end
    puts "Invalid input, please try again"
  end
  
end