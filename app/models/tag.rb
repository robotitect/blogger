class Tag < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings, dependent: :destroy

  def to_s
    name
  end
end
