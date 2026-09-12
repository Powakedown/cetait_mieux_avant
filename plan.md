# 1. Main feature : graphic

## Implémentation de la feature principal : Frise chronologique des avancées humaines

1. doit se situer sur home > index.html.haml
2. doit utiliser @assets pour itérer dessus, par ordre croissant (colonne :order), de haut vers le bas de la page
3. dans un graphique de barre : chaque barre est un "asset" (instance du model asset) disposé par ordonnée.  Sur l'abscisse, se trouve les années et les barre commencent et s'arrètent en fonction des start_year et end_year
4. les années sont précisées en haut du graphique et divisées en décennie, de la plus récente à gauche à la plus ancienne à droite. Les décennies possèdent une taille fixe sur la frise chronologique. La frise va jusqu'à l'an 0. Il faudra forcément scroller vers la droite pour voir cette année. Tout le graphique est en overflow scroll sur x
5. les barres représentant les années des assets sont calés sur la frise chronoligue. Ainsi en scrollant vers la droite, on peut consulter l'année de départ de l'asset
6. les barres représentant les années sont assez haute pour inclure du texte au besoin.
7. les barres possède une couleur de fond à trouver sur l'asset.color
8. Les noms des avancées sont disposés sur l'ordonnée du graphique et ne bouge pas quand on scrolle vers la droite.
9. Le tout doit être assez graphique et moderne.

# 2. Update graphic

1. Update asset colors with the theme (#048A81 #06D6A0 #54C6EB #8A89C0 #CDA2AB) (do not forget color inclusion validation in the model)
2. the #CDA2AB is a brown : use it for asset about bad things like ("esclavage", "lèpre" ..)
3. add asset's comment in the bars from the graphic the name, in a dark gray text, for each assets
4. the graphic can be close from left side, even in large screen
5. reduce bar height, try padding top and bottom.

# 3. Refactor view

1. View index.html.haml is declaring a lot of variable to place and size the bars. Refactorize this part by creating a class that receive the assets, handle the compute and is able to respond to .left_pos and .bar_with
2. Add specs for it
3. View index.html.haml is declaring a log of variable at the top that manage the main graphic sizing and that are not used in the view.  Refactorize this part by creating a class that handle graphic styling, sizing etc..

# 4. Theme

Make the whole page looking like a futuristic, compact, statictic page. Update style, page itself, main title.

# 5. UX scroll marker

Ajoute un petit triangle sur les timeline-bars-container pour les timeline-bar dont la position dépasse le cadre de l'écran et ne sont pas visible.
Ce petit triangle permet de scroller automatiquement vers le début de la timeline-bar. Le début de la timeline-bar se placerait horizontal au centre.

# 6. Responsive

Fait en sorte que le timeline soit plus compact sur mobile.
- Le padding doivent être plus petit.
- Les décennie moins large
- Le texte d'explication en dessous du titre à déplier derrière un accordéon et un bouton "en savoir plus" (uniquement en mobile)
- globalement essayer de faire en sorte que le nom des assets qui est en colonne un tiers de l'écran

# 7. Comment on Asset

- Créer un modèle Era, qui possède :name, :description, :source, :question (tous en string)
- Créer un modèle Comment, qui fait la jonction entre 1 asset et 1 era, qui possède une description
- Ne pas oublier les foreign keys, et les index
- Ajouter les relations active_record entre eux dans les models
- Ajouter une colonne "type" sur Asset, migrer etc...
- Le "type" doit être un enum et prend les valeurs suivantes pour l'instant: "progress", "era","phenomenom"
- Mettre à jour les assets dans la seed.rb :
  - celle dont le nom fait penser à des avancées humaines, mettre à jour en le type: "progress"
  - les autres en "phenomenom"

# 8 - Mise à jour du readme.md

- mettre à jour le fichier readme.md avec le plan que tu m'a donnée dans la dernière conversation du projet CetaitMieuxAvant
- fait un symlink agents.md afin que tu puisses le trouver par là également

# 9 - Seed des Eras

- ajouter les colonnes de type date start_year et end_year au modèle Era
- faire la migration
- ajouter au seed.rb les ères suivantes :
  - name : napoléon
    question : "Vivre du temps de Napoléon ?"
    description: créer Une petite description du temps glorieux de Napoléon
    date de début: recherche dans tes connaissances la date
    date de fin : recherche dans tes connaissances la date

  - name : "victor hugo"
    question : "Vivre du temps de Victor Hugo ?"
    description: créer Une petite description du temps glorieux de Victor Hugo
    date de début: recherche dans tes connaissances la date
    date de fin : recherche dans tes connaissances la date

  - name : "De Gaulle"
    question : "Vivre du temps de Charles De Gaulle ?"
    description: créer Une petite description du temps glorieux de De Gaulle
    date de début: recherche dans tes connaissances la date
    date de fin : recherche dans tes connaissances la date

  - name : Louis XIV
    question : "Vivre du temps de Louis XIV ?"
    description: créer Une petite description du temps glorieux de Louis XIV
    date de début: recherche dans tes connaissances la date
    date de fin : recherche dans tes connaissances la date

  - name : Moyen Âge
    question : "Vivre au moyen âge ?"
    date de début: recherche dans tes connaissances la date
    date de fin : recherche dans tes connaissances la date

# 10 - Lien Asset et Era

  - Dans la seed, relier les Assets et les Era par un Comment en fonction des dates : l'asset doit un interval (start_year-end_year) qui match avec l'interval de l'era
  - Dans chaque Comment, sers toi de éventuellement de pour Napoléon de skils/history/references/napoleon.md pour compléter les descriptions sinon sers toi de tes connaissances pour ajouter une petite description (max 200 caractère) concernant cet asset à l'époque en question.

# 11 - Récapitulatif d'éra

  - entre l'accordéon et le graphique, dispose une série de bouton, lié chacun à une Era.
  - quand on clique sur le bouton, une modale moyenne s'ouvre. On y retrouve :
    - en titre la "question" de l'era.
    - la description succinte de l'era
    - un rappel des dates de début et de fin
    - une série de tag au contour vert, écrit en vert pour chaque asset lié à cet Era.
    - une série de tag au contour rouge, écrit en rouge pour chaque asset non lié à cet Era.
    - au survol des tags liés à l'era (lié par un Comment), affiché un tooltip dans lequel on retrouve la :description du Comment de jonction.
  - la modale doit disposer d'une croix en haut à droite pour fermer
  - la modale se ferme si on clique en dehors

# 12 - Improvements

  - Compléter les notions dans la partie Architecture dans le plan.md
  - Améliorer les boutons des Era :
    - générer une petite image pour chaque bouton, principalement des petits portrait en fonction des noms de l'Era(placer l'image de bouton dans les assets/images/era/buttons, nommer l'image en fonction du nom de l'era)
    - générer une image plus grande (environ 600px) qui symbolise bien l'era en question (placer l'image dans les assets/images/era/hero)
    - ajouter les petits portrait à gauche du bouton, ils doivent être un peu plus gros, environ 50px. Le lien entre l'era du bouton et l'image est faite par le nom de l'era qui est cohérent avec le nom du fichier.
    - dans chaque modal, utiliser l'image hero toute hauteur à gauche, afin d'illustrer la modale. Les src de l'image est se trouve par le nom de l'era.
  - Fixer les tooltips qui se retrouve coupé par le bord de la modale au survol.

# 13 - Jonction aux marges

  - ajouter une colonne de type boolean :coming sur le modèle Comment
  - faire la migration
  - mettre à jour dans la seed, les jonctions en Asset et Era selon leur chevauchement de date (réf étapte 10) MAIS attention car les Era qui se termine dans 10 ans après l'apparition d'un asset doit taguer la jonction "comment" comme coming: true. Example: si un Era se termine en 1970, alors un asset qui apparait en 1960 par exemple doit voir sa jonction `coming: true`
  - ajouter une description pertinente si elle n'existe pas encore
  - dans les modals de l'index, les tags pour les comments.coming == true doivent avoir un contour orange avec un texte orange et également un tooltip fonction de sa description

# 14 - Amélioration de la modale

  - ajout d'une légende en bas de la modal : un carré de couleur et un texte pour expliquer chaque couleur. Signification:
    - un carré vert : existe
    - un carré orange : en développement
    - un carré rouge : n'existe pas
  - l'image sur la gauche de la modal doit un élément rempli d'un background image afin que l'image puisse prendre toute la hauteur de la modal

# 15 - Mise à jour diverses

  - mettre à jour les tags dans la modal : si l'asset du tag en question est de type "phenomenom" ou "curse", il doit avoir le bordure et le texte marron
  - le marron doit être ajouté à la légende verte labellisé "existe"
  - la lèpre ne doit pas être connecté a l'era "charles de gaulle"
  - la démocratie ne doit pas être connecté à l'era "napoléon"
  - les boutons doivent être ordonné par date de début
  - un petit tag en bas à droite de l'image de la modal, mais au dessus de l'image doit préciser "IA"
  - ne pas lister dans le graphique les asset de type "curse"
  - créer une Era pour l'époque de Jésus Christ dans la seed et le connecter aux assets (mais ça doit être déjà fait dans la seed)

# 16 - Ajout d'Era

  - Créer les era Marie Curie, Jacques Chirac dans la seed

# 17 - Mise à jour de la modale

  - les tags des assets "phenomenom" qui n'existe pas doivent avoir une border et un texte de couleur vert comme les progress, mais le texte doit être barré
  - on doit pouvoir grâce à des flèches sur le côté de la modale, passer d'une era à une autre
  - l'asset Royauté doit être renommé "Dictature" (voit si tu dois changer les commentaires dans les jonctions et l'asset lui même)
  - l'asset travail des enfants ne devrait pas être lié a l'era Charles De Gaulle. La lèpre ne devrait pas être lié à Jacques Chiras
  - l'era Marie Curie ne devrait pas être lié à l'asset Dictature
  - relier Jacques Chirac à la pédophilie et la culture du viol

# 18 - Création des fléaux

  - Créer un modèle Bonus, avec un :name
  - Créer un modèle de jonction entre les Era et les Bonus, avec une :description
  - Ajouter au seed Les Bonus : Guerre, Peste, Famine, Abondance, Paix
  - Relier les Bonus aux Era en fonction de leur existence sur le territoire Français métropolitain.
  - Ajouter un commentaire pertinent à chaque jonction
  - Migrer
  - Dans la modale au dessus des légendes, créer un petit encart de la même couleur et taille que les boutons des Era. Dans l'encart, ajouter le nom du bonus et au survol le tooltip avec la description de la jonction Era-Bonus
  - Délier Guerre et Jacques Chirac
  - Le tootip des bonus ne doit pas passe en dessous des images hero
  - Délier Napoléon de Famine

# 19 - Responsive des Era mobile

  - en mobile, les modales doivent s'étendre librement avec la taille du contenu en hauteur.
  - en mobile, remplacer l'image en background en haut par le portrait centré en haut et dans un rond. L'image de background ne doit pas apparaitre en mobile. Elle doit être 2 fois plus grosse que sur l'index
  - les tooltips sur les assets ne doivent pas être coupées par les bords de l'écran.
  - Split application.css into multiple files, depending on the component styles. Link each other to make it work.

# Fin


# Ajout d'un lien vers la source
# Publication sur les réseaux sociaux au travers de l'IA
# Développer un serveur MCP afin de pouvoir ajouter un asset directement par IA

