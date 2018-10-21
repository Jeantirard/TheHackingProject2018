
=begin
Permet de dire à Ruby "hey, fais un require sur toutes les gems de mon Gemfile stp, comme ça ça m'évitera de les appeler tous les deux fichiers". 
Une commande très pratique pour éviter les require à base de gem à tout bous de champ. 
Seul un bon vieux bundle install suffira.
=end
require 'bundler'
Bundler.require


=begin
En faisant ceci, tu dis à Ruby "hey bro 
Tous les fichiers dans le dossier ./../lib tu les ajoute au PATH normal et comme ça j'aurais juste à faire require "classe" pour les appeler. 
Ok ? Cool merci
=end
$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'

Router.new.perform