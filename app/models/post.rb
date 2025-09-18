class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :url, format: { with: URI::regexp(%w[http https]) }, allow_blank: true
  validate :body_or_url_present

  belongs_to :user
  has_many :comments, dependent: :destroy

  private

  def body_or_url_present
    if body.blank? && url.blank?
      errors.add(:base, "Post must have either body or URL")
    end
  end
end
