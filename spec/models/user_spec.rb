require 'rails_helper'

RSpec.describe User, type: :model do
  let(:sample_user) { create(:user) }

  it 'name が期待どおりであること' do
    expect(sample_user.name).to eq 'Nobunaga Oda'
  end

  it 'email が期待どおりであること' do
    expect(sample_user.email).to eq 'noda@example.com'
  end

  it 'sex が期待どおりであること' do
    expect(sample_user.sex).to eq 'male'
  end

  it 'age が期待どおりであること' do
    expect(sample_user.age).to eq 50
  end
end
