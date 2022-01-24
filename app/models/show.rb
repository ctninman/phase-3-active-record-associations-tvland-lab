class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    all_actors = []
    self.characters.each do |character|
      all_actors << character.actor.first_name + " " + character.actor.last_name
    end
    all_actors
  end

end