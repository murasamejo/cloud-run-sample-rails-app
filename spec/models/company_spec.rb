require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:sample_company) { create(:company) }

  it 'corp_number が期待どおりであること' do
    expect(sample_company.corp_number).to eq 77777
  end

  it 'name が期待どおりであること' do
    expect(sample_company.name).to eq 'Example Company'
  end

  it 'prefecture が期待どおりであること' do
    expect(sample_company.prefecture).to eq 'Chiba'
  end
end
