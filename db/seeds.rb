# Meilleure avancées technologiques humaines
# - eau potable au robinet
# - électricité domestique
# - internet
# - antibiotiques
# - lèpre
# - voiture
# - salle de bain à domicile
# - démocratie
# - travail des enfants
# - vote des femmes
# - esclavage

Asset.find_or_create_by!(
  name: "Eau courante",
  comment: "Eau potable au robinet en France disponible couramment dans les foyers, environ 80% des foyers en 1950.",
  source: "https://fr.wikipedia.org/wiki/Eau_potable_en_France",
  start_year: "1950",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 1
)
puts "Eau potable asset created"
Asset.find_or_create_by!(
  name: "Électricité domestique",
  comment: "Électricité disponible dans la majorité de foyers français après la guerre, dans les années 1950.",
  source: "https://fr.wikipedia.org/wiki/%C3%89lectricit%C3%A9_en_France",
  start_year: "1950",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 4
)
puts "Électricité domestique asset created"
Asset.find_or_create_by!(
  name: "Internet",
  comment: "Utilisation grand publique d'Internet en France, environ 50% des foyers en 2000.",
  source: "https://fr.wikipedia.org/wiki/Internet_en_France",
  start_year: "2000",
  end_year: nil,
  public: true,
  color: "#54C6EB",
  order: 18
)
puts "Internet asset created"
Asset.find_or_create_by!(
  name: "Antibiotiques",
  comment: "Découverte de la pénicilline par Alexander Fleming en 1928, mais utilisation généralisée dans les années 1940.",
  source: "https://fr.wikipedia.org/wiki/P%C3%A9nicilline",
  start_year: "1940",
  end_year: nil,
  public: true,
  color: "#8A89C0",
  order: 2
)
puts "Antibiotiques asset created"
Asset.find_or_create_by!(
  name: "Lèpre",
  comment: "Présence de la lèpre en France, éradication de la maladie dans les années 1950.",
  source: "https://fr.wikipedia.org/wiki/L%C3%A8pre",
  start_year: "0",
  end_year: "1950",
  public: true,
  color: "#CDA2AB",
  order: 20
)
puts "Lèpre asset created"
Asset.find_or_create_by!(
  name: "Voiture",
  comment: "Possession de la voiture dans les foyers français, environ 50% des foyers en 1968.",
  source: "https://fr.wikipedia.org/wiki/Voiture",
  start_year: "1968",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 17
)
puts "Voiture asset created"
Asset.find_or_create_by!(
  name: "Salle de bain",
  comment: "En 1970, environ 50 % des maisons françaises étaient équipées de salles de bain",
  source: "https://fr.wikipedia.org/wiki/Salle_de_bain",
  start_year: "1970",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 12
)
puts "Salle de bain asset created"
Asset.find_or_create_by!(
  name: "Démocratie",
  comment: "La démocratie en France a été instaurée en 1789 avec la Révolution française.",
  source: "https://fr.wikipedia.org/wiki/D%C3%A9mocratie_en_France",
  start_year: "1789",
  end_year: nil,
  public: true,
  color: "#54C6EB",
  order: 5
)
puts "Démocratie asset created"
Asset.find_or_create_by!(
  name: "Travail des enfants",
  comment: "La loi de 1904 a interdit le travail des enfants de moins de 13 ans en France.",
  source: "https://fr.wikipedia.org/wiki/Travail_des_enfants",
  start_year: "0",
  end_year: "1904",
  public: true,
  color: "#CDA2AB",
  order: 9
)
puts "Travail des enfants asset created"
Asset.find_or_create_by!(
  name: "Vote des femmes",
  comment: "Le droit de vote des femmes a été accordé en France en 1944.",
  source: "https://fr.wikipedia.org/wiki/Droit_de_vote_des_femmes_en_France",
  start_year: "1944",
  end_year: nil,
  public: true,
  color: "#8A89C0",
  order: 7
)
puts "Vote des femmes asset created"
Asset.find_or_create_by!(
  name: "Esclavage",
  comment: "L'esclavage a été aboli en France en 1848.",
  source: "https://fr.wikipedia.org/wiki/Esclavage_en_France",
  start_year: "0",
  end_year: "1848",
  public: true,
  color: "#CDA2AB",
  order: 10
)
# Sécurité sociale (1945 : création en France)
Asset.find_or_create_by!(
  name: "Sécurité sociale",
  comment: "Création du système de protection sociale universel en France.",
  source: "https://fr.wikipedia.org/wiki/S%C3%A9curit%C3%A9_sociale_en_France",
  start_year: "1945",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 8
)

# SMIC (1950 : création du SMIG, ancêtre du SMIC)
Asset.find_or_create_by!(
  name: "SMIC",
  comment: "Création du Salaire Minimum Interprofessionnel de Croissance (SMIC) en France.",
  source: "https://fr.wikipedia.org/wiki/Salaire_minimum_interprofessionnel_de_croissance",
  start_year: "1950",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 16
)

# Congés payés (1936 : introduction en France)
Asset.find_or_create_by!(
  name: "Congés payés",
  comment: "Introduction des congés payés",
  source: "https://fr.wikipedia.org/wiki/Cong%C3%A9s_pay%C3%A9s",
  start_year: "1936",
  end_year: nil,
  public: true,
  color: "#54C6EB",
  order: 15
)

# Vaccination (1800 : généralisation en France après la découverte de Jenner en 1798)
Asset.find_or_create_by!(
  name: "Vaccination",
  comment: "Généralisation de la vaccination contre la variole en France au début du XIXe siècle.",
  source: "https://fr.wikipedia.org/wiki/Histoire_de_la_vaccination",
  start_year: "1800",
  end_year: nil,
  public: true,
  color: "#8A89C0",
  order: 3
)

# L'école (1882 : lois Jules Ferry, école gratuite, laïque et obligatoire)
Asset.find_or_create_by!(
  name: "École gratuite et laïque",
  comment: "Lois Jules Ferry rendant l'école gratuite, laïque et obligatoire en France.",
  source: "https://fr.wikipedia.org/wiki/Lois_Jules_Ferry",
  start_year: "1882",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 6
)

# Liberté de la presse (1881 : loi sur la liberté de la presse)
Asset.find_or_create_by!(
  name: "Liberté de la presse",
  comment: "Loi du 29 juillet 1881 sur la liberté de la presse en France.",
  source: "https://fr.wikipedia.org/wiki/Loi_du_29_juillet_1881_sur_la_libert%C3%A9_de_la_presse",
  start_year: "1881",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 11
)

# Royauté (disparition en 1870 : fin de la monarchie en France avec la Troisième République)
Asset.find_or_create_by!(
  name: "Royauté",
  comment: "Disparition de la monarchie en France avec la proclamation de la Troisième République.",
  source: "https://fr.wikipedia.org/wiki/Troisi%C3%A8me_R%C3%A9publique_(France)",
  start_year: "-2000",
  end_year: "1870",
  public: true,
  color: "#CDA2AB",
  order: 19
)

Asset.find_or_create_by!(
  name: "Culture du viol",
  comment: "Présence et normalisation de la culture du viol dans la société.",
  source: "https://fr.wikipedia.org/wiki/Culture_du_viol",
  start_year: 0,
  end_year: nil,
  public: true,
  color: "#CDA2AB",
  order: 13
)

Asset.find_or_create_by!(
  name: "Pédophilie",
  comment: "La fin de l’impunité médiatique : quand la pédophilie a cessé d’être un débat. Le début du combat dans le coeur de la société.",
  source: "https://larevuedesmedias.ina.fr/depuis-quand-les-medias-parlent-ils-de-pedophilie-pedocriminalite",
  start_year: 0,
  end_year: "1990",
  public: true,
  color: "#CDA2AB",
  order: 14
)

# Jeu vidéo (années 1980 : popularisation avec les consoles comme la NES et les micro-ordinateurs)
Asset.find_or_create_by!(
  name: "Jeu vidéo",
  comment: "Popularisation des jeux vidéo en France avec l'arrivée des consoles et micro-ordinateurs grand public.",
  source: "https://fr.wikipedia.org/wiki/Histoire_du_jeu_vid%C3%A9o_en_France",
  start_year: "1980",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 9
)

# Réseaux sociaux (années 2000 : popularisation avec Facebook, Twitter, etc.)
Asset.find_or_create_by!(
  name: "Réseaux sociaux",
  comment: "Généralisation des réseaux sociaux en France avec l'arrivée de plateformes comme Facebook, Twitter, et LinkedIn.",
  source: "https://fr.wikipedia.org/wiki/R%C3%A9seau_social",
  start_year: "2005",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 10
)

# Chauffage domestique (années 1950-1960 : généralisation du chauffage central)
Asset.find_or_create_by!(
  name: "Chauffage domestique",
  comment: "Généralisation du chauffage central dans les foyers français, remplaçant les poêles et cheminées traditionnelles.",
  source: "https://fr.wikipedia.org/wiki/Chauffage_central",
  start_year: "1955",
  end_year: nil,
  public: true,
  color: "#54C6EB",
  order: 11
)

# Viande au quotidien (années 1960 : accès régulier à la viande pour la majorité de la population)
Asset.find_or_create_by!(
  name: "Viande",
  comment: "Accès régulier à la viande dans l'alimentation quotidienne des Français, grâce à l'amélioration des conditions économiques et des systèmes de production.",
  source: "https://fr.wikipedia.org/wiki/Consommation_de_viande_en_France",
  start_year: "1960",
  end_year: nil,
  public: true,
  color: "#8A89C0",
  order: 12
)

Asset.find_or_create_by!(
  name: "Réfrigérateur",
  comment: "Généralisation du réfrigérateur dans les foyers français",
  source: "https://fr.wikipedia.org/wiki/Histoire_du_r%C3%A9frig%C3%A9rateur",
  start_year: "1960",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 18
)

Asset.find_or_create_by!(
  name: "Chimiothérapie",
  comment: "Généralisation de l'accès à la chimiothérapie en France",
  source: "https://fr.wikipedia.org/wiki/Histoire_de_la_chimioth%C3%A9rapie",
  start_year: "1970",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 19
)

# Asset
# revoir Liberté de la presse en timeline
# lave linge
#
# Timeline :
# cause première de mort
# guerres
# congé payés
# espérance de vie
# mort des accidents de la route
# Nombre d'heure de travail journalier
