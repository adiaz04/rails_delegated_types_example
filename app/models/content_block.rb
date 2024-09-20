class ContentBlock < ApplicationRecord
  belongs_to :content_blockable, polymorphic: true
end
