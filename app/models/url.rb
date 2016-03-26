class Url < ActiveRecord::Base
  validates :url, format: { with: URI::regexp }

  def self.find_or_create_unique(url)
    find_by(url: url) ||
    create(key: RandomKey.generate, url: url)
  rescue ActiveRecord::RecordNotUnique
    find_or_create_unique(url)
  end
end
