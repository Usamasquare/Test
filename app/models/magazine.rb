class Magazine < ApplicationRecord
  belongs_to :article
  belongs_to :reader
end
