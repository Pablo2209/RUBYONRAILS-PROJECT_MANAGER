class Project < ApplicationRecord
    /validar los campos/ 
    validates :name, :description, :start_date, :end_date, presence: true

    /Eliminar cierta parabra que no queramos/
    /before_save :replace_word

    def replace_word
        self.content = self.content.gsub "spoiler", " "
    end/
end
