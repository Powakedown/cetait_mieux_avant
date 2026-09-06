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

Le détail du plan vit dans [`plan.md`](./plan.md).
Ne pas répéter le plan ici.


## Modèles (ActiveRecord)

```
Asset ──< Comment >── Era
```

- **Asset** : avancée ou phénomène. Colonnes : `name`, `comment`, `source`,
  `start_year` (string), `end_year` (string, `nil` = toujours d'actualité),
  `order` (tri vertical), `color` (hex thème, validé par inclusion),
  `public`, `validation`, `type` (enum : `progress` / `phenomenom`).
  `self.inheritance_column = nil` pour réutiliser la colonne `type` comme enum.
- **Era** : époque historique. Colonnes : `name`, `description`, `source`,
  `question`, `start_year` (date), `end_year` (date).
- **Comment** : jonction Asset ↔ Era avec une `description` contextuelle
  (ce que cet asset représente dans cette ère). Contrainte d'unicité
  `(asset_id, era_id)`.

Les années sont stockées en string côté Asset (pour gérer les valeurs
négatives comme `-2000` et les `nil`) et en date côté Era.

## Classes de présentation (plain Ruby, hors ActiveRecord)

- **TimelineGraphic** : calcule le dimensionnement global de la frise.
  `MAX_DECADE` = décennie courante arrondie au-dessus.Expose `decades_count`,
  `min_width`, `asset_bars`.
- **AssetBar** : wrap un Asset et calcule le positionnement en pixels de sa
  barre (`left_pos`, `bar_width`) à partir de `start_year`/`end_year`,
  via `PIXELS_PER_DECADE = 120`.

## Contrôleur et routing

- `config/routes.rb` : route unique `root "home#index"`.
- **HomeController#index** : expose `@assets` (triés par `:order`) et `@eras`
  (avec eager-load `comments + assets` pour éviter les N+1 dans la modale).

## Vue `home/index.html.erb`

```
HomeController#index
  → @assets, @eras
  → TimelineGraphic.new → .decades_count, .max_decade, .asset_bars, .min_width
      → AssetBar.new(asset) → .left_pos, .bar_width, .asset
  → Boutons d'Era + modales (Stimulus era-modal)
  → Frise chronologique scrollable (Stimulus timeline, scroll markers)
  → Accordéon mobile (Stimulus accordion)
```

## Stimulus controllers (`app/javascript/controllers/`)

- **timeline** : marqueurs de scroll (triangles) pour les barres hors-champ,
  scroll automatique au clic vers le début de la barre centré.
- **era-modal** : ouverture/fermeture des modales d'Era (clic bouton, croix,
  clic en dehors).
- **accordion** : dépliage du texte explicatif en mobile.

## Assets et images

- Feuille de style principale : `app/assets/stylesheets/application.css`
  (thème futuriste : fond sombre, accents cyan/teal, police monospace).
- Images d'Era : `app/assets/images/era/buttons/` (portraits ~50px) et
  `app/assets/images/era/hero/` (illustrations ~600px). Le lien Era → image
  se fait par `era.name.parameterize` (ex. "Napoléon" → `napoleon`).


## Pistes futures

- Boutons de récap : « vivre à l'époque de Napoléon » => « vous aurez l'honneur de profiter de : … »
- Lien vers la source
- Publication sur les réseaux sociaux via l'IA
- Serveur MCP pour ajouter un asset directement par IA
