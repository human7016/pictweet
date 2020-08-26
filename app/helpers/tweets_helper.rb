module TweetsHelper
  def tweet_lists(tweets)
    html = ''
    tweets.each do |tweeted|
      html += render(partial:'tweet', locals:{tweeted: tweeted}) 
    end
    #HTMLを正常に表示するためのメソッドraw()
    return raw(html)
  end
end
