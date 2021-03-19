class Hangman
  
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
        
  end
    
  def words
    [
      {word: "thursay", clue: "A day of the week"},
      {word: "arena", clue: "A venue for sports"},
      {word: "jazz", clue: "A genre of music, with its roots in blues"},
      {word: "brake", clue: "Verb to slow down"},
      {word: "smell", clue: "Two-thirds of the sharks brain is dedicated to this"},
      {word: "squash", clue: "A sport involving a ball and rackets"}
    ]
  end
  
  def make_guess
    puts "Guess a letter"
    guess = gets.chomp
    
    if @word[:word].include?(guess)
      puts "Nice guess!"
    else
      puts "Incorrect guess!"
    end
  end

  def start
    puts "Welcome to Hangman! Your word is #{@word[:word].length} characters long"
    puts "Your clue is: #{ @word[:clue] } "
    
    word_teaser = ""
    @word[:word].size.times do
      word_teaser += "_ "
    end
    puts word_teaser
    
    make_guess
  
  end
  
end

game = Hangman.new
game.start