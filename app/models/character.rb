# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  has_many(:movie, class_name: "Movie", foreign_key: "id", primary_key: "movie_id" )

  has_many(:actor, class_name: "Actor", foreign_key: "id", primary_key: "actor_id" )
end
