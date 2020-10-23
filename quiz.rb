questions = {
  "In Hocus Pocus, what are the names of the three Sanderson sisters and the actresses who play them?" => ["Bette Midler as Winifred, Sarah Jessica Parker as Sarah, and Kathy Najimy as Mary", "Kathy Najimy as Winifred, Sarah Jessica Parker as Sarah, and Bette Midler as Mary", "Sarah Jessica Parker as Winifred, Bette Midler as Sarah, and Kathy Najimy as Mary"],
  "Which other scary '90s film did Scream's Neve Campbell and Skeet Ulrich star in?" => ["The Craft", "From Dusk Till Dawn", "Misery"],
  "In which 1982 horror film did Carol Anne start talking to the television set?" => ["Poltergeist", "The Shining", "The Thing"],
  "In the film adaptation of Roald Dahl's The Witches, Anjelica Huston's Grand High Witch plans to turn children into what?" => ["Mice", "Rats", "Crows"],
  "Which actor played the role of Hannibal Lecter on screen before Anthony Hopkins made it his own?" => ["Brian Cox", "Mads Mikklesen", "Bryan Fuller"],
  "The Goosebumps series of books has spooked readers since its release back in 1992 - name the author who created them?" => ["R.L. Stine", "John Green", "J.K. Rowling"],
  "What is the name of the youngest Baudelaire child in Lemony Snicket's A Series of Unfortunate Events?" => ["Sunny", "Violet", "Klaus"],
  "In Harry Potter, how do Harry, Ron and Hermione usually mark the 31 October at Hogwarts?" => ["Munching on a Halloween feast in the Great Hall at Hogwarts School of Witchcraft and Wizardry", "Feasting on muggle food at Ron's parents' house", "Enjoying the fireworks at Hagrid's humble abode"],
  "Janet and Allan Ahlberg's Halloween classic Funnybones tells the story of a big skeleton, a little skeleton and what else?" => ["A dog skeleton", "A tiny skeleton", "A bird's skeleton"],
  "What supernatural power does Carrie possess in Stephen King's blood-soaked novel of the same title?" => ["Moving objects", "Going through walls", "The death stare"]
}
used_joker = false
count_right_answers = 0

print "What is your name? "
username = gets.chomp
puts "Welcome #{username} to Our Amazing Halloween Quiz!"
puts "Trick or treat. You are so sweet, and it would be great if we could meet. Halloween greetings and best wishes for the Happiest Halloween ever."
puts "\n"
sleep(1)

letters = ["a", "b", "c"]

questions.each_with_index do |(q, a), idx|
  puts q
  correct_answer = a[0]
  false_answers1 = a[1]
  false_answer2 = a[2]
  a.shuffle!
  a.each_with_index { |answer, idx| puts "#{letters[idx]}. #{answer} " }

  loop do
    print "Enter answer: "
    user_answer = gets.chomp.downcase

    case user_answer
    when "a" then user_answer = a[0]
    when "b" then user_answer = a[1]
    when "c" then user_answer = a[2]
    when "joker"
      then if used_joker == false
        puts "a. #{correct_answer}"
        puts "b. #{false_answers1}"
        used_joker = true
        print "Enter answer: "
        user_answer = gets.chomp.downcase
      end
    else user_answer = nil
    end

    correct_msgs = ["You are killing it!", "Wow. Who would have thought?", "Crazy! Nailed it!"]
    wrong_msgs = ["Sorry, not so much.", "Yeeeeeeeeaaaa ... nope, try again.", "Better luck next time."]

    if user_answer.nil?
      puts "Enter a, b, or c"
    elsif correct_answer == user_answer
      puts correct_msgs.sample
      count_right_answers += 1
      break
    else
      puts wrong_msgs.sample
      break
    end
  end

  puts "---------------------------------------------------------"
  puts ""
end

puts "End of Quiz!"
puts "You got #{count_right_answers} out of 10 correct"
if count_right_answers > 8
  puts "Congratulations you're so smart"
elsif count_right_answers > 5
  puts "You're so average"
else
  puts "You're an idiot!"
end


puts "    H A P P Y   H A L L O W E E N ! ! ! "
puts "                  ."
puts "                 //"
puts "       _.-\"\"\"\"\"'//-'\"\"\"\"-._"
puts "     .', ,  , , : : ` ` `  `."
puts "    / , , \\'-._ : :_.-'/ ` ` \\"
puts "   / , ,  :\\(_)\\  /(_)/ : ` ` \\"
puts "  | , ,  ,  \\__//\\\\__/ . . ` ` |"
puts "  | . .:_  : : '--`: : . _: ; :|"
puts "  | : : \\\\_  _' : _: :__// , , |"
puts "   \\ ` ` \\ \\/ \\/\\/ \\_/  / , , /"
puts "    \\ ` ` \_/\_/\_/\_/\/ , , /"
puts "     `._ ` . :  :  :  , , _.'"
puts "        `-..............-' bni"

