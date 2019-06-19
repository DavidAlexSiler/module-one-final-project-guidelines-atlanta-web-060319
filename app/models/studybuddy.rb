class StudyBuddy < ActiveRecord::Base
    belongs_to :student
    belongs_to :module
    has_many :notes

def find_by_subject(subject)
  the_note = Note.all.select do |n|
    n.subject == subject
  end
  the_note.map do |m|
    m.title
  end
end

def find_by_title(title)
the_notes = Note.all.select do |n|
  n.title == title
  end
  the_notes
end

def destroy_by_title(title)
# the_notes = Note.all.select do |n|
#   n.title == title
#   end
#   the_notes.delete_all
Note.where(study_buddy_id: self.id).where(title: title).delete_all
end

  def find_by_date(date)
    the_date_note = Note.all.select do |d|
      d.date == date
    end
    the_date_note
  end

  def create_note(subject, title, date, content)
    Note.create(subject: subject, title: title, date: date, content: content, study_buddy_id: self.id)
  end
end
