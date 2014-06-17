class Character < ActiveRecord::Base
  belongs_to :television_show

  validates_presence_of :character_name
  validates :character_name, uniqueness: true
  validates_presence_of :actor_name
end
