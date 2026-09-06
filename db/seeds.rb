Asset.find_or_create_by!(
  name: "Eau courante",
  comment: "Eau potable au robinet en France disponible couramment dans les foyers, environ 80% des foyers en 1950.",
  source: "https://fr.wikipedia.org/wiki/Eau_potable_en_France",
  start_year: "1950",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 1,
  type: "progress"
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
  order: 4,
  type: "progress"
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
  order: 18,
  type: "progress"
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
  order: 2,
  type: "progress"
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
  order: 20,
  type: "phenomenom"
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
  order: 17,
  type: "progress"
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
  order: 12,
  type: "progress"
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
  order: 5,
  type: "progress"
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
  order: 9,
  type: "phenomenom"
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
  order: 7,
  type: "progress"
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
  order: 10,
  type: "phenomenom"
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
  order: 8,
  type: "progress"
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
  order: 16,
  type: "progress"
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
  order: 15,
  type: "progress"
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
  order: 3,
  type: "progress"
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
  order: 6,
  type: "progress"
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
  order: 11,
  type: "progress"
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
  order: 19,
  type: "phenomenom"
)

Asset.find_or_create_by!(
  name: "Culture du viol",
  comment: "Présence et normalisation de la culture du viol dans la société.",
  source: "https://fr.wikipedia.org/wiki/Culture_du_viol",
  start_year: 0,
  end_year: nil,
  public: true,
  color: "#CDA2AB",
  order: 13,
  type: "phenomenom"
)

Asset.find_or_create_by!(
  name: "Pédophilie",
  comment: "La fin de l’impunité médiatique : quand la pédophilie a cessé d’être un débat. Le début du combat dans le coeur de la société.",
  source: "https://larevuedesmedias.ina.fr/depuis-quand-les-medias-parlent-ils-de-pedophilie-pedocriminalite",
  start_year: 0,
  end_year: "1990",
  public: true,
  color: "#CDA2AB",
  order: 14,
  type: "phenomenom"
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
  order: 9,
  type: "progress"
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
  order: 10,
  type: "progress"
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
  order: 11,
  type: "progress"
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
  order: 12,
  type: "progress"
)

Asset.find_or_create_by!(
  name: "Réfrigérateur",
  comment: "Généralisation du réfrigérateur dans les foyers français",
  source: "https://fr.wikipedia.org/wiki/Histoire_du_r%C3%A9frig%C3%A9rateur",
  start_year: "1960",
  end_year: nil,
  public: true,
  color: "#06D6A0",
  order: 18,
  type: "progress"
)

Asset.find_or_create_by!(
  name: "Chimiothérapie",
  comment: "Généralisation de l'accès à la chimiothérapie en France",
  source: "https://fr.wikipedia.org/wiki/Histoire_de_la_chimioth%C3%A9rapie",
  start_year: "1970",
  end_year: nil,
  public: true,
  color: "#048A81",
  order: 19,
  type: "progress"
)

# === Eras ===

Era.find_or_create_by!(
  name: "Napoléon",
  question: "Vivre du temps de Napoléon ?",
  description: "L'épopée napoléonienne, du Consulat à l'Empire : guerres napoléoniennes, code civil, expansion territoriale, faste impérial et batailles mythiques, avant la chute finale à Waterloo.",
  source: "https://fr.wikipedia.org/wiki/Napol%C3%A9on_Ier",
  start_year: Date.new(1799, 11, 9),
  end_year: Date.new(1815, 6, 18)
)
puts "Era Napoléon created"

Era.find_or_create_by!(
  name: "Victor Hugo",
  question: "Vivre du temps de Victor Hugo ?",
  description: "Le siècle de Victor Hugo : romantisme, révolutions, République et empire, luttes sociales et engagement littéraire, de la Restauration à la Troisième République.",
  source: "https://fr.wikipedia.org/wiki/Victor_Hugo",
  start_year: Date.new(1802, 2, 26),
  end_year: Date.new(1885, 5, 22)
)
puts "Era Victor Hugo created"

Era.find_or_create_by!(
  name: "De Gaulle",
  question: "Vivre du temps de Charles De Gaulle ?",
  description: "L'époque de Gaulle : Seconde Guerre mondiale, Résistance, fondation de la Ve République, décolonisation, événements de Mai 68 et modernisation de la France.",
  source: "https://fr.wikipedia.org/wiki/Charles_de_Gaulle",
  start_year: Date.new(1890, 11, 22),
  end_year: Date.new(1970, 11, 9)
)
puts "Era De Gaulle created"

Era.find_or_create_by!(
  name: "Louis XIV",
  question: "Vivre du temps de Louis XIV ?",
  description: "Le Roi-Soleil et Versailles : absolutisme, faste de la cour, guerres d'expansion, classique français, arts et grandeur, du milieu du XVIIe siècle au début du XVIIIe.",
  source: "https://fr.wikipedia.org/wiki/Louis_XIV",
  start_year: Date.new(1643, 5, 14),
  end_year: Date.new(1715, 9, 1)
)
puts "Era Louis XIV created"

Era.find_or_create_by!(
  name: "Moyen Âge",
  question: "Vivre au Moyen Âge ?",
  description: "Le Moyen Âge : seigneurs, châteaux forts, famines, épidémies, religion omniprésente et vie quotidienne rude, de la chute de Rome à la Renaissance.",
  source: "https://fr.wikipedia.org/wiki/Moyen_%C3%82ge",
  start_year: Date.new(476, 1, 1),
  end_year: Date.new(1453, 7, 21)
)
puts "Era Moyen Âge created"

# === Comments : liaison Asset ↔ Era par chevauchement d'intervalles ===

# Descriptions spécifiques (<= 200 caractères) de chaque asset dans chaque ère.
era_comments = {
  "Napoléon" => {
    "Travail des enfants" => "Le travail des enfants est monnaie courante dans les ateliers et campagnes, sans protection légale. L'industrialisation naissante en exploite la main-d'œuvre.",
    "Esclavage" => "Napoléon rétablit l'esclavage en 1802 dans les colonies, annulant l'abolition de 1794. Des milliers de personnes sont à nouveau réduites en esclavage.",
    "Vaccination" => "Début de la vaccination contre la variole se diffuse après la découverte de Jenner (1798). Napoléon la favorise, notamment dans l'armée.",
    "Royauté" => "Napoléon rétablit un régime monarchique en se proclamant Empereur en 1804, recréant cour et pouvoir héréditaire sur les ruines de la Révolution.",
    "Lèpre" => "La lèpre a largement disparu de France à cette époque, confinée à quelques rares foyers. Elle n'est plus un problème de santé publique majeur.",
    "Culture du viol" => "Les femmes sont soumises à l'autorité maritale. Le viol conjugal n'est pas reconnu, le consentement est absent du Code civil de 1804.",
    "Pédophilie" => "La pédocriminalité n'est pas identifiée comme telle. La minorité est peu protégée par la loi, le sujet reste tabou et invisible."
  },
  "Victor Hugo" => {
    "Démocratie" => "Le suffrage universel masculin est établi en 1848. La République est proclamée, puis l'Empire revient, avant la Troisième République en 1870.",
    "Travail des enfants" => "Le travail des enfants reste massif en usine. La loi de 1841 fixe un âge minimum, mais son application est faible. La loi de 1874 renforce les protections.",
    "Esclavage" => "L'esclavage est aboli définitivement en 1848 sous la Seconde République, grâce à Victor Schoelcher. Les colonies françaises sont libérées.",
    "Vaccination" => "La vaccination contre la variole se généralise dans le siècle. Obligatoire pour les enfants en 1902, elle est déjà bien implantée sous le Second Empire.",
    "Royauté" => "La monarchie disparaît définitivement en 1870. Charles X a fui en 1830, Louis-Philippe en 1848. La royauté ne reviendra plus.",
    "Lèpre" => "La lèpre a quasiment disparu du territoire français au XIXe siècle, reléguée aux marges de l'Empire colonial.",
    "Culture du viol" => "Le Code civil maintient la femme sous l'autorité du mari. Hugo dénonce l'injustice sociale, mais le consentement reste un non-sujet juridique.",
    "Pédophilie" => "La protection des mineurs progresse timidement. La loi de 1904 viendra plus tard, mais la pédocriminalité reste largement ignorée et impunie.",
    "École gratuite et laïque" => "Les lois Ferry arrivent en 1882, à la fin de la vie de Hugo. L'école devient gratuite, laïque et obligatoire, aboutissement des combats républicains.",
    "Liberté de la presse" => "La loi du 29 juillet 1881 consacre la liberté de la presse. Hugo, exilé, incarne la lutte contre la censure sous le Second Empire."
  },
  "De Gaulle" => {
    "Travail des enfants" => "Réprimé depuis la loi de 1904, le travail des enfants a quasiment disparu. L'école obligatoire est devenue la norme sous la Ve République.",
    "Lèpre" => "La lèpre n'est plus présente en France métropolitaine. Le dernier foyer disparaît dans les années 1950 grâce aux antibiotiques.",
    "Culture du viol" => "Le viol conjugal commence à peine à être reconnu. La loi de 1970 viendra plus tard. La culture du viol reste largement impunie et normalisée.",
    "Pédophilie" => "La loi de 1945 protège les mineurs, mais la pédocriminalité reste taboue. Les affaires éclateront dans les médias à partir des années 1990.",
    "Congés payés" => "Introduits en 1936, ils se développent sous la IVe et la Ve République. En 1969, les Français disposent de 3 à 4 semaines de congés payés.",
    "Vote des femmes" => "Acquis en 1944, les femmes votent pour la première fois en 1945. Sous De Gaulle, la parité politique n'est cependant pas encore effective.",
    "Sécurité sociale" => "Créée en 1945, la Sécurité sociale se généralise sous la IVe et la Ve République. En 1970, la quasi-totalité des Français est couverte.",
    "SMIC" => "Le SMIG, ancêtre du SMIC, est créé en 1950. Il garantit un salaire minimum, mais son niveau reste modeste sous la présidence de Gaulle.",
    "Eau courante" => "L'eau courante se généralise dans les foyers dans les années 1950-1960. En 1970, une grande majorité des foyers en bénéficie.",
    "Électricité domestique" => "L'électricité est quasiment généralisée en 1970. Les campagnes, longtemps retardataires, sont désormais raccordées au réseau électrique.",
    "Antibiotiques" => "La pénicilline se généralise après-guerre. Sous De Gaulle, les antibiotiques transforment la médecine et font chuter la mortalité infectieuse.",
    "Vaccination" => "La vaccination est devenue massive. La variole recule, le BCG se généralise, le vaccin contre la polio (1956) change la santé publique.",
    "École gratuite et laïque" => "L'école gratuite, laïque et obligatoire est le socle républicain. Le collège unique arrivera après De Gaulle en 1975.",
    "Liberté de la presse" => "La liberté de la presse est solidement établie. Après la censure de Vichy, la presse renaît et se diversifie sous la Ve République.",
    "Chauffage domestique" => "Le chauffage central se généralise dans les années 1960. En 1970, il équipe une part croissante des foyers français.",
    "Viande" => "La viande devient accessible au quotidien pour la majorité des Français dans les années 1960, grâce à la croissance et à l'agriculture intensive.",
    "Réfrigérateur" => "Le réfrigérateur se généralise dans les années 1960. En 1970, la plupart des foyers français en sont équipés, transformant l'alimentation.",
    "Démocratie" => "La démocratie est solidement établie sous la Ve République. Le suffrage universel direct élit le président à partir de 1962.",
    "Voiture" => "La voiture se démocratise dans les années 1960. En 1970, environ la moitié des ménages français en possèdent une.",
    "Salle de bain" => "La salle de bain se généralise dans les années 1960-1970, transformant le confort domestique. Elle reste inégalement répartie.",
    "Chimiothérapie" => "La chimiothérapie se développe dans les années 1960-1970. Les premiers protocoles efficaces apparaissent, ouvrant un espoir contre le cancer."
  },
  "Louis XIV" => {
    "Royauté" => "Louis XIV incarne l'absolutisme royal : « L'État, c'est moi. » Versailles devient le centre du pouvoir et de l'étiquette de cour.",
    "Lèpre" => "La lèpre a largement reculé en France au XVIIe siècle, mais des maladreries subsistent. La maladie frappe encore les marges.",
    "Travail des enfants" => "Le travail des enfants est la norme dans les champs et ateliers. Dès 7 ans, ils participent à l'économie familiale sans protection.",
    "Esclavage" => "L'esclavage sévit dans les colonies. Le Code noir de 1685 réglemente l'esclavage, légitimant et organisant la condition servile.",
    "Culture du viol" => "Les femmes sont soumises au mari. Le viol conjugal est inconcevable, le consentement féminin n'existe pas juridiquement.",
    "Pédophilie" => "La protection des mineurs est inexistante. Le mariage précoce est toléré et la minorité sexuelle n'est pas un concept juridique."
  },
  "Moyen Âge" => {
    "Royauté" => "La royauté se construit lentement. Les Capétiens font face à des seigneurs puissants et à un pouvoir fragmenté avant la centralisation progressive.",
    "Lèpre" => "La lèpre est endémique au Moyen Âge. Des léproseries parsèment le pays pour isoler les malades, craints et marginalisés.",
    "Travail des enfants" => "Le travail des enfants est universel et nécessaire à la survie. Dès le plus jeune âge, les enfants travaillent aux champs ou aux ateliers.",
    "Esclavage" => "L'esclavage existe encore au début du Moyen Âge, mais décline avec la féodalité au profit du servage, qui le remplace graduellement.",
    "Culture du viol" => "Le droit médiéval soumet la femme au père puis au mari. Le consentement n'est pas un concept juridique, le viol est peu réprimé.",
    "Pédophilie" => "La pédocriminalité n'est pas identifiée. Les mariages précoces et la mortalité infantile élevée caractérisent cette société rude."
  }
}

# Conversion d'une année d'asset (string/int/nil) en entier ; nil = +infini.
def asset_start_int(asset) = asset.start_year.to_i
def asset_end_int(asset)   = asset.end_year.nil? ? Float::INFINITY : asset.end_year.to_i

# Description générique de secours (<= 200 caractères) quand aucune description
# spécifique n'est définie dans era_comments.
def fallback_description(asset, coming)
  if asset.progress?
    coming ? "#{asset.name} fait son apparition à la toute fin de cette période." : "#{asset.name} est déjà présent à cette époque."
  else
    coming ? "#{asset.name} commence à disparaître à la fin de cette période." : "#{asset.name} sévit encore à cette époque."
  end
end

Era.all.each do |era|
  era_start  = era.start_year.year
  era_end    = era.end_year.year
  asset_desc = era_comments[era.name] || {}

  Asset.all.each do |asset|
    a_start = asset_start_int(asset)
    a_end   = asset_end_int(asset)
    # chevauchement d'intervalles [a_start, a_end] ∩ [era_start, era_end]
    next unless a_start <= era_end && a_end >= era_start

    # coming: l'asset apparaît dans les 10 dernières années de l'era
    coming = a_start >= (era_end - 10) && a_start <= era_end

    description = asset_desc[asset.name] || fallback_description(asset, coming)

    comment = Comment.find_or_initialize_by(asset: asset, era: era)
    comment.description = description
    comment.coming = coming
    comment.save!
  end
end
puts "Comments created linking Assets and Eras"

# Asset
# revoir Liberté de la presse en timeline
# lave linge
# produit phytosanitaire
# plastique
# station d'épuration
#
# Timeline :
# cause première de mort
# guerres
# congé payés
# espérance de vie
# mort des accidents de la route
# Nombre d'heure de travail journalier
# Liberté d'expression
# Famine
#
#
# Santé
# Alimentation
