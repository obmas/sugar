class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.belongs_to :user
      t.belongs_to :notifiable, :polymorphic => true
      t.belongs_to :notifier, :polymorphic => true
      t.string :kind, :value
      t.boolean :seen, :null => false, :default => false
      t.timestamps
    end
    change_table :notifications do |t|
      t.index [:user_id, :seen]
      t.index [:user_id, :notifiable_type, :notifiable_id, :seen, :kind], :name => 'index_notification_by_user_and_kind'
    end
  end
end
