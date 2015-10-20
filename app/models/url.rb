class Url < ActiveRecord::Base
  def shorten
    Url.create()

    alpha = (0...20).map { ("a".."z").to_a[rand(26)]}.join
    p "http://"+alpha
  end


	# This is Sinatra! Remember to create a migration!
end
