class Post < ApplicationRecord
  has_one :content_block, as: :content_blockable, touch: true
end
