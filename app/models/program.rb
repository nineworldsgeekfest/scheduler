class Program < ActiveRecord::Base
  belongs_to :flag
  belongs_to :track
  belongs_to :person
  belongs_to :conference
end
