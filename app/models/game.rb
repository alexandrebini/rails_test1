class Game < ActiveRecord::Base
  extend FriendlyId

  # attributes
  friendly_id :name, use: :slugged

  # validations
  validates_presence_of :name, :description, :slug
  validates_attachment :source, presence: true,
    content_type: { content_type: 'application/x-shockwave-flash' }
  validates_attachment :thumb, presence: true,
    content_type: { content_type: 'image/png' }

  has_attached_file :source,
    path: ':rails_root/public/system/:attachment/:id/:style/:filename',
    url: '/system/:attachment/:id/:style/:filename'

  has_attached_file :thumb,
    path: ':rails_root/public/system/:attachment/:id/:style/:filename',
    url: '/system/:attachment/:id/:style/:filename'
end