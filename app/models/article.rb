class Article < ActiveRecord::Base
  validates :title, presence: true,
                      length: {minimum: 5,
                               maximum: 20}
  validates :text, presence: true,
                      length: {maximum: 100}
end
