# C'était mieux avant

Représentation graphique des avancées humaines sous forme de frise chronologique.
L'application liste des « assets » (avancées, phénomènes, époques) et les affiche sur
une timeline horizontale scrollable, de l'an 0 à nos jours, classée par décennie.

Projet Ruby on Rails (PostgreSQL, Hotwire, ViewComponent, RSpec).

## Démarrage

```bash
bundle install
bin/rails db:prepare      # crée la base, lance les migrations et les seeds
bin/dev                  # démarre le serveur + Tailwind (via Procfile.dev)
```

## Tests

```bash
bundle exec rspec
```

## Versions

- Ruby : 3.4.6 (voir `Gemfile` ; `.ruby-version` indique 3.2.3)
- Rails : 7.1.x
- Base de données : PostgreSQL

## Plan / Feuille de route

Le détail du plan vit dans [`plan.md`](./plan.md). Ne pas répéter le plan ici.

### 1. Feature principale : frise chronologique

1. Située sur `home > index.html.haml`
2. Itère sur `@assets` par ordre croissant (`:order`), de haut en bas
3. Graphique en barres : chaque barre est un asset sur l'ordonnée ; l'abscisse porte les années (start_year → end_year)
4. Années affichées en haut, divisées en décennies, de la plus récente à gauche à la plus ancienne à droite ; taille fixe par décennie ; frise jusqu'à l'an 0 (scroll horizontal nécessaire) ; overflow scroll sur x
5. Les barres sont calées sur la frise (scroll permet de consulter l'année de départ)
6. Hauteur des barres suffisante pour inclure du texte
7. Couleur de fond = `asset.color`
8. Les noms des avancées sont sur l'ordonnée et restent fixes au scroll
9. Rendu graphique et moderne

### 2. Mise à jour du graphique

1. Couleurs des assets via le thème (`#048A81 #06D6A0 #54C6EB #8A89C0 #CDA2AB`), avec validation d'inclusion dans le modèle
2. `#CDA2AB` (marron) réservé aux « mauvaises choses » (esclavage, lèpre…)
3. Commentaire de l'asset affiché dans la barre, en gris foncé
4. Le graphique peut être près du bord gauche, même sur grand écran
5. Réduction de la hauteur des barres (padding top/bottom)

### 3. Refactor de la vue

1. Extraire le calcul de position/taille des barres dans une classe répondant à `.left_pos` et `.bar_width`
2. Ajouter des specs pour cette classe
3. Extraire le dimensionnement global du graphique dans une classe dédiée au styling/sizing

### 4. Thème

Rendre la page futuriste, compacte, type « page de statistiques » : style, page, titre principal.

### 5. UX — marqueur de scroll

Petit triangle sur le `timeline-bars-container` pour les `timeline-bar` dont la position dépasse l'écran. Le triangle scrolle automatiquement vers le début de la barre, centrée horizontalement.

### 6. Responsive

Timeline plus compacte sur mobile :
- padding réduits
- décennies moins larges
- texte d'explication sous le titre repliable derrière un accordéon + bouton « en savoir plus » (mobile uniquement)
- nom des assets en colonne ≈ un tiers de l'écran

### 7. Commentaires sur les assets

- Modèle `Era` (`name`, `description`, `source`, `question` en string)
- Modèle `Comment` : jonction entre 1 `Asset` et 1 `Era`, avec `description`
- Foreign keys et index (index unique sur `[asset_id, era_id]`)
- Relations Active Record entre les modèles
- Colonne `type` sur `Asset` (enum : `progress`, `era`, `phenomenom`)
- Seeds : avancées humaines → `progress`, les autres → `phenomenom`

### 8. Mise à jour du README

- Mettre à jour `README.md` avec le plan
- Symlink `AGENTS.md` pointant vers le README

## Pistes futures

- Boutons de récap : « vivre à l'époque de Napoléon » => « vous aurez l'honneur de profiter de : … »
- Lien vers la source
- Publication sur les réseaux sociaux via l'IA
- Serveur MCP pour ajouter un asset directement par IA
