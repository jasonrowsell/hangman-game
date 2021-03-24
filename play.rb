class Hangman
  
  def initialize
    @letters = ('a'..'z').to_a
    word_clue = words.sample
    @word =  word_clue[:word]
    @clue = word_clue[:clue]
    @lives = 7
    @correct_guesses = []
    @word_teaser = ""
    @word.size.times do
      @word_teaser += "_ " 
    end 
  end
    
  def words
    [
      {word: "thursday", clue: "A day of the week"},
      {word: "arena", clue: "A venue for sports"},
      {word: "jazz", clue: "A genre of music, with its roots in blues"},
      {word: "brake", clue: "Verb to slow down"},
      {word: "smell", clue: "Two-thirds of the sharks brain is dedicated to this"},
      {word: "squash", clue: "An indoor sport involving a ball and rackets"},
      {word: "revenge", clue: "Those who want to get even"}
    ]
  end

  def print_teaser(last_guess = nil)
    update_teaser(last_guess) unless last_guess.nil?
    puts @word_teaser
  end

  def update_teaser(last_guess)
    new_teaser = @word_teaser.split
    new_teaser.each_with_index do |letter, index|
      if @word[index] == last_guess
        new_teaser[index] = last_guess
      end
    end

    @word_teaser = new_teaser.join(' ')
  end

  def make_guess
    if @lives > 0
      puts "Guess a letter"
      guess = gets.chomp.downcase.strip

      if guess == 'exit'
        puts "Thanks for playing!"
        exit
      elsif @word.include?(guess)
        puts "Nice guess!"
        @correct_guesses << guess
        @letters.delete(guess)
        print_teaser(guess)
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
    puts "Welcome to Hangman! Your word is #{@word.length} characters long"
    puts "To exit the game, type 'exit'"
    
    print_teaser
    puts "Your clue is: #{@clue} "
    make_guess
  
  end
  
end

game = Hangman.new
game.start