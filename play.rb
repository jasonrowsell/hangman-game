class Hangman
  
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
        
  end
    
  def words
    [
      ["thursay", "A day of the week"],
      ["arena", "A venue for sports"],
      ["jazz", "A genre of music, with its roots in blues"],
      ["brake", "Verb to slow down"],
      ["smell", "Two-thirds of the sharks brain is dedicated to this"],
      ["squash", "A sport involving a ball and rackets"]
    ]
  end
  
  def start
    puts "Welcome to Hangman! Your word is #{@word[0].length} characters long"
    puts "Your clue is: #{ @word[1] } "
    
    word_teaser = ""
    @word[0].size.times do
      word_teaser += "_ "
    end
    
    puts word_teaser
    puts "Make a guess"
    guess = gets.chomp
  end
  
end

game = Hangman.new
game.start