class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actor_list = []
    characters.each do |char|
      actor_list << char.actor.full_name
    end
    actor_list
  end

end