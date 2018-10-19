# ![CI status](http://oi68.tinypic.com/ngf2uo.jpg)    
#  The Hacking Project
<br/>
<h2>Semaine 3 - Jeudi 18 octobre : Envoi d'emails en masse</h2>

<body>

<h1>Introduction</h1>

<h5>
 Étapes à suivre:
 </h5>
<ol>
 <li>Faites un git clone: <code>git clone https://github.com/mothinx/spammer_saphyr.git</code></li>
 <li>Installez nos gems: <code>bundle install</code></li>
 <li>Faites un `.env` de vos clés comme ci-dessous: <code>touch .env</code></li>

</ol>

```

TWITTER_API_KEY = "YOUR API KEY"
TWITTER_API_SECRET = "YOUR API SECRET"
TWITTER_ACCESS_TOKEN = "YOUR ACCESS TOKEN"
TWITTER_ACCESS_SECRET = "YOUR ACCES SECRET"

```

  <h2>Team</h2>

 <p>Hey guys ! Nous sommes La Team SaphyR, composée de : </p>
<ul>
<li>Julien aka Mothinx <a href="https://github.com/mothinx"><code>clic</code></a><br/></li>
<li>Camilo aka Rumkox <a href="https://github.com/rumkox"><code>clic</code></a><br/></li>
<li>Christine aka Zybouric <a href="https://github.com/Zybouric"><code>clic</code></a><br/></li>
<li>Dan aka Gdanj <a href="https://github.com/gdanj"><code>clic</code></a><br/></li>
<li>Asvinie aka Asvinie057 <a href="https://github.com/asvinie057"><code>clic</code></a><br/></li>
<li>Antoine aka Tonoutt  <a href="https://github.com/tonoutt"><code>clic</code></a><br/></li>
<li>Kathleen aka Funkykath <a href="https://github.com/Funkykath"><code>clic</code></a><br/></li>
</ul>
<p>
Grace à notre programme vous allez pouvoir envoyer un mail et un tweet à toutes les communes d’un département pour les prévenir de votre présence.
 </p>


<h2>Roadmap</h2>

```
ultimate_townhall
├── .gitignore
        (permet de cacher des fichiers)
├── .env
        (pas sur le répo GitHub, bien entendu :clin_d'œil:)
├── README.md
        (sert de description pour notre repo)
├── Gemfile
        (est un fichier que l’on créée dans lequel on liste les gems utilisés et leurs versions)
├── Gemfile.lock
        (est le fichier où Bundler enregistre les versions exactes installées.)
├── app.rb
├── db
│   └── temp.json
        (est un fichier type excel, mais en format texte)
└── lib
   ├── app
   │   ├── scrapper_exos.rb
        (sert à récupérer les adresses mails des différents départements)
   │   ├── mailer.rb
        (sert à récupérer le fichier .json, pour ensuite récupérer les données et les envoyer par mail)
   │   ├── townhalls_follower.rb
   │   └── townhalls_follower.rb
            (récupération des comptes twitter dans le fichier db et envoie d’un tweet de rappelle pour que la mairie check le mail)
   └── views
            aperçu du résultat
       ├── done.rb
       └── index.rb
```

<h3> How it works? </h3>

<p>Nous avons récupérés les adresses mails et twitter sur le site suivant :</p> <a href="http://www.annuaire-des-mairies.com/
"><code>clic</code></a>
<p>

Les gems suivants nous ont été d'une utilité pour scrapper les adresses emails des villes des départements du 04, 85 et 91:

`GEM ‘Nokogiri'`<br/>
`GEM ‘Rubygems’`<br/>
`GEM ‘Open-uri’`

A partir de cela nous avons créés un fichier Json qui contient toutes les informations (nom de la ville, adresse mail et handèle twitter)<br/>
`GEM ‘json’`<br/>
`GEM ‘csv’`

Ensuite nous avons mis en place un envoie de mail vers toutes les communes des départements sélectionnés.
Nous avons utilisé le gem suivant:

`GEM ‘Mail’`

On a créés un bot twitter pour envoyer un tweet à l'aide du gem:

`GEM ‘Twitter’`
</p>

<h5>Enjoy the game!</h5>

</body>

# TEAM Saphyr
