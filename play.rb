class Hangman
  
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
    @lives = 7
        
  end
    
  def words
    [
      {word: "thursay", clue: "A day of the week"},
      {word: "arena", clue: "A venue for sports"},
      {word: "jazz", clue: "A genre of music, with its roots in blues"},
      {word: "brake", clue: "Verb to slow down"},
      {word: "smell", clue: "Two-thirds of the sharks brain is dedicated to this"},
      {word: "squash", clue: "An indoor sport involving a ball and rackets"},
      {word: "revenge", clue: "Those who want to get even"}
    ]
  end

  def make_guess
    if @lives > 0
      puts "Guess a letter"
      guess = gets.chomp.downcase
      
      if @word[:word].include?(guess)
        puts "Nice guess!"
      else
        puts "Incorrect guess!"
        @lives -= 1
        puts "You have #{@lives} lives left"
      end
      make_guess
    else
      puts "Game Over!"
      exit
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