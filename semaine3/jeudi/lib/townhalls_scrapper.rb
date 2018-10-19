require 'bundler'
Bundler.require

class Scrapper

  def get_the_town_list_85 #les 3 premiers méthodes permettres de recupérer les liens http toutes communes
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/85/"))
    townlist = []
    bc = "http://annuaire-des-mairies.com/85/"
    page.xpath('/html/body/pre/a').each do |ls|
      townlist << bc + ls["href"] #on ajoute le sufixe de chaque commune puis on stock les liens obtenue dans un tableau 
    end
    return townlist[5..-1] #on retir les liens qui ne sons pas que commune 
  end

  def get_the_town_list_91
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/91/"))
    town = []
    c = "http://annuaire-des-mairies.com/91/"
    page.xpath('/html/body/pre/a').each do |td|
      town << c + td["href"]
    end
    return town[5..-1]
  end

  def get_the_town_list_04
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/04/"))
    townhall = []
    c = "http://annuaire-des-mairies.com/04/"
    page.xpath('/html/body/pre/a').each do |td|
      townhall << c + td["href"]
    end
    return townhall[5..-1]
  end

  def tabville #cette methode un tableau additionnant les lien http de chaque ville
    tab_city = get_the_town_list_91 + get_the_town_list_04 + get_the_town_list_85

    return tab_city
  end

  def get_the_email_of_a_townhal_from_its_webpage
    ad_web = tabville #on recupere les adresses web avec ad_web
    tabl = []
    m = []
    ad_web.each do |w|
      page = Nokogiri::HTML(open(w))
      page.xpath('//td').each do |v| #pour chaque page web des villes on stock dans un hash nom => {:mail => '', :departemen => ''}
        if v.text.include?("@")
          m = page.xpath('//h1/small').text.gsub("Commune de ", "")
          tabl << {m => {:mail=>v.text, :dept=>page.xpath('/html/body/div/main/section[4]/div/table/tbody/tr[1]/td[2]').text}}
          puts m => {:mail=>v.text, :dept=>page.xpath('/html/body/div/main/section[4]/div/table/tbody/tr[1]/td[2]').text}
        end
      end
    end
    File.write("./db/temp.json",tabl.to_json) #le ficher json a partir du tabl possédant les hash de chaque ville.
  end

  def json_to_hash(file = './db/temp.json')
    data = File.read(file)
    puts JSON.parse(data)
  end

  def perform
    get_the_email_of_a_townhal_from_its_webpage
  end
end
