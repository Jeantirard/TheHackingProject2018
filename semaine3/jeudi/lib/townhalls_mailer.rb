require 'bundler'
Bundler.require


class Mailer

	attr_accessor :town_email, :town_name

	def spam1
    a = JSON.parse(File.read('./db/temp.json')) #on recupere le json et on la stock dans a
    @town_email = []
    @town_name = []
    a.each do |i| #on extrais les données pour les stocker dans un tableau nom de ville et un mail
      i.each do |k,v|
        @town_name << k
        @town_email << v["mail"]
      end
    end
    @counter = @town_email.length #le total des villes est stocké dans une variable
    return @town_email, @town_name
  end

	def mailt
		i = 0 # on cree un compte i qui permettra d'avancer dans les nom et mail
    until i > @counter #on envoie les mails jusqu'a arrivé au total de nos tableaux

    options = {
			:address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => 'your.host.name',
      :user_name            => 'saphyr.team.thp@gmail.com',
      :password             => '', #cette methode passe par le mon de passe de votre email
      :authentication       => 'plain',
      :enable_starttls_auto => true}

    Mail.defaults do
      delivery_method :smtp, options
    end
		Mail.new(
  		:to      => "#{@town_email[i]}", #on passe a l'adresse suivante
  		:from    => 'saphyr.team.thp@gmail.com',
  		:subject => 'testing sendmail',
  		:body    => "hello #{@town_name[i]} !
									Oui vas-y Oui-Oui (en chœur… Oui-Oui)
									Tu souris à la vie
									En avant Oui-Oui (en chœur… Oui-Oui)
									Vaillant et gentil
									Oui vas-y Oui-Oui (en chœur… Oui-Oui)
									Tu as mille amis
									Au beau pays des jouets oui
									Tu chantes et tu ries
									Oui vas-y Oui-Oui").deliver!
    i+=1 #on incrément le compteur 
  end
end

	def perform
		spam1
    mailt
	end
end
