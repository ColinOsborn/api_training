require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    let(:article) { build(:article) }

    it 'tests article object is valid' do
      expect(article.title).to eq('Test Title')
      expect(article.content).to eq('Test content')
      expect(article.slug).to eq('test slug')
      expect(article).to be_valid
    end

    it 'has an invalid title' do
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end
  end
end
