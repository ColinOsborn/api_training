FactoryBot.define do
  factory :article do
    title { 'Test Title' }
    content { 'a' * 50 }
    slug { 'test slug' }
  end
end
