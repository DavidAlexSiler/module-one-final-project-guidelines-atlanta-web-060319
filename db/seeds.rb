require 'pry'

Student.destroy_all
StudyBuddy.destroy_all
Mod.destroy_all
Note.destroy_all
Answer.destroy_all

blake = Student.create(name: "Blake Stoner")
alex = Student.create(name: "Alex Siler")
swafford = Student.create(name: "Christopher Swofford")
chris_k = Student.create(name: "Christopher Kalfas")
maryam = Student.create(name: "Maryam Joseph")

q1 = Mod.create(name: '1', question: "How would you select all of the words that start with the letter 'a' from the below array?
\nstuff = ['apple', 'pear', 'face', 'champagne', 'palm tree', 'aardvark', 'pineapple']")
q2 = Mod.create(name: '1', question: "What method takes a sentence and returns the number of words in the sentence?
\nsentence = 'Hi, isn't this a great and interesting sentence?'")
q3 = Mod.create(name: '1', question: "What will the following method return?
\ndef rude_greeting(name=nil)
\n name | | = 'you jerk'
\n puts 'Hey there, #\{name}'
\n        end")
q4 = Mod.create(name: '1', question: "What error, if any, will the following code raise?
\n 'Blink' + 182")
q5 = Mod.create(name: '1', question: "How would you puts out any and all foods that are delicious?
\n foods = {'pie' => 'delicious', 'broccoli' => 'not delicious',
\n 'carrots' => 'not delicious', 'apples' => 'delicious',
\n 'peanut butter' => 'delicious'}")
q6 = Mod.create(name: '1', question: "Write a method that puts out a random Archer quote.
    \narcher = {
\n     'name' => 'Sterling Mallory Archer',
\n     'co-workers'=> ['Lana Kane', 'Cyril Figgis', 'Cheryl Tunt', 'Pam Poovey', 'Dr Krieger'],
\n     'favorite_drink' => 'Bloody Mary',
\n     'Quotes' => ['I swear to god, I had something for this', 'Phrasing', 'Boop', 'Danger Zone', 'Read a book', 'Do you not?', 'Can't or won't?']
\n          }")
q7 = Mod.create(name: '1', question: "Translate this into your own words:
\n  SELECT * FROM artists WHERE ArtistName='Kid Cudi'")
q8 = Mod.create(name: '1', question: "Using Netflix as a model.. As a user you should be able to leave a Review on a Movie. Would a Review be a property of a Movie, a User or it's own table?")
q9 = Mod.create(name: '1', question: "What is 'persistence' in programming?")
q10 = Mod.create(name: '1', question: "What is BASH?")


a1 = Answer.create(answer: "stuff.select { |a| a.start_with?('a') }", mod_id: q1.id)
a2 = Answer.create(answer: "sentence.split.count", mod_id: q2.id)
a3 = Answer.create(answer: "rude_greeting", mod_id: q3.id)
a4 = Answer.create(answer: "Type Error", mod_id: q4.id)
a5 = Answer.create(answer: 'foods.select {|k,v| puts k if v == "delicious"}', mod_id: q4.id)
a6 = Answer.create(answer: 'archer["Quotes"].sample', mod_id: q4.id)
a7 = Answer.create(answer: 'Select all from the artist table where the artist name equals Kid Cudi.', mod_id: q4.id)
a8 = Answer.create(answer: 'Own Table', mod_id: q4.id)
a9 = Answer.create(answer: 'the characteristic that data outlives the process that created it.', mod_id: q4.id)
a10 = Answer.create(answer: 'a shell for interpreting commands and providing feedback', mod_id: q4.id)



jarvis = StudyBuddy.create(name: "Jarvis", mod_id: q1.id, student_id: blake.id, quiz_score: 5)
# friday = StudyBuddy.create(name: "Friday", mod_id: mod2.id, student_id: alex.id)
# cortona = StudyBuddy.create(name: "Cortona", mod_id: mod3.id, student_id: swafford.id)
# frank = StudyBuddy.create(name: "Frank", mod_id: mod4.id, student_id: chris_k.id)
# hal = StudyBuddy.create(name: "Hal", mod_id: mod5.id, student_id: maryam.id)

monday_notes = Note.create(subject: "arrays", title: "array definition", date: "01/01/2019", content: "Strings are a way to hold any 0-9, A-Z, and !@#$%^&*", study_buddy_id: jarvis.id)
tuesday_notes = Note.create(subject: "strings", title: "string definition", date: "01/01/2019", content: "Strings are a way to hold any 0-9, A-Z, and !@#$%^*", study_buddy_id: jarvis.id)

method_ex1 = Note.create(subject: "string methods", title: ".split definition", date: "01/03/2019", content: ".split seperates your string into smaller parts", study_buddy_id: jarvis.id)
method_ex2 = Note.create(subject: "array methods", title: ".join definition", date: "01/03/2019", content: ".join brings together parts", study_buddy_id: jarvis.id)
