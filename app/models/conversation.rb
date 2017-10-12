class Conversation < ActiveRecord::Base
  belongs_to :host, :foreign_key => :host_id, class_name: 'User'
  belongs_to :guest, :foreign_key => :guest_id, class_name: 'User'
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :host_id, :scope => :guest_id

  scope :between, -> (host_id,guest_id) do 
    where("(conversations.host_id = ? AND conversations.guest_id = ?) OR (conversations.host_id = ? AND conversations.guest_id = ?)", host_id, guest_id, guest_id, host_id)
  end

end