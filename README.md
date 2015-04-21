* A partir d'un [jeu de données](dataset.json) de 5000 offres (import Mongo, format JSON), import des données pour initialiser la base de données PostgreSQL du projet. Le script de seeding est une tâche Rake, ce qui me semblait plus apprioprié (et plus amusant aussi) dans un contexte Rails : `rake job_search:import_json`.

* Home page : affiche les dernières offres publiées et propose un moteur de recherche permettant de consulter toutes les offres répondant aux critères de recherche (pour l'instant : titre (job_title), description (job_summary) et zone géographique (location)). Choix de Full Text Search de Postgresql pour gérer les variations de texte dans les recherches (pluriels, typos...).
La fonction de recherche est largement inspiré de mes contributions pour le projet [Simplonline](https://github.com/simplonco/simplonline) : https://github.com/simplonco/simplonline/commits/dev

To do :

* interface d'administration pour poster et éditer une offre
* recherche par autres critères (work type...)
* re-formater certaines données (salaires : convertir en Float, date de début et de fin : convertir en Datetime) pour permettre un traitement statistique et des recherches supplémentaires : pas eu le temps de le faire lors de l'import initial, priorité donnée à l'initialisation rapide du projet.

### Déploiement

A tester sur : http://all-jobs-one-place.herokuapp.com

### Installation

Cloner le projet :

`git clone https://github.com/giniouxe/job_search.git`

Installer les gems :

`bundle install`

Créer le role dans Postgresql :

```
sudo su postgres
psql
create role job_search with createdb login password 'job_search';
\dgh
```

`Crtl + D` deux fois pour sortir.

Initialisation de la base de données :

```
bundle exec rake db:create
bundle exec rake db:migrate
```

Seeding de la base de données à partir du fichier `dataset.json` :

`bundle exec rake job_search:import_json`

Lancement du serveur :

`rails s`

Pour lancer les tests :

`bundle exec rake test`
