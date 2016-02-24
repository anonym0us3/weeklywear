class Tshirt < ActiveRecord::Base

  belongs_to :user
  has_many :votes, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missingtee.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # Sets default sort order to be Descending by created_at time/date (aka, newest-to-oldest)
  default_scope { order("created_at DESC") }

end
