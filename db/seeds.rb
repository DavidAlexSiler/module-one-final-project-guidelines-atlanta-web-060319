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

q1 = Mod.create(name: 'week one', question: "Whats 2+2?")
q2 = Mod.create(name: 'week one', question: "Whats 2+22?")
q3 = Mod.create(name: 'week one', question: "Whats 2+222?")
q4 = Mod.create(name: 'week one', question: "Whats 2+2222?")

a1 = Answer.create(answer: '4', mod_id: q1.id)
a2 = Answer.create(answer: '24', mod_id: q2.id)
a3 = Answer.create(answer: '224', mod_id: q3.id)
a4 = Answer.create(answer: '2224', mod_id: q4.id)


jarvis = StudyBuddy.create(name: "Jarvis", mod_id: q1.id, student_id: blake.id, quiz_score: 5)
# friday = StudyBuddy.create(name: "Friday", mod_id: mod2.id, student_id: alex.id)
# cortona = StudyBuddy.create(name: "Cortona", mod_id: mod3.id, student_id: swafford.id)
# frank = StudyBuddy.create(name: "Frank", mod_id: mod4.id, student_id: chris_k.id)
# hal = StudyBuddy.create(name: "Hal", mod_id: mod5.id, student_id: maryam.id)

monday_notes = Note.create(subject: "arrays", title: "array definition", date: "01/01/2019", content: "Strings are a way to hold any 0-9, A-Z, and !@#$%^&*", study_buddy_id: jarvis.id)
tuesday_notes = Note.create(subject: "strings", title: "string definition", date: "01/01/2019", content: "Strings are a way to hold any 0-9, A-Z, and !@#$%^*", study_buddy_id: jarvis.id)

method_ex1 = Note.create(subject: "string methods", title: ".split definition", date: "01/03/2019", content: ".split seperates your string into smaller parts", study_buddy_id: jarvis.id)
method_ex2 = Note.create(subject: "array methods", title: ".join definition", date: "01/03/2019", content: ".join brings together parts", study_buddy_id: jarvis.id)
