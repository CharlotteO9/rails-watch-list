class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }
  # il est dans la list et il va checker qu'il n'y a pas deux fois le même film dans cette list
end
