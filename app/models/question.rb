class Question < ApplicationRecord
  belongs_to :article, optional: true
  has_many :answers, dependent: :destroy
end
