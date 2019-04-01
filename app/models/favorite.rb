class Favorite < ApplicationRecord
  belongs_to :post_id
  belongs_to :comment_id
  belongs_to :user_id
end
