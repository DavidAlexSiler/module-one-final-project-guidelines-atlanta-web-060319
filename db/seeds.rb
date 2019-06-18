Student.destroy_all
StudyBuddy.destroy_all
Mod.destroy_all

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

jarvis = StudyBuddy.create(name: "Jarvis")
friday = StudyBuddy.create(name: "Friday")
cortona = StudyBuddy.create(name: "Cortona")
jarvis = StudyBuddy.create(name: "Jarvis")
hal = StudyBuddy.create(name: "Hal")
