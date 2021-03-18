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
  
  def begin
    puts "Your clue is: #{ @word[1] } "
  end
  
end

game = Hangman.new
game.begin