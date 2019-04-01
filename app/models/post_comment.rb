class PostComment < ApplicationRecord
  belongs_to :user_id
  belongs_to :tame_id
end
