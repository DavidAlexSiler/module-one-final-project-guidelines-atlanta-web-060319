require 'pry'
class CLI

    #``````````````RUN``````````````

    def run
        
        @prompt = TTY::Prompt.new
        @pastel = Pastel.new
        @student = nil
        # @mod = Mod.create(name: "Mod 1", question: "what is my name")
        
        
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
                @mod = Mod.create(name: "Mod 1", question: "What is your name?")
            else 
                puts "ACCESS DENIED\nYou currently only have access to Mod 1"
                mod_choice = @prompt.enum_select("Select one:", mod_choices)
            end
            `reset`
            make_buddy
        end

        # def this_user_mod
        #     make_a_mod = Mod.create(name: "Mod 1", question: "What is your name?")
        # end

        def make_buddy
        puts "Now give your StudyBuddy a name:"
        this_sb_name = gets.chomp
        @studybuddy = StudyBuddy.create(name: "#{this_sb_name}", mod_id: @mod.id, student_id: @student.id, quiz_score: nil)
        end
        # def get_user_id
        #     this_user_id = this_user.map do |u|
        #         u.id
        #     end
        #     this_user_id
        # end

        # def get_mod_id
        #     this_mod_id = mod_choice.map do |e|
        #         e.id
        #     end
        #     this_mod_id
        # end

        def buddy_setup
            puts "Now give your StudyBuddy a name:"
            this_sb_name = gets.chomp
            binding.pry
            this_user_study_buddy = StudyBuddy.create(name: "#{this_sb_name}", mod_id: this_user_mod.id, student_id: username.id, quiz_score: nil)
        end

            # while mod_choice == gets.chomp
            #     case mod_choice 
            #     when mod_choice == mod_choices[0]
            #         #APPLAUSE
            #         puts "Welcome to Mod 1, you are gonna be great!"
            #         break
            #     else puts "ACCESS DENIED\nYou currently only have access to Mod 1"
            #         mod_choice
            #     end
            # end
            
        
        
        # if Student.all.includes("this_user.name")
            # puts "Welcome back #{@student.name}! \n\n Loading up your study buddy now."
        # else
        #     puts "Thank you for choosing StuddyBuddy! \n We will now have you set up your new Buddy."
        #     @student = Student.create(name: "#{}")
        #     sleep 1
        #     `reset`
        #     new_bud
        #     def new_bud
        #     end
        # end
    
        
    #     puts "Hello #{@student.name}! I am your new StuddyBuddy. \n\nWould you give me a name?"
    #     buddy_name = gets.chomp
    #     StudyBuddy.create(name: "#{buddy_name}", mod_id: @mod.id, student_id: @student.id, quiz_score: nil)
    #     #loading animation
    #     sleep 1
    #     `reset`
    #     puts "\nWARNING WARNING DOES NOT COMPUTE\nDOOMSDAY KEYWORD ENTERED\nSELF DISTRUCT ACTIVATED IN"
    #     puts "29"
    #     sleep 2
    #     puts "28"
    #     sleep 2
    #     puts "27"
    #     sleep 2
    #     puts "26"
    #     sleep 2
        
    #     puts "I'm just kidding! #{buddy_name} isn't my Doomsday Keyword, it's 'brit'! \n\n
    #     Just DO NOT under ANY circumstances enter the keyword 'brit'. REALLY!"
    #     sleep 5
    #     `reset`
    # end

            # def introduction
            #     puts "Thank you #{@student.name}! \n\nI like my new name, I always thought I looked like a #{@studybuddy.name}."
            # end

            # introduction
            
        
        
    


    

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
        elsif choice == choices[4]
            puts "Thanks for using your StudyBuddy!.\n\n"
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
        Note.create(subject: "#{subject}", title: "#{title}", date: "#{date}", content: "#{content}", study_buddy_id: @studybuddy.id)
    end

        

end