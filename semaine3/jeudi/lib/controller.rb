require 'townhalls_follower'
require 'townhalls_scrapper'
require 'townhalls_mailer'

class Controller

  # Launch Twitter BOT
  def play_twitter_bot
    Townhalls_follower.new.perform
  end

  # Launch Scrappings
  def get_emails_by_scrapping
    Scrapper.new.perform
  end

  def send_emails
    Mailer.new.perform
  end

  def print_json
    puts Scrapper.new.json_to_hash
  end
end
