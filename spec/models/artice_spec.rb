require 'rails_helper'

RSpec.describe Artice, type: :model do
  describe '#validations' do
  it 'should test that factry is valid' do 
    expect(build :artice).to be_valid
  end

  it 'should have title' do 
    artice = build :artice, title: ''
    expect(artice).not_to be_valid
    expect(artice.errors.messages[:title]).to include("can't be blank")  
  end

  # it 'should have not repeat  slug' do 
  #   artice =  FactoryBot.build :artice 
  #   artice_new =  FactoryBot.build :artice, slug: artice.slug 
  #   expect(artice_new).not_to be_valid  
  # end
  end

  describe '.recent' do
    it 'should gice new articles first' do 
      old_article = create :artice 
      new_article = create :artice 
      expect(described_class.recent).to eq([new_article, old_article])  
      old_article.update_column :created_at, Time.now
      expect(described_class.recent).to eq([old_article, new_article])  
    end
  end
end

