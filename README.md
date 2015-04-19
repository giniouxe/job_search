# Mini-projet pour votre candidature chez JobTeaser

Dans le cadre de votre candidature chez JobTeaser, nous souhaitons pouvoir évaluer sur un cas concret votre façon de concevoir une application web et de la réaliser.

Pour cela, nous vous proposons de réaliser le mini-projet de développement décrit ci-dessous. Implémenter une solution pour ce projet devrait vous prendre environ 4-5 heures pour répondre aux différents objectifs de façon satisfaisante.

## Présentation du projet

### Principes

Veuillez organiser, architecturer, tester, documenter et déployer votre code comme s'il s'agissait d'un code de production. Une fois que vous avez terminé, envoyez-nous un lien vers le code source hébergé en ligne (par ex. sur Github ou Bitbucket).

### Spécifications fonctionnelles

Vous utiliserez [ce jeu de données](dataset.json) de 5000 offres pour initialiser la base de votre projet. Vous devrez ensuite construire une page de recherche permettant de consulter la liste des offres et de faire une recherche sur différents critères.

Vous devez répondre a minima aux besoins suivants :

- l'utilisateur doit pouvoir effectuer une recherche sur le titre, la description et la localisation géographique de l'offre,
- l'utilisateur doit pouvoir consulter l'ensemble des offres correspondant à sa recherche.

Vous êtes libre d'implémenter d'autres fonctionnalités utiles à l'utilisateur et le choix de l'UX/UI est complètement à votre initiative.

### Traitement du jeu de données

Le jeu de données JSON fourni est structuré ainsi :

- il s'agit d'un tableau de 200 pages,
- chaque page contient un tableau de 25 offres dans l'attribut `JobData`.

NB: Le script de _seeding_ que vous utiliserez pour alimenter votre base de données à partir de ce dataset doit être inclus au rendu de votre projet.

### Spécifications techniques

Votre implémentation doit respecter une architecture client/serveur. Le côté serveur (back-end) devra fournir les données permettant le fonctionnement de la partie front-end, par exemple via une API REST au format JSON.

Vous pouvez choisir parmi plusieurs approches pour résoudre ce problème :

- Principalement back-end, produisant une interface statique ou peu dynamique.
- Application front-end (JS client) + back-end / API REST JSON.

### Objectifs optionnels

Si vous voulez nous impressionner et ajouter la cerise sur le gâteau, voici quelques idées d'objectifs optionnels sur lesquels vous pouvez vous pencher :

- Un composant visuel de statistiques sur la page de liste / recherche des offres (soyez créatifs dans les statistiques que vous affichez !).
- Une interface d'administration pour l'édition des offres.
- Une interface front-end exceptionnelle !

### Technologie

Notre plateforme étant construite aujourd'hui exclusivement en Ruby avec le framework Ruby on Rails, il est indispensable pour nous d'évaluer vos compétences sur ce langage, ou votre capacité à vous y adapter rapidement. (Si vous n'êtes pas encore expérimenté en Ruby, nous en tiendrons compte dans l'évaluation de votre projet.)

- Vous devez utiliser Ruby pour développer votre composant back-end. Le choix d'un framework spécifique est libre.
- Vous pouvez utiliser la technologie de votre choix pour l'implémentation de la partie front-end.
- Vous êtes libre d'utiliser la technologie de votre choix pour le stockage des données si nécessaire, ainsi que tout autre composant technique qui vous semblerait adapté.

### Hébergement

Déployez votre projet afin que nous puissions y accéder et tester votre implémentation.

### Votre README

Utilisez le `README` pour :
- présenter l'objectif du projet,
- expliquer les choix que vous avez fait, tant pour les choix techniques que pour les priorités que vous avez appliqué dans votre implémentation parmi les différents critères que nous avons indiqué ci-dessous,
- le temps que vous avez pu accorder à ce projet,
- indiquer ce que vous auriez changé / ajouté à votre implémentation si vous aviez eu plus de temps.

### Comment évaluons-nous votre projet

Votre projet sera revu par au-moins 2 membres de notre équipe. Voici les critères sur lesquels nous évaluerons votre candidature :

- **Clarté** : Votre projet est-il bien documenté ? Est-il facile de comprendre ce qu'il fait et comment ?
- **Respect des objectifs** : Avez-vous bien respecté les spécifications fonctionnelles et techniques du projet ? Si ce n'est pas le cas, avez-vous bien expliqué dans votre `README` pourquoi ?
- **Qualité du code** : Le code est-il simple, facile à comprendre et bien documenté ? Y-a-t'il des défauts techniques majeurs ou des _codes smells_?
- **Tests** : Comment avez-vous testé votre code ? Les tests sont-ils suffisants ? Seront-ils faciles à faire évoluer si les spécifications fonctionnelles sont amenées à évoluer ?
- **Choix techniques & performance** : Vos choix techniques sont-ils adaptés au problème posé ? Vont-ils limiter ou favoriser la possibilité d'évolution de l'application, tant dans sa maintenabilité que dans sa scalabilité ? La performance du point de vue utilisateur est-elle satisfaisante ? La recherche au sein du volume d'offres fourni est-elle efficace ?
- **Design** : Quel soin avez-vous apporté au design de la partie front-end ?

Ces différents critères sont plus ou moins importants pour nous. Voici leur ordre d'importance :

Respect des objectifs > Qualité du code > Choix techniques & performance > Tests > Clarté > Design & Objectifs optionnels
