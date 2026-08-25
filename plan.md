# Main feature : graphic

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
