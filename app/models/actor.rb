class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name, self.last_name].join(" ")
  end

  def list_roles
    roles = []
    self.characters.each do |char|
      roles << [char.name, char.show.name].join(" - ")
    end
    roles
  end
end