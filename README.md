A partir d'un [jeu de données](dataset.json) de 5000 offres (import Mongo, format JSON), import des données pour initialiser la base de données PosgreSQL du projet. Le script de seeding est une tâche Rake.

Home : affiche les dernières offres publiées et propose un moteur de rechercher permettant de consulter les offres répondant aux critères de recherche (pour l'instant : job title, job summary et localisations).

To do :

- interface d'administration pour poster et éditer une offre
- recherche par d'autres critères (work type...)
- formatter certaines données (salaires : convertir en Float, date de début et de fin, convertir en Datetime) pour permettre un traitement statistique et des recherches supplémentaires : pas eu le temps de le faire lors de l'import initial, priorité donnée à l'initialisation rapide du projet.

### Déploiement

- http://all-jobs-one-place.heroku-app.com
