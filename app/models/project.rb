class Project < ApplicationRecord
    /validar los campos/ 
    validates :name, :description, :estadopr, presence: true

    /Eliminar cierta parabra que no queramos/
    /before_save :replace_word

    def replace_word
        self.content = self.content.gsub "spoiler", " "
    end/
end
