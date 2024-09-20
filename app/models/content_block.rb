class ContentBlock < ApplicationRecord
  delegated_type :content_blockable, types: %w[Post Image Video], dependent: :destroy
end
