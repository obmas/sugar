class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :notifiable, :polymorphic => true
  belongs_to :notifier, :polymorphic => true
  validates :user_id, :notifiable_id, :notifiable_type, :kind, :presence => true
end
