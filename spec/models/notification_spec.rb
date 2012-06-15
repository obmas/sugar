require 'spec_helper'

describe Notification do
  it { should belong_to :user }
  it { should belong_to :notifiable }
  it { should belong_to :notifier }

  it { should validate_presence_of(:user_id)}
  it { should validate_presence_of(:notifiable_id)}
  it { should validate_presence_of(:notifiable_type)}
  it { should validate_presence_of(:kind)}
end
