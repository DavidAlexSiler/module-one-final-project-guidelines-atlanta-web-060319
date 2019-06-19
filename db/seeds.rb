require 'pry'

Student.destroy_all
StudyBuddy.destroy_all
Mod.destroy_all
Note.destroy_all

blake = Student.create(name: "Blake Stoner")
alex = Student.create(name: "Alex Siler")
swafford = Student.create(name: "Christopher Swofford")
chris_k = Student.create(name: "Christopher Kalfas")
maryam = Student.create(name: "Maryam Joseph")

mod1 = Mod.create(name: "Module 1")
mod2 = Mod.create(name: "Module 2")
mod3 = Mod.create(name: "Module 3")
mod4 = Mod.create(name: "Module 4")
mod5 = Mod.create(name: "Module 5")



jarvis = StudyBuddy.create(name: "Jarvis", mod_id: mod1.id, student_id: blake.id, quiz_score: 5)
friday = StudyBuddy.create(name: "Friday", mod_id: mod2.id, student_id: alex.id)
cortona = StudyBuddy.create(name: "Cortona", mod_id: mod3.id, student_id: swafford.id)
frank = StudyBuddy.create(name: "Frank", mod_id: mod4.id, student_id: chris_k.id)
hal = StudyBuddy.create(name: "Hal", mod_id: mod5.id, student_id: maryam.id)

monday_notes = Note.create(subject: "arrays", title: "array definition", date: "01/01/2019", content: "Strings are a way to hold any 0-9, A-Z, and !@#$%^&*", study_buddy_id: jarvis.id)
tuesday_notes = Note.create(subject: "strings", title: "string definition", date: "01/01/2019", content: "Strings are a way to hold any 0-9, A-Z, and !@#$%^*", study_buddy_id: jarvis.id)

method_ex1 = Note.create(subject: "string methods", title: ".split definition", date: "01/03/2019", content: ".split seperates your string into smaller parts", study_buddy_id: jarvis.id)
method_ex2 = Note.create(subject: "array methods", title: ".join definition", date: "01/03/2019", content: ".join brings together parts", study_buddy_id: jarvis.id)

#questions

q1 = Mod.create(name: "week 1", question: "What error, if any, will the following code raise? \n 'Blink' + 182", answer_id: answer.id)
a1 = Answert.create(answer: "Type Error", mod_id: mod.id)
