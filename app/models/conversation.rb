class Conversation < ActiveRecord::Base
  belongs_to :host, :foreign_key => :host, class_name: 'User'
  belongs_to :guest, :foreign_key => :guest, class_name: 'User'

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :host, :scope => :guest

  scope :between, -> (host,guest) do 
    where("(conversations.host = ? AND conversations.guest = ?) OR (conversations.host = ? AND conversations.guest = ?)", host, guest, guest, host)
  end

end