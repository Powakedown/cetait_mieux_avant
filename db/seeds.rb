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
  name: "Eau potable",
  comment: "Eau potable au robinet en France disponible couramment dans les foyers, environ 80% des foyers en 1950.",
  source: "https://fr.wikipedia.org/wiki/Eau_potable_en_France",
  start_year: "1950",
  end_year: "2025",
  public: true,
  color: "blue",
  order: 1
)
puts "Eau potable asset created"
Asset.find_or_create_by!(
  name: "Électricité domestique",
  comment: "Électricité disponible dans la majorité de foyers français après la guerre, dans les années 1950.",
  source: "https://fr.wikipedia.org/wiki/%C3%89lectricit%C3%A9_en_France",
  start_year: "1950",
  end_year: "2025",
  public: true,
  color: "yellow",
  order: 2
)
puts "Électricité domestique asset created"
Asset.find_or_create_by!(
  name: "Internet",
  comment: "Utilisation grand publique d'Internet en France, environ 50% des foyers en 2000.",
  source: "https://fr.wikipedia.org/wiki/Internet_en_France",
  start_year: "2000",
  end_year: "2025",
  public: true,
  color: "orange",
  order: 3
)
puts "Internet asset created"
Asset.find_or_create_by!(
  name: "Antibiotiques",
  comment: "Découverte de la pénicilline par Alexander Fleming en 1928, mais utilisation généralisée dans les années 1940.",
  source: "https://fr.wikipedia.org/wiki/P%C3%A9nicilline",
  start_year: "1940",
  end_year: "2025",
  public: true,
  color: "lime",
  order: 2
)
puts "Antibiotiques asset created"
Asset.find_or_create_by!(
  name: "Lèpre",
  comment: "Présence de la lèpre en France, éradication de la maladie dans les années 1950.",
  source: "https://fr.wikipedia.org/wiki/L%C3%A8pre",
  start_year: "1950",
  end_year: "2025",
  public: true,
  color: "amber",
  order: 2
)
puts "Lèpre asset created"
Asset.find_or_create_by!(
  name: "Voiture",
  comment: "Possession de la voiture dans les foyers français, environ 50% des foyers en 1968.",
  source: "https://fr.wikipedia.org/wiki/Voiture",
  start_year: "1968",
  end_year: "2025",
  public: true,
  color: "fuchsia",
  order: 3
)
puts "Voiture asset created"
Asset.find_or_create_by!(
  name: "Salle de bain",
  comment: "En 1970, environ 50 % des maisons françaises étaient équipées de salles de bain",
  source: "https://fr.wikipedia.org/wiki/Salle_de_bain",
  start_year: "1970",
  end_year: "2025",
  public: true,
  color: "cyan",
  order: 4
)
puts "Salle de bain asset created"
Asset.find_or_create_by!(
  name: "Démocratie",
  comment: "La démocratie en France a été instaurée en 1789 avec la Révolution française.",
  source: "https://fr.wikipedia.org/wiki/D%C3%A9mocratie_en_France",
  start_year: "1789",
  end_year: "2025",
  public: true,
  color: "indigo",
  order: 5
)
puts "Démocratie asset created"
Asset.find_or_create_by!(
  name: "Travail des enfants",
  comment: "La loi de 1904 a interdit le travail des enfants de moins de 13 ans en France.",
  source: "https://fr.wikipedia.org/wiki/Travail_des_enfants",
  start_year: "1904",
  end_year: "2025",
  public: true,
  color: "black",
  order: 6
)
puts "Travail des enfants asset created"
Asset.find_or_create_by!(
  name: "Vote des femmes",
  comment: "Le droit de vote des femmes a été accordé en France en 1944.",
  source: "https://fr.wikipedia.org/wiki/Droit_de_vote_des_femmes_en_France",
  start_year: "1944",
  end_year: "2025",
  public: true,
  color: "black",
  order: 7
)
puts "Vote des femmes asset created"
Asset.find_or_create_by!(
  name: "Esclavage",
  comment: "L'esclavage a été aboli en France en 1848.",
  source: "https://fr.wikipedia.org/wiki/Esclavage_en_France",
  start_year: "1848",
  end_year: "2025",
  public: true,
  color: "black",
  order: 8
)




