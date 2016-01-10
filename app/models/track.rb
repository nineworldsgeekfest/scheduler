class Track < ActiveRecord::Base
  has_and_belongs_to_many :programs
  belongs_to :conference
end
