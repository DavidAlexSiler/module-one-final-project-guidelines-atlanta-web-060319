require 'pry'
class CLI
    def run
        
        @prompt = TTY::Prompt.new
        @pastel = Pastel.new
        # @student = nil
        
        
        login
        command
        main_menu
    end

    def login
        #StudyBuddy inc logo
        puts ("Hello and welcome to the StudyBuddy loading terminal!\n\nAre you a returning user?\n\n")
        choices = ["YES", "NO"]
        choice = @prompt.enum_select("Select one:", choices)
        if choice == choices[0]
            puts "Please enter your username:"
            return_user = gets.chomp
            @student = Student.all.find {|a| a.name == return_user}
        elsif choice == choices[1]
            new_user_setup
        end
    end

        def new_user_setup
            puts "Create Login name: (this will be your username)"
            username = gets.chomp.downcase
            @student = Student.create(name: "#{username}")
            puts "Which Mod are you in?"
            mod_choices = ["Mod 1", "Mod 2", "Mod 3", "Mod 4", "Mod 5"]
            
            mod_choice = @prompt.enum_select("Select one:", mod_choices)
            if mod_choice == mod_choices[0]
                puts "Welcome to Mod 1, you are gonna be great!"
                @mod = Mod.create(name: "Mod 1", question: nil)
            else 
                puts "ACCESS DENIED\nYou currently only have access to Mod 1"
                mod_choice = @prompt.enum_select("Select one:", mod_choices)
            end
            `reset`
            make_buddy
        end

        

    def make_buddy
        puts "Now give your StudyBuddy a name:"
        this_sb_name = gets.chomp
        @studybuddy = StudyBuddy.create(name: "#{this_sb_name}", mod_id: @mod.id, student_id: @student.id, quiz_score: nil)
    end

    def command
        sleep 1
        # LOADING ANIMATION
        `reset`
        puts ("What are we doing today?")
    end

    def main_menu
        choices = ['Make a note', 'Read old notes', 'Delete a note', 'Take a Quiz', 'Log Out']
        choice = @prompt.enum_select("Select one:", choices)

        if choice == choices[0]
            make_note
        elsif choice == choices[1]
            read_note
        elsif choice == choices[2]
            delete_note
        elsif choice == choices[3]
            take_quiz
        elsif choice == choices[4]
            `reset`
            puts "Thanks for using your StudyBuddy!.\n\n"
            #animation
            sleep 3
            exit
        end
    end

    def make_note
        puts "Okay #{@student.name}, what is the subject of your post?\n"
        subject = gets.chomp
        puts "okay, now that we have the subject let's give it a title."
        title = gets.chomp
        puts "Last thing, whats today's date?\n(and let's input it like this MM/DD/YYYY)"
        date = gets.chomp
        sleep 2
        `reset`
        puts "subject: #{subject}\ntitle: #{title}\ndate: #{date}"
        puts "\n\nSay whatevers on your mind!"
        content = gets.chomp
        @studybuddy.create_note(subject: "#{subject}", title: "#{title}", date: "#{date}", content: "#{content}")
        sleep 1
        `reset`
        main_menu
    end

    def read_note
        puts "You can search for a note by its subject, title, or by date.\n\nWhat are you looking for?"
        choices = ['Subject', 'Title', 'Date', 'Exit']
        choice = @prompt.enum_select("Select one.", choices)
        if choice == choices[0]
            puts "Alright #{@student.name}, what subject?"
            sub_search = gets.chomp
            found = @studybuddy.notes.find_by_subject(sub_search)
            puts "Here are the contents of the note:\n\n Subject: #{sub_search}\n\n\n#{found.content}"
        elsif choice == choices[1]
            puts "Okay #{@student.name}, what title?"
            tit_search = gets.chomp
            found = @studybuddy.notes.find_by_title(tit_search)
            found.content
            puts "Here are the contents of the note:\n\n Subject: #{sub_search}\n\n\n#{found.content}"
        elsif choice == choices[2]
            puts "You got it #{@student.name}, what was the date? \n dont forget to/fo/rmat!"
            dat_search = gets.chomp
            found = @studybuddy.notes.find_by_date(dat_search)
            found.content
            puts "Here are the contents of the note:\n\n Subject: #{sub_search}\n\n\n#{found.content}"
        else
            main_menu
        end
    end
    
    # def counter
    #     quiz_score += 1
    # end

    def take_quiz
        ids = Mod.pluck(:id)
        random = Mod.find(ids.sample)
        random_answer = Answer.all.find {|a| a.mod_id == random.id}
        binding.pry
        choices = ['x', "#{random_answer.answer}", 'x', 'x']
        choice = @prompt.enum_select("#{random.question}", choices)
        if choice == choices[1]
            # counter
            puts "Correct!"
        else 
            puts "Sorry #{student}, thats not correct. \n\nThe correct answer was #{random_answer.answer}"
        end
    end
end