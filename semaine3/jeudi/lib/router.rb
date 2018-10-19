require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def display_header
    puts <<-'EOF'

  ___  ___ ___    _   ___ ___ ___ ___
 / __|/ __| _ \  /_\ | _ \ _ \ __| _ \
 \__ \ (__|   / / _ \|  _/  _/ _||   /
 |___/\___|_|_\/_/ \_\_| |_| |___|_|_\


  EOF
  end

  # display menu for user
  def display_menu
    puts "1. Scrapp townhalls' emails from web"
    puts "2. Send massive emails to townhalls"
    puts "3. Follow towhalls on Twitter"
    puts "4. Print me the JSON"
    puts "5. Exit program"
  end

  def perform

    while true
      display_header
      display_menu
      user_choice = gets.chomp.to_i
      case user_choice
      when 1
        @controller.get_emails_by_scrapping
      when 2
        @controller.send_emails
      when 3
        @controller.play_twitter_bot
      when 5
        puts "BYE BYE"
        break
      when 4
        @controller.print_json
      end
    end
  end
end
