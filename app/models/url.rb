class Url < ActiveRecord::Base
  before_create :shorten

  def shorten
    self.shortened_url = (0...20).map { ("a".."z").to_a[rand(26)]}.join
  end
end
