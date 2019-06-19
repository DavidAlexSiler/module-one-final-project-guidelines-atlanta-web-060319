class CLI
    def run

    @prompt = TTY::Prompt.new
    @pastel = Pastel.new
    @student = nil

    
    
    login
    greeting
    main_menu
    end

    def login
        puts ("Hi, I'm your StudyBuddy!\n\nWhat is your name?\n\n")
        name = gets.chomp
        @student = Student.find_or_create_by(name: name)
    end

    def greeting
        `reset`
        puts ("Hey #{@student.name}, what are we doing today?")
    end

    def main_menu
        choices = ['Make a note', 'Read old notes', 'Delete a note', 'Log out']
        choice = @prompt.enum_select("", choices)

    if choice == choices[0]
        make_note
    elsif choice == choices[1]
        read_note
    elsif choice == choices[2]
        delete_note
    elsif choice == choices[3]
        puts "Thanks for using your StudyBuddy!.\n\n"
        exit
        end
    end

end