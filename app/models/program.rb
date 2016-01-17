class Program < ActiveRecord::Base
  has_and_belongs_to_many :flags
  has_and_belongs_to_many :tracks
  has_and_belongs_to_many :people
  belongs_to :conference
end
