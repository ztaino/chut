import Foundation

extension WordBank {
    static let debutantWords: [ChutCard] = [
        // MARK: - Original 40 prototype words

        ChutCard(
            mot: "CHAT",
            traduction: "Cat",
            contexte: "Cats are extremely popular pets in France, with the country having one of the highest cat populations in Europe.",
            motsInterdits: ["animal", "miaou", "souris", "pattes", "félin"]
        ),
        ChutCard(
            mot: "MAISON",
            traduction: "House",
            contexte: "In France, many families dream of owning a maison de campagne (country house) for weekend getaways.",
            motsInterdits: ["habiter", "toit", "porte", "chambre", "appartement"]
        ),
        ChutCard(
            mot: "EAU",
            traduction: "Water",
            contexte: "In French restaurants, you can ask for une carafe d'eau to get free tap water instead of buying bottled water.",
            motsInterdits: ["boire", "liquide", "rivière", "mer", "verre"]
        ),
        ChutCard(
            mot: "VOITURE",
            traduction: "Car",
            contexte: "France is home to major car manufacturers like Renault, Peugeot, and Citroën.",
            motsInterdits: ["conduire", "route", "roue", "moteur", "véhicule"]
        ),
        ChutCard(
            mot: "SOLEIL",
            traduction: "Sun",
            contexte: "The Côte d'Azur in southern France is famous for its sunshine, attracting tourists year-round.",
            motsInterdits: ["ciel", "lumière", "chaud", "briller", "jour"]
        ),
        ChutCard(
            mot: "PAIN",
            traduction: "Bread",
            contexte: "The French buy fresh bread daily, and a traditional baguette is protected by law regarding its ingredients.",
            motsInterdits: ["boulangerie", "baguette", "manger", "farine", "tartine"]
        ),
        ChutCard(
            mot: "CHIEN",
            traduction: "Dog",
            contexte: "Dogs are welcome in many French restaurants and cafés, and it is common to see them in public places.",
            motsInterdits: ["animal", "aboyer", "pattes", "promener", "fidèle"]
        ),
        ChutCard(
            mot: "LIVRE",
            traduction: "Book",
            contexte: "France has a fixed book price law (loi Lang) to protect independent bookshops from large retailers.",
            motsInterdits: ["lire", "page", "histoire", "écrire", "bibliothèque"]
        ),
        ChutCard(
            mot: "ÉCOLE",
            traduction: "School",
            contexte: "French children attend école maternelle from age 3, and school days are typically longer than in many other countries.",
            motsInterdits: ["élève", "apprendre", "classe", "professeur", "étudier"]
        ),
        ChutCard(
            mot: "ROUGE",
            traduction: "Red",
            contexte: "Red is a key color in the French flag and is associated with the revolution. Vin rouge (red wine) is a staple.",
            motsInterdits: ["couleur", "sang", "vin", "feu", "tomate"]
        ),
        ChutCard(
            mot: "POMME",
            traduction: "Apple",
            contexte: "Normandy is famous for its apple orchards, producing cider and calvados (apple brandy).",
            motsInterdits: ["fruit", "arbre", "manger", "tarte", "rouge"]
        ),
        ChutCard(
            mot: "NUIT",
            traduction: "Night",
            contexte: "Paris is called La Ville Lumière (City of Light), famous for its beauty at night.",
            motsInterdits: ["sombre", "dormir", "étoile", "lune", "noir"]
        ),
        ChutCard(
            mot: "FROID",
            traduction: "Cold",
            contexte: "Winters in northern France can be quite cold, and the expression 'il fait un froid de canard' means it is freezing.",
            motsInterdits: ["chaud", "hiver", "neige", "température", "glacé"]
        ),
        ChutCard(
            mot: "FAMILLE",
            traduction: "Family",
            contexte: "Family gatherings on Sundays for a long lunch are a cherished tradition in French culture.",
            motsInterdits: ["parents", "enfants", "mère", "père", "frère"]
        ),
        ChutCard(
            mot: "AMI",
            traduction: "Friend",
            contexte: "The French distinguish between un ami (a close friend) and un copain (a casual friend or buddy).",
            motsInterdits: ["copain", "camarade", "ensemble", "relation", "proche"]
        ),
        ChutCard(
            mot: "TABLE",
            traduction: "Table",
            contexte: "Setting the table properly is important in French dining culture. 'À table!' is the call to come eat.",
            motsInterdits: ["manger", "chaise", "cuisine", "meuble", "repas"]
        ),
        ChutCard(
            mot: "FLEUR",
            traduction: "Flower",
            contexte: "Flower markets are common in French cities. Giving chrysanthemums is reserved for the dead, never as a gift.",
            motsInterdits: ["rose", "jardin", "plante", "bouquet", "pétale"]
        ),
        ChutCard(
            mot: "BLEU",
            traduction: "Blue",
            contexte: "Blue is a national color of France. The French soccer team is called Les Bleus.",
            motsInterdits: ["couleur", "ciel", "mer", "foncé", "clair"]
        ),
        ChutCard(
            mot: "OISEAU",
            traduction: "Bird",
            contexte: "The rooster (le coq) is the unofficial national animal of France and a symbol of French identity.",
            motsInterdits: ["voler", "aile", "nid", "plume", "chanter"]
        ),
        ChutCard(
            mot: "PLUIE",
            traduction: "Rain",
            contexte: "Brittany in northwestern France is famously rainy, and locals joke about always needing an umbrella.",
            motsInterdits: ["eau", "parapluie", "mouillé", "tomber", "nuage"]
        ),
        ChutCard(
            mot: "BÉBÉ",
            traduction: "Baby",
            contexte: "France has generous parental leave policies and government support for families with young children.",
            motsInterdits: ["enfant", "petit", "naissance", "pleurer", "maman"]
        ),
        ChutCard(
            mot: "TRAIN",
            traduction: "Train",
            contexte: "The TGV (Train à Grande Vitesse) is one of the fastest trains in the world, connecting major French cities.",
            motsInterdits: ["gare", "voyage", "rail", "billet", "voyager"]
        ),
        ChutCard(
            mot: "PORTE",
            traduction: "Door",
            contexte: "In French apartment buildings, front doors have a code (digicode) instead of a doorbell for the building entrance.",
            motsInterdits: ["ouvrir", "fermer", "entrer", "clé", "sortir"]
        ),
        ChutCard(
            mot: "LAIT",
            traduction: "Milk",
            contexte: "In France, shelf-stable UHT milk is more common than refrigerated milk and is sold in most supermarkets.",
            motsInterdits: ["vache", "boire", "blanc", "café", "crème"]
        ),
        ChutCard(
            mot: "CHAUD",
            traduction: "Hot/Warm",
            contexte: "The expression 'chocolat chaud' (hot chocolate) is a beloved French winter drink, often thicker than other versions.",
            motsInterdits: ["froid", "température", "soleil", "feu", "brûler"]
        ),
        ChutCard(
            mot: "VÉLO",
            traduction: "Bicycle",
            contexte: "The Tour de France is the world's most famous cycling race. Many French cities also have bike-sharing systems.",
            motsInterdits: ["roue", "pédaler", "cycliste", "rouler", "bicyclette"]
        ),
        ChutCard(
            mot: "JARDIN",
            traduction: "Garden",
            contexte: "The Gardens of Versailles are among the most famous in the world. Public parks in Paris are called jardins.",
            motsInterdits: ["fleur", "plante", "arbre", "maison", "herbe"]
        ),
        ChutCard(
            mot: "FENÊTRE",
            traduction: "Window",
            contexte: "Many French apartments have volets (shutters) on the outside of windows that are closed at night for insulation.",
            motsInterdits: ["ouvrir", "verre", "lumière", "voir", "maison"]
        ),
        ChutCard(
            mot: "MATIN",
            traduction: "Morning",
            contexte: "A typical French morning starts with a petit déjeuner of coffee and a croissant or tartine with butter and jam.",
            motsInterdits: ["réveil", "jour", "tôt", "lever", "petit déjeuner"]
        ),
        ChutCard(
            mot: "FROMAGE",
            traduction: "Cheese",
            contexte: "France produces over 400 varieties of cheese. Charles de Gaulle famously asked how one governs a country with so many cheeses.",
            motsInterdits: ["lait", "manger", "camembert", "vache", "plateau"]
        ),
        ChutCard(
            mot: "BOIRE",
            traduction: "To drink",
            contexte: "The French often drink wine with meals and water throughout the day. Coffee is usually taken after a meal, not during.",
            motsInterdits: ["eau", "verre", "soif", "vin", "liquide"]
        ),
        ChutCard(
            mot: "COURIR",
            traduction: "To run",
            contexte: "Jogging along the Seine in Paris or in the Bois de Boulogne is a popular activity among Parisians.",
            motsInterdits: ["marcher", "vite", "pieds", "sport", "jambes"]
        ),
        ChutCard(
            mot: "CHANTER",
            traduction: "To sing",
            contexte: "La chanson française is a beloved musical tradition. French people enjoy singing together during festive gatherings.",
            motsInterdits: ["musique", "voix", "chanson", "mélodie", "paroles"]
        ),
        ChutCard(
            mot: "DORMIR",
            traduction: "To sleep",
            contexte: "The French value a good night's sleep and the tradition of a short afternoon rest is still common in some regions.",
            motsInterdits: ["lit", "nuit", "rêve", "fatigué", "repos"]
        ),
        ChutCard(
            mot: "PETIT",
            traduction: "Small/Little",
            contexte: "The word petit is very common in French, appearing in phrases like petit déjeuner, petit ami (boyfriend), and petit à petit.",
            motsInterdits: ["grand", "taille", "minuscule", "court", "enfant"]
        ),
        ChutCard(
            mot: "GRAND",
            traduction: "Big/Tall",
            contexte: "The term 'grande surface' refers to a large supermarket or hypermarket, a common shopping destination in France.",
            motsInterdits: ["petit", "taille", "haut", "énorme", "large"]
        ),
        ChutCard(
            mot: "TEMPS",
            traduction: "Time/Weather",
            contexte: "This word means both time and weather in French. 'Quel temps fait-il?' means 'What is the weather like?'",
            motsInterdits: ["heure", "météo", "horloge", "moment", "pluie"]
        ),
        ChutCard(
            mot: "MAIN",
            traduction: "Hand",
            contexte: "Shaking hands (serrer la main) is the standard French greeting in professional settings, while friends do la bise.",
            motsInterdits: ["doigt", "bras", "corps", "toucher", "droite"]
        ),
        ChutCard(
            mot: "VILLE",
            traduction: "City/Town",
            contexte: "French cities often have an old town (vieille ville) with medieval streets and a more modern periphery.",
            motsInterdits: ["campagne", "habiter", "rue", "quartier", "urbain"]
        ),
        ChutCard(
            mot: "PLAGE",
            traduction: "Beach",
            contexte: "The beaches of the French Riviera and the Atlantic coast are major summer destinations for French families.",
            motsInterdits: ["mer", "sable", "vacances", "soleil", "nager"]
        ),

        // MARK: - Verbs

        ChutCard(
            mot: "MANGER",
            traduction: "To eat",
            contexte: "Meals in France are social events. The French typically take at least an hour for lunch, even on workdays.",
            motsInterdits: ["nourriture", "repas", "faim", "cuisine", "table"]
        ),
        ChutCard(
            mot: "MARCHER",
            traduction: "To walk",
            contexte: "Walking is a common way to get around in French cities, and Sunday strolls (promenades) are a cherished habit.",
            motsInterdits: ["pieds", "pas", "courir", "route", "promener"]
        ),
        ChutCard(
            mot: "JOUER",
            traduction: "To play",
            contexte: "Pétanque is a traditional French game played outdoors, especially popular in the south of France.",
            motsInterdits: ["jeu", "enfant", "amusement", "sport", "ballon"]
        ),
        ChutCard(
            mot: "PARLER",
            traduction: "To speak/To talk",
            contexte: "The French are proud of their language and appreciate when visitors make an effort to speak French.",
            motsInterdits: ["dire", "mot", "langue", "voix", "conversation"]
        ),
        ChutCard(
            mot: "TRAVAILLER",
            traduction: "To work",
            contexte: "France has a 35-hour work week, established by law in 2000, though many employees work more in practice.",
            motsInterdits: ["bureau", "emploi", "métier", "patron", "entreprise"]
        ),
        ChutCard(
            mot: "DANSER",
            traduction: "To dance",
            contexte: "France has a national music festival (Fête de la Musique) on June 21st where people dance in the streets.",
            motsInterdits: ["musique", "bouger", "bal", "rythme", "corps"]
        ),
        ChutCard(
            mot: "NAGER",
            traduction: "To swim",
            contexte: "Public swimming pools (piscines municipales) are found in most French towns and swimming caps are required.",
            motsInterdits: ["eau", "piscine", "mer", "plage", "crawl"]
        ),
        ChutCard(
            mot: "ÉCRIRE",
            traduction: "To write",
            contexte: "France has a rich literary tradition. French students practice dictée (dictation) regularly to master spelling.",
            motsInterdits: ["stylo", "papier", "lettre", "lire", "mot"]
        ),
        ChutCard(
            mot: "DESSINER",
            traduction: "To draw",
            contexte: "French schools emphasize arts plastiques (visual arts) as part of the standard curriculum from an early age.",
            motsInterdits: ["crayon", "papier", "image", "art", "peindre"]
        ),
        // MARK: - Colors

        ChutCard(
            mot: "BLANC",
            traduction: "White",
            contexte: "White is one of the three colors of the French flag. Vin blanc (white wine) is popular with seafood.",
            motsInterdits: ["couleur", "noir", "neige", "pur", "lait"]
        ),
        ChutCard(
            mot: "NOIR",
            traduction: "Black",
            contexte: "Film noir originated in France. 'Petit noir' is slang for an espresso in a café.",
            motsInterdits: ["couleur", "blanc", "sombre", "nuit", "foncé"]
        ),
        ChutCard(
            mot: "VERT",
            traduction: "Green",
            contexte: "Green spaces (espaces verts) are an important part of French urban planning, and many cities have large parks.",
            motsInterdits: ["couleur", "herbe", "arbre", "nature", "feuille"]
        ),
        ChutCard(
            mot: "JAUNE",
            traduction: "Yellow",
            contexte: "The gilets jaunes (yellow vests) movement in 2018-2019 became a major social and political event in France.",
            motsInterdits: ["couleur", "soleil", "citron", "or", "banane"]
        ),
        ChutCard(
            mot: "ORANGE",
            traduction: "Orange",
            contexte: "This word serves as both a color and a fruit in French. Orange juice (jus d'orange) is a breakfast staple.",
            motsInterdits: ["couleur", "fruit", "jus", "agrume", "rouge"]
        ),
        ChutCard(
            mot: "ROSE",
            traduction: "Pink",
            contexte: "Rosé wine (vin rosé) is extremely popular in France, especially during summer in Provence.",
            motsInterdits: ["couleur", "fleur", "rouge", "fille", "clair"]
        ),
        ChutCard(
            mot: "VIOLET",
            traduction: "Purple/Violet",
            contexte: "Lavender fields in Provence bloom in a beautiful violet color and are a major tourist attraction in summer.",
            motsInterdits: ["couleur", "bleu", "rouge", "lavande", "foncé"]
        ),
        // MARK: - Family & Body

        ChutCard(
            mot: "MÈRE",
            traduction: "Mother",
            contexte: "Fête des mères (Mother's Day) is celebrated on the last Sunday of May in France, a tradition since the 1900s.",
            motsInterdits: ["maman", "parent", "famille", "enfant", "femme"]
        ),
        ChutCard(
            mot: "PÈRE",
            traduction: "Father",
            contexte: "Le Père Noël is the French Santa Claus. Fête des pères (Father's Day) is celebrated in June.",
            motsInterdits: ["papa", "parent", "famille", "enfant", "homme"]
        ),
        ChutCard(
            mot: "FRÈRE",
            traduction: "Brother",
            contexte: "Liberté, Égalité, Fraternité (brotherhood) is the national motto, reflecting the importance of fraternal bonds.",
            motsInterdits: ["sœur", "famille", "garçon", "parent", "fils"]
        ),
        ChutCard(
            mot: "SŒUR",
            traduction: "Sister",
            contexte: "The word is also used for nuns in French (une sœur). Many French families are close-knit with strong sibling bonds.",
            motsInterdits: ["frère", "famille", "fille", "parent", "femme"]
        ),
        ChutCard(
            mot: "FILS",
            traduction: "Son",
            contexte: "In French, fils (son) and fille (daughter) are also used to mean boy and girl in some contexts.",
            motsInterdits: ["fille", "parent", "garçon", "famille", "enfant"]
        ),
        ChutCard(
            mot: "FILLE",
            traduction: "Daughter/Girl",
            contexte: "This word means both daughter and girl. 'Jeune fille' specifically means young woman or teenage girl.",
            motsInterdits: ["fils", "parent", "femme", "famille", "garçon"]
        ),
        ChutCard(
            mot: "BRAS",
            traduction: "Arm",
            contexte: "The expression 'à bras ouverts' (with open arms) means to welcome someone warmly in French.",
            motsInterdits: ["corps", "main", "épaule", "jambe", "muscle"]
        ),
        ChutCard(
            mot: "TÊTE",
            traduction: "Head",
            contexte: "The expression 'tête-à-tête' (head to head) has been adopted into English to mean a private conversation.",
            motsInterdits: ["corps", "cheveux", "visage", "cerveau", "chapeau"]
        ),
        ChutCard(
            mot: "PIED",
            traduction: "Foot",
            contexte: "The expression 'à pied' means on foot. French people walk a lot in cities, often preferring it to driving.",
            motsInterdits: ["chaussure", "marcher", "jambe", "orteil", "corps"]
        ),
        ChutCard(
            mot: "JAMBE",
            traduction: "Leg",
            contexte: "The expression 'prendre ses jambes à son cou' (to take your legs to your neck) means to run away quickly.",
            motsInterdits: ["pied", "corps", "genou", "marcher", "bras"]
        ),
        ChutCard(
            mot: "BOUCHE",
            traduction: "Mouth",
            contexte: "The expression 'bouche à oreille' (mouth to ear) means word of mouth. French cuisine uses 'amuse-bouche' for small appetizers.",
            motsInterdits: ["parler", "manger", "lèvre", "dent", "visage"]
        ),
        ChutCard(
            mot: "ŒIL",
            traduction: "Eye",
            contexte: "The expression 'mon œil!' is a colloquial French way to say 'yeah right!' or express disbelief.",
            motsInterdits: ["voir", "regard", "visage", "lunettes", "paupière"]
        ),
        ChutCard(
            mot: "NEZ",
            traduction: "Nose",
            contexte: "Cyrano de Bergerac, a famous French literary character, is known for his exceptionally large nose.",
            motsInterdits: ["visage", "sentir", "odeur", "respirer", "bouche"]
        ),
        // MARK: - Clothing

        ChutCard(
            mot: "CHAPEAU",
            traduction: "Hat",
            contexte: "The beret is the stereotypical French hat, though it is actually more traditional in the Basque region.",
            motsInterdits: ["tête", "porter", "béret", "vêtement", "casquette"]
        ),
        ChutCard(
            mot: "CHAUSSURE",
            traduction: "Shoe",
            contexte: "France is home to luxury shoe brands. It is customary to remove shoes when entering someone's home.",
            motsInterdits: ["pied", "porter", "marcher", "botte", "talon"]
        ),
        ChutCard(
            mot: "PANTALON",
            traduction: "Pants/Trousers",
            contexte: "Until 2013, there was technically an old law in Paris prohibiting women from wearing pants, though it was never enforced.",
            motsInterdits: ["jambe", "porter", "vêtement", "jean", "robe"]
        ),
        ChutCard(
            mot: "ROBE",
            traduction: "Dress",
            contexte: "French fashion houses like Dior and Chanel are known worldwide for their elegant dresses.",
            motsInterdits: ["vêtement", "porter", "femme", "jupe", "mode"]
        ),
        ChutCard(
            mot: "MANTEAU",
            traduction: "Coat",
            contexte: "A warm manteau is essential for Parisian winters, and French people tend to invest in quality outerwear.",
            motsInterdits: ["vêtement", "porter", "froid", "hiver", "veste"]
        ),

        // MARK: - Rooms in the house

        ChutCard(
            mot: "CUISINE",
            traduction: "Kitchen",
            contexte: "The kitchen is the heart of the French home, where families gather to prepare and share meals together.",
            motsInterdits: ["manger", "repas", "four", "cuisiner", "maison"]
        ),
        ChutCard(
            mot: "CHAMBRE",
            traduction: "Bedroom",
            contexte: "In French hotels, a chambre simple is a single room and a chambre double is a double room.",
            motsInterdits: ["dormir", "lit", "maison", "nuit", "pièce"]
        ),
        ChutCard(
            mot: "SALLE DE BAIN",
            traduction: "Bathroom",
            contexte: "In many French homes, the salle de bain has a bathtub or shower but the toilet is in a separate room.",
            motsInterdits: ["douche", "laver", "baignoire", "eau", "toilettes"]
        ),
        ChutCard(
            mot: "TOILETTES",
            traduction: "Restroom/Toilet",
            contexte: "In France, the toilet is often in a separate small room from the bathroom. Public toilets may require a coin.",
            motsInterdits: ["salle de bain", "WC", "eau", "papier", "pièce"]
        ),

        // MARK: - Nature & Weather

        ChutCard(
            mot: "ARBRE",
            traduction: "Tree",
            contexte: "The plane trees lining the avenues of Paris and southern French towns provide shade during summer.",
            motsInterdits: ["feuille", "bois", "forêt", "branche", "racine"]
        ),
        ChutCard(
            mot: "HERBE",
            traduction: "Grass",
            contexte: "Many French parks have signs saying 'Pelouse interdite' (Keep off the grass), though this is changing in some cities.",
            motsInterdits: ["vert", "jardin", "pelouse", "terre", "plante"]
        ),
        ChutCard(
            mot: "MONTAGNE",
            traduction: "Mountain",
            contexte: "France has two major mountain ranges: the Alps in the east and the Pyrenees in the south.",
            motsInterdits: ["sommet", "haut", "neige", "ski", "escalader"]
        ),
        ChutCard(
            mot: "RIVIÈRE",
            traduction: "River",
            contexte: "The Seine flows through Paris, and river cruises along it are a popular tourist activity.",
            motsInterdits: ["eau", "couler", "pont", "fleuve", "poisson"]
        ),
        ChutCard(
            mot: "MER",
            traduction: "Sea",
            contexte: "France has coastline on the Atlantic, the Mediterranean, the English Channel, and overseas territories.",
            motsInterdits: ["eau", "océan", "plage", "vague", "poisson"]
        ),
        ChutCard(
            mot: "NEIGE",
            traduction: "Snow",
            contexte: "Skiing in the French Alps is a popular winter holiday. Stations like Chamonix and Courchevel attract visitors worldwide.",
            motsInterdits: ["blanc", "froid", "hiver", "ski", "montagne"]
        ),
        ChutCard(
            mot: "VENT",
            traduction: "Wind",
            contexte: "The Mistral is a strong, cold wind that blows through the Rhône Valley in southern France.",
            motsInterdits: ["air", "souffler", "tempête", "fort", "froid"]
        ),
        ChutCard(
            mot: "NUAGE",
            traduction: "Cloud",
            contexte: "The expression 'être sur un nuage' (to be on a cloud) means to be extremely happy or daydreaming.",
            motsInterdits: ["ciel", "pluie", "blanc", "soleil", "gris"]
        ),

        // MARK: - Common objects

        ChutCard(
            mot: "CLÉ",
            traduction: "Key",
            contexte: "Apartment buildings in French cities often have a digicode, but individual apartment doors still require a key.",
            motsInterdits: ["porte", "ouvrir", "fermer", "serrure", "maison"]
        ),
        ChutCard(
            mot: "SAC",
            traduction: "Bag",
            contexte: "French luxury brands like Louis Vuitton and Hermès are known worldwide for their designer bags.",
            motsInterdits: ["porter", "main", "dos", "valise", "affaires"]
        ),
        ChutCard(
            mot: "LUNETTES",
            traduction: "Glasses",
            contexte: "In France, prescription glasses (lunettes de vue) are partially covered by the national health insurance system.",
            motsInterdits: ["voir", "yeux", "soleil", "vue", "nez"]
        ),
        ChutCard(
            mot: "MONTRE",
            traduction: "Watch",
            contexte: "While France has some watchmakers, Swiss watches remain prestigious. 'Montre' also means 'show' as a verb form.",
            motsInterdits: ["heure", "temps", "poignet", "bracelet", "horloge"]
        ),
        ChutCard(
            mot: "STYLO",
            traduction: "Pen",
            contexte: "French students traditionally write with fountain pens (stylo plume) in school, especially in primary school.",
            motsInterdits: ["écrire", "encre", "papier", "crayon", "main"]
        ),
        ChutCard(
            mot: "PAPIER",
            traduction: "Paper",
            contexte: "The word papier also means official documents. 'Vos papiers, s'il vous plaît' is what police say when checking ID.",
            motsInterdits: ["écrire", "feuille", "cahier", "blanc", "stylo"]
        ),
        // MARK: - Places

        ChutCard(
            mot: "MAGASIN",
            traduction: "Shop/Store",
            contexte: "Most shops in France are closed on Sundays, though this is gradually changing in large cities.",
            motsInterdits: ["acheter", "vendre", "boutique", "client", "argent"]
        ),
        ChutCard(
            mot: "HÔPITAL",
            traduction: "Hospital",
            contexte: "France has a universal healthcare system. Public hospitals provide care to everyone regardless of insurance status.",
            motsInterdits: ["médecin", "malade", "santé", "soigner", "urgence"]
        ),
        ChutCard(
            mot: "GARE",
            traduction: "Train station",
            contexte: "Paris has several major train stations (Gare du Nord, Gare de Lyon, etc.), each serving different regions.",
            motsInterdits: ["train", "voyage", "billet", "quai", "voyager"]
        ),
        ChutCard(
            mot: "AÉROPORT",
            traduction: "Airport",
            contexte: "Charles de Gaulle Airport near Paris is the largest in France and one of the busiest in Europe.",
            motsInterdits: ["avion", "voler", "voyage", "billet", "valise"]
        ),
        ChutCard(
            mot: "ÉGLISE",
            traduction: "Church",
            contexte: "France has many historic churches and cathedrals, including Notre-Dame de Paris, dating back centuries.",
            motsInterdits: ["religion", "prier", "Dieu", "messe", "cathédrale"]
        ),
        ChutCard(
            mot: "CINÉMA",
            traduction: "Movie theater",
            contexte: "France is the birthplace of cinema, thanks to the Lumière brothers. Going to the movies is still very popular.",
            motsInterdits: ["film", "regarder", "salle", "écran", "acteur"]
        ),

        // MARK: - Transportation

        ChutCard(
            mot: "AVION",
            traduction: "Airplane",
            contexte: "Air France is the national airline. France also participates in the Airbus consortium for aircraft manufacturing.",
            motsInterdits: ["voler", "ciel", "aéroport", "pilote", "voyage"]
        ),
        ChutCard(
            mot: "BATEAU",
            traduction: "Boat",
            contexte: "The Bateaux Mouches on the Seine are iconic Parisian tourist boats offering river cruises past landmarks.",
            motsInterdits: ["eau", "mer", "naviguer", "rivière", "port"]
        ),
        ChutCard(
            mot: "BUS",
            traduction: "Bus",
            contexte: "French cities have extensive bus networks. In Paris, bus routes offer a scenic way to see the city above ground.",
            motsInterdits: ["transport", "arrêt", "conduire", "passager", "route"]
        ),

        // MARK: - Emotions

        ChutCard(
            mot: "CONTENT",
            traduction: "Happy/Pleased",
            contexte: "This is a common everyday word for happy. 'Je suis content' is simpler and more casual than 'je suis heureux.'",
            motsInterdits: ["heureux", "joie", "sourire", "bonheur", "triste"]
        ),
        ChutCard(
            mot: "TRISTE",
            traduction: "Sad",
            contexte: "French culture embraces a wider range of emotions openly. Feeling triste is not seen as weakness.",
            motsInterdits: ["pleurer", "content", "malheureux", "larme", "peine"]
        ),
        ChutCard(
            mot: "FATIGUÉ",
            traduction: "Tired",
            contexte: "The French often say 'je suis fatigué(e)' as a common greeting response, especially during the workweek.",
            motsInterdits: ["dormir", "sommeil", "repos", "lit", "épuisé"]
        ),
        ChutCard(
            mot: "MALADE",
            traduction: "Sick/Ill",
            contexte: "When sick, the French visit their médecin traitant (regular doctor) who can prescribe medication reimbursed by social security.",
            motsInterdits: ["médecin", "hôpital", "santé", "fièvre", "docteur"]
        ),

        // MARK: - Days of the week

        ChutCard(
            mot: "LUNDI",
            traduction: "Monday",
            contexte: "Many French museums are closed on Mondays. The word comes from 'lune' (moon) like 'Moon-day.'",
            motsInterdits: ["jour", "semaine", "mardi", "lune", "travail"]
        ),

        // MARK: - Meals

        ChutCard(
            mot: "DÉJEUNER",
            traduction: "Lunch",
            contexte: "Lunch is the main meal of the day for many French people. A proper déjeuner can last one to two hours.",
            motsInterdits: ["manger", "repas", "midi", "dîner", "table"]
        ),
        ChutCard(
            mot: "DÎNER",
            traduction: "Dinner",
            contexte: "The French eat dinner late, typically around 8 PM. A dinner party (dîner entre amis) is an important social ritual.",
            motsInterdits: ["manger", "repas", "soir", "déjeuner", "table"]
        ),
        ChutCard(
            mot: "PETIT DÉJEUNER",
            traduction: "Breakfast",
            contexte: "A typical French breakfast is light: coffee or tea with a croissant, bread with butter and jam, or tartines.",
            motsInterdits: ["manger", "matin", "croissant", "café", "repas"]
        ),

        // MARK: - Food & Drink

        ChutCard(
            mot: "RIZ",
            traduction: "Rice",
            contexte: "The Camargue region in southern France is the main rice-growing area. Riz au lait is a classic French dessert.",
            motsInterdits: ["manger", "grain", "blanc", "cuire", "assiette"]
        ),
        ChutCard(
            mot: "POULET",
            traduction: "Chicken",
            contexte: "Poulet rôti (roast chicken) from the market rotisserie is a classic Sunday meal in many French households.",
            motsInterdits: ["viande", "animal", "manger", "œuf", "poule"]
        ),
        ChutCard(
            mot: "POISSON",
            traduction: "Fish",
            contexte: "On April 1st (Poisson d'Avril), French children tape paper fish to people's backs as an April Fools' prank.",
            motsInterdits: ["mer", "eau", "nager", "pêcher", "manger"]
        ),
        ChutCard(
            mot: "SALADE",
            traduction: "Salad",
            contexte: "A simple green salad with vinaigrette is served as a separate course in a traditional French meal.",
            motsInterdits: ["manger", "vert", "légume", "tomate", "laitue"]
        ),
        ChutCard(
            mot: "SOUPE",
            traduction: "Soup",
            contexte: "Soupe à l'oignon (French onion soup) is a beloved classic, traditionally served in the early morning hours at Les Halles.",
            motsInterdits: ["manger", "chaud", "liquide", "bol", "légume"]
        ),
        ChutCard(
            mot: "GÂTEAU",
            traduction: "Cake",
            contexte: "French pâtisseries offer an amazing variety of cakes and pastries. A galette des rois is eaten on Epiphany in January.",
            motsInterdits: ["sucre", "anniversaire", "dessert", "chocolat", "pâtisserie"]
        ),
        ChutCard(
            mot: "CHOCOLAT",
            traduction: "Chocolate",
            contexte: "French chocolate makers (chocolatiers) are renowned worldwide. Chocolate is a traditional Easter and Christmas gift.",
            motsInterdits: ["sucre", "cacao", "bonbon", "noir", "dessert"]
        ),
        ChutCard(
            mot: "CAFÉ",
            traduction: "Coffee",
            contexte: "French café culture is central to social life. Ordering 'un café' gets you an espresso, not a large filtered coffee.",
            motsInterdits: ["boire", "tasse", "matin", "noir", "bar"]
        ),
        ChutCard(
            mot: "THÉ",
            traduction: "Tea",
            contexte: "While coffee dominates, tea salons (salons de thé) are popular in France, especially for afternoon pastries.",
            motsInterdits: ["boire", "tasse", "chaud", "eau", "infusion"]
        ),
        ChutCard(
            mot: "JUS",
            traduction: "Juice",
            contexte: "Jus de fruits pressé (freshly squeezed juice) is a café staple, though it costs more than regular juice.",
            motsInterdits: ["boire", "fruit", "orange", "verre", "liquide"]
        ),

        // MARK: - Animals

        ChutCard(
            mot: "LAPIN",
            traduction: "Rabbit",
            contexte: "Lapin is also a popular meat dish in France. 'Mon lapin' is an affectionate nickname like 'honey' in English.",
            motsInterdits: ["animal", "oreille", "carotte", "sauter", "terrier"]
        ),
        ChutCard(
            mot: "CHEVAL",
            traduction: "Horse",
            contexte: "Horse racing is popular in France, with famous racetracks like Longchamp in Paris. Horse meat was traditionally eaten.",
            motsInterdits: ["animal", "monter", "galoper", "cavalier", "écurie"]
        ),
        ChutCard(
            mot: "VACHE",
            traduction: "Cow",
            contexte: "French cows produce the milk used for the country's famous cheeses. 'Oh la vache!' is a common exclamation of surprise.",
            motsInterdits: ["animal", "lait", "ferme", "fromage", "viande"]
        ),
        ChutCard(
            mot: "COCHON",
            traduction: "Pig",
            contexte: "Pork products (charcuterie) are central to French cuisine, from saucisson to pâté to jambon.",
            motsInterdits: ["animal", "ferme", "viande", "rose", "sale"]
        ),
        ChutCard(
            mot: "POULE",
            traduction: "Hen/Chicken",
            contexte: "La poule au pot (hen in the pot) is a traditional dish that King Henri IV wished every family could afford on Sundays.",
            motsInterdits: ["animal", "œuf", "ferme", "coq", "poulet"]
        ),
        ChutCard(
            mot: "MOUTON",
            traduction: "Sheep",
            contexte: "Sheep farming is important in regions like the Pyrenees. Mouton also means the meat (mutton) served at the table.",
            motsInterdits: ["animal", "laine", "ferme", "berger", "agneau"]
        ),
    ]

    static let intermediaireWords: [ChutCard] = [
        // MARK: - Original 41 prototype words

        ChutCard(
            mot: "VACANCES",
            traduction: "Vacation/Holidays",
            contexte: "French workers get at least five weeks of paid vacation. August is the traditional month when much of France goes on holiday.",
            motsInterdits: ["voyage", "été", "repos", "plage", "travail"]
        ),
        ChutCard(
            mot: "CUISINE",
            traduction: "Cooking/Cuisine",
            contexte: "French cuisine is UNESCO-listed as an intangible cultural heritage. It ranges from haute cuisine to simple home cooking.",
            motsInterdits: ["manger", "repas", "recette", "chef", "restaurant"]
        ),
        ChutCard(
            mot: "MUSIQUE",
            traduction: "Music",
            contexte: "The Fête de la Musique on June 21st fills every French street with free live performances of all genres.",
            motsInterdits: ["chanson", "écouter", "instrument", "chanter", "concert"]
        ),
        ChutCard(
            mot: "POLITIQUE",
            traduction: "Politics",
            contexte: "The French are famously passionate about politics. Debating political issues at dinner is common and expected.",
            motsInterdits: ["gouvernement", "président", "élection", "parti", "vote"]
        ),
        ChutCard(
            mot: "ARGENT",
            traduction: "Money",
            contexte: "Discussing money is considered taboo in France. Asking someone their salary or the price of their home is very impolite.",
            motsInterdits: ["euro", "payer", "banque", "riche", "billet"]
        ),
        ChutCard(
            mot: "SANTÉ",
            traduction: "Health",
            contexte: "France's healthcare system is one of the best in the world. 'Santé!' is also what you say when clinking glasses.",
            motsInterdits: ["médecin", "malade", "hôpital", "corps", "soigner"]
        ),
        ChutCard(
            mot: "SPORT",
            traduction: "Sport",
            contexte: "Football (soccer) is the most popular sport in France, followed by rugby, tennis, and cycling.",
            motsInterdits: ["jouer", "équipe", "match", "football", "exercice"]
        ),
        ChutCard(
            mot: "CINÉMA",
            traduction: "Cinema",
            contexte: "France invented cinema with the Lumière brothers. The Cannes Film Festival is the most prestigious in the world.",
            motsInterdits: ["film", "acteur", "regarder", "salle", "écran"]
        ),
        ChutCard(
            mot: "TRAVAIL",
            traduction: "Work",
            contexte: "The French 35-hour workweek is unique in Europe. The concept of work-life balance is deeply valued.",
            motsInterdits: ["bureau", "emploi", "métier", "entreprise", "patron"]
        ),
        ChutCard(
            mot: "NATURE",
            traduction: "Nature",
            contexte: "France has diverse natural landscapes from the Alps to the Atlantic coast, with many national parks and protected areas.",
            motsInterdits: ["arbre", "animal", "forêt", "plante", "environnement"]
        ),
        ChutCard(
            mot: "ANNIVERSAIRE",
            traduction: "Birthday/Anniversary",
            contexte: "French birthday parties often feature the song 'Joyeux Anniversaire.' Adults celebrate with dinner parties rather than big bashes.",
            motsInterdits: ["fête", "gâteau", "cadeau", "année", "naissance"]
        ),
        ChutCard(
            mot: "TÉLÉPHONE",
            traduction: "Telephone/Phone",
            contexte: "The French use 'portable' for cell phone. Phone etiquette is important; calling during meal times is considered rude.",
            motsInterdits: ["appeler", "numéro", "portable", "sonner", "message"]
        ),
        ChutCard(
            mot: "RESTAURANT",
            traduction: "Restaurant",
            contexte: "The concept of the restaurant was born in Paris. French restaurant meals typically last much longer than in other countries.",
            motsInterdits: ["manger", "repas", "serveur", "menu", "cuisine"]
        ),
        ChutCard(
            mot: "RANDONNÉE",
            traduction: "Hike/Hiking",
            contexte: "France has over 180,000 km of marked hiking trails (sentiers de grande randonnée). The GR trails are famous throughout Europe.",
            motsInterdits: ["marcher", "montagne", "nature", "chemin", "forêt"]
        ),
        ChutCard(
            mot: "RÊVE",
            traduction: "Dream",
            contexte: "The expression 'rêve éveillé' means daydream. French literature and cinema often explore the theme of dreams and reality.",
            motsInterdits: ["dormir", "nuit", "imaginer", "sommeil", "espoir"]
        ),
        ChutCard(
            mot: "LIBERTÉ",
            traduction: "Liberty/Freedom",
            contexte: "Liberté is the first word of France's national motto. The concept has deep roots in the French Revolution of 1789.",
            motsInterdits: ["libre", "droit", "révolution", "égalité", "fraternité"]
        ),
        ChutCard(
            mot: "AMOUR",
            traduction: "Love",
            contexte: "Paris is called the City of Love. French culture celebrates romance through literature, cinema, and daily life.",
            motsInterdits: ["aimer", "cœur", "couple", "romantique", "passion"]
        ),
        ChutCard(
            mot: "GUERRE",
            traduction: "War",
            contexte: "World War I and II deeply shaped modern France. November 11th is a national holiday honoring the armistice.",
            motsInterdits: ["soldat", "armée", "combat", "paix", "bataille"]
        ),
        ChutCard(
            mot: "MARCHÉ",
            traduction: "Market",
            contexte: "Open-air markets are central to French life. Most towns have weekly markets selling fresh produce, cheese, and local goods.",
            motsInterdits: ["acheter", "vendre", "légume", "fruit", "commerce"]
        ),
        ChutCard(
            mot: "QUARTIER",
            traduction: "Neighborhood/District",
            contexte: "Each Parisian quartier has its own character. The Quartier Latin is famous for its student and intellectual atmosphere.",
            motsInterdits: ["ville", "rue", "habiter", "voisin", "arrondissement"]
        ),
        ChutCard(
            mot: "BONHEUR",
            traduction: "Happiness",
            contexte: "The pursuit of happiness is a recurring theme in French philosophy. The expression 'au petit bonheur la chance' means leaving things to luck.",
            motsInterdits: ["heureux", "joie", "content", "sourire", "triste"]
        ),
        ChutCard(
            mot: "VOYAGE",
            traduction: "Trip/Travel",
            contexte: "The French love to travel and often take multiple trips per year, both within France and abroad.",
            motsInterdits: ["vacances", "avion", "partir", "valise", "destination"]
        ),
        ChutCard(
            mot: "HISTOIRE",
            traduction: "History/Story",
            contexte: "This word means both history and story. France's rich history from the Romans to the Revolution shapes the national identity.",
            motsInterdits: ["passé", "raconter", "livre", "ancien", "événement"]
        ),
        ChutCard(
            mot: "FORÊT",
            traduction: "Forest",
            contexte: "France has many beautiful forests. The Forest of Fontainebleau near Paris is popular for rock climbing and hiking.",
            motsInterdits: ["arbre", "bois", "nature", "animal", "vert"]
        ),
        ChutCard(
            mot: "SOLITUDE",
            traduction: "Solitude/Loneliness",
            contexte: "French culture has a more positive view of solitude than many cultures, seeing it as necessary for reflection and creativity.",
            motsInterdits: ["seul", "triste", "isolé", "personne", "silence"]
        ),
        ChutCard(
            mot: "CONFIANCE",
            traduction: "Trust/Confidence",
            contexte: "Building confiance takes time in French culture. Trust in personal relationships is earned gradually through consistent behavior.",
            motsInterdits: ["croire", "foi", "sûr", "fidèle", "ami"]
        ),
        ChutCard(
            mot: "SURPRISE",
            traduction: "Surprise",
            contexte: "Surprise parties exist in France but are less common than in the US. A kinder surprise (chocolate egg) is a beloved treat.",
            motsInterdits: ["inattendu", "fête", "cadeau", "étonner", "secret"]
        ),
        ChutCard(
            mot: "RECETTE",
            traduction: "Recipe",
            contexte: "French families often guard their recettes de famille (family recipes) and pass them down through generations.",
            motsInterdits: ["cuisine", "ingrédient", "préparer", "plat", "cuisiner"]
        ),
        ChutCard(
            mot: "VOISIN",
            traduction: "Neighbor",
            contexte: "The Fête des Voisins (Neighbors' Day) in May encourages building connections between neighbors in apartment buildings.",
            motsInterdits: ["habiter", "maison", "quartier", "côté", "immeuble"]
        ),
        ChutCard(
            mot: "PRINTEMPS",
            traduction: "Spring",
            contexte: "Spring is beautiful in France with cherry blossoms and outdoor café terraces reopening. Le Printemps is also a famous department store.",
            motsInterdits: ["saison", "fleur", "été", "mars", "chaud"]
        ),
        ChutCard(
            mot: "PEUR",
            traduction: "Fear",
            contexte: "The expression 'avoir une peur bleue' (to have a blue fear) means to be terrified. French horror cinema has a strong tradition.",
            motsInterdits: ["effrayé", "danger", "crier", "terrifié", "angoisse"]
        ),
        ChutCard(
            mot: "CADEAU",
            traduction: "Gift/Present",
            contexte: "In France, bringing a small cadeau when invited to dinner is customary: wine, flowers, or chocolates are typical choices.",
            motsInterdits: ["donner", "anniversaire", "Noël", "offrir", "emballer"]
        ),
        ChutCard(
            mot: "RETARD",
            traduction: "Delay/Being late",
            contexte: "Being fashionably late (un quart d'heure de politesse) is somewhat accepted in social settings but not in professional ones.",
            motsInterdits: ["tard", "attendre", "heure", "temps", "arriver"]
        ),
        ChutCard(
            mot: "MÉTRO",
            traduction: "Subway/Metro",
            contexte: "The Paris Métro is one of the densest subway systems in the world with 16 lines and over 300 stations.",
            motsInterdits: ["train", "Paris", "station", "souterrain", "transport"]
        ),
        ChutCard(
            mot: "BAGUETTE",
            traduction: "Baguette (French bread)",
            contexte: "The traditional French baguette was added to UNESCO's intangible cultural heritage in 2022. A proper one has only flour, water, yeast, and salt.",
            motsInterdits: ["pain", "boulangerie", "farine", "manger", "croûte"]
        ),
        ChutCard(
            mot: "IMPÔT",
            traduction: "Tax",
            contexte: "France has some of the highest tax rates in Europe, funding extensive public services and social programs.",
            motsInterdits: ["argent", "payer", "gouvernement", "revenu", "état"]
        ),
        ChutCard(
            mot: "GRASSE MATINÉE",
            traduction: "Sleeping in/Lie-in",
            contexte: "Faire la grasse matinée (to have a fat morning) is a cherished weekend pleasure for many French people.",
            motsInterdits: ["dormir", "lit", "matin", "tard", "week-end"]
        ),
        ChutCard(
            mot: "PARAPLUIE",
            traduction: "Umbrella",
            contexte: "The famous French film 'Les Parapluies de Cherbourg' (The Umbrellas of Cherbourg) brought this word international fame.",
            motsInterdits: ["pluie", "eau", "mouillé", "protéger", "ouvrir"]
        ),
        ChutCard(
            mot: "CAMPAGNE",
            traduction: "Countryside",
            contexte: "Many French people dream of retiring to the campagne. Weekend trips to the countryside are a common escape from city life.",
            motsInterdits: ["ville", "nature", "ferme", "rural", "champ"]
        ),
        ChutCard(
            mot: "EMBOUTEILLAGE",
            traduction: "Traffic jam",
            contexte: "French highways see massive embouteillages on July 1st and August 1st as vacationers head to holiday destinations.",
            motsInterdits: ["voiture", "route", "circulation", "attendre", "autoroute"]
        ),
        ChutCard(
            mot: "SIESTE",
            traduction: "Nap/Siesta",
            contexte: "While not as traditional as in Spain, the afternoon sieste is appreciated in southern France, especially during hot summers.",
            motsInterdits: ["dormir", "après-midi", "repos", "lit", "fatigué"]
        ),

        // MARK: - Media

        ChutCard(
            mot: "ACTUALITÉ",
            traduction: "Current events/News",
            contexte: "The French follow l'actualité closely. TV news programs like the 20 heures (8 PM news) are widely watched.",
            motsInterdits: ["nouvelle", "journal", "information", "télévision", "monde"]
        ),
        ChutCard(
            mot: "CHANSON",
            traduction: "Song",
            contexte: "La chanson française is a respected art form. Artists like Édith Piaf, Jacques Brel, and Stromae are national treasures.",
            motsInterdits: ["musique", "chanter", "paroles", "mélodie", "artiste"]
        ),
        ChutCard(
            mot: "JOURNAL",
            traduction: "Newspaper/Diary",
            contexte: "Major French newspapers include Le Monde, Le Figaro, and Libération, each with its own political leaning.",
            motsInterdits: ["lire", "nouvelle", "article", "presse", "information"]
        ),
        ChutCard(
            mot: "ÉMISSION",
            traduction: "TV show/Broadcast",
            contexte: "French TV has many popular émissions de variétés (variety shows) and talk shows that are cultural institutions.",
            motsInterdits: ["télévision", "regarder", "programme", "chaîne", "écran"]
        ),
        ChutCard(
            mot: "PUBLICITÉ",
            traduction: "Advertisement/Advertising",
            contexte: "French advertising is known for being creative and sometimes provocative. TV ads are limited to 12 minutes per hour by law.",
            motsInterdits: ["vendre", "produit", "télévision", "marque", "acheter"]
        ),

        // MARK: - Education

        ChutCard(
            mot: "UNIVERSITÉ",
            traduction: "University",
            contexte: "French public universities have very low tuition fees compared to the US or UK, typically only a few hundred euros per year.",
            motsInterdits: ["étudiant", "diplôme", "étudier", "cours", "faculté"]
        ),
        ChutCard(
            mot: "DIPLÔME",
            traduction: "Diploma/Degree",
            contexte: "The French education system highly values diplomas. A Grande École diploma carries enormous prestige in the job market.",
            motsInterdits: ["université", "étude", "examen", "réussir", "école"]
        ),
        ChutCard(
            mot: "EXAMEN",
            traduction: "Exam",
            contexte: "The baccalauréat (bac) is the crucial end-of-secondary-school exam that determines university admission in France.",
            motsInterdits: ["test", "étudier", "note", "réussir", "question"]
        ),
        ChutCard(
            mot: "COURS",
            traduction: "Class/Lesson",
            contexte: "French university courses often follow the format of lectures (cours magistraux) and smaller tutorial sessions (travaux dirigés).",
            motsInterdits: ["école", "professeur", "étudier", "leçon", "apprendre"]
        ),
        ChutCard(
            mot: "DEVOIR",
            traduction: "Homework/Duty",
            contexte: "French students receive significant homework. The word also means duty, as in 'devoir civique' (civic duty).",
            motsInterdits: ["école", "exercice", "maison", "travail", "élève"]
        ),

        // MARK: - Life events

        ChutCard(
            mot: "MARIAGE",
            traduction: "Wedding/Marriage",
            contexte: "In France, only civil marriages at the mairie (town hall) are legally recognized. Church weddings are optional and separate.",
            motsInterdits: ["épouser", "mari", "femme", "alliance", "cérémonie"]
        ),
        ChutCard(
            mot: "DIVORCE",
            traduction: "Divorce",
            contexte: "France has a relatively high divorce rate. The process can be done by mutual consent, now even without a judge.",
            motsInterdits: ["mariage", "séparer", "couple", "mari", "femme"]
        ),
        ChutCard(
            mot: "NAISSANCE",
            traduction: "Birth",
            contexte: "France has one of the highest birth rates in Europe. Parents receive a prime de naissance (birth bonus) from the government.",
            motsInterdits: ["bébé", "naître", "enfant", "accoucher", "hôpital"]
        ),
        ChutCard(
            mot: "ENTERREMENT",
            traduction: "Funeral/Burial",
            contexte: "French funerals are solemn occasions. The Père Lachaise cemetery in Paris is famous for the graves of many celebrated figures.",
            motsInterdits: ["mort", "cimetière", "décès", "cercueil", "deuil"]
        ),

        // MARK: - Housing

        ChutCard(
            mot: "APPARTEMENT",
            traduction: "Apartment",
            contexte: "Most Parisians live in apartments, often in Haussmann-era buildings with characteristic iron balconies and zinc rooftops.",
            motsInterdits: ["habiter", "immeuble", "louer", "maison", "pièce"]
        ),
        ChutCard(
            mot: "LOYER",
            traduction: "Rent",
            contexte: "Paris rents are notoriously high. Rent control laws exist in some French cities to keep housing affordable.",
            motsInterdits: ["payer", "appartement", "argent", "mois", "propriétaire"]
        ),
        ChutCard(
            mot: "DÉMÉNAGEMENT",
            traduction: "Moving (house)",
            contexte: "Many Parisians move on the same dates, creating a rush. The expression 'pendaison de crémaillère' is a housewarming party.",
            motsInterdits: ["maison", "appartement", "carton", "partir", "habiter"]
        ),
        ChutCard(
            mot: "PROPRIÉTAIRE",
            traduction: "Owner/Landlord",
            contexte: "Tenant rights are very strong in France. Landlords cannot evict tenants during the winter truce (November to March).",
            motsInterdits: ["louer", "maison", "appartement", "loyer", "locataire"]
        ),

        // MARK: - Society & Politics

        ChutCard(
            mot: "GRÈVE",
            traduction: "Strike",
            contexte: "Strikes are a fundamental right in France and a common form of protest. Transport strikes can paralyze the country.",
            motsInterdits: ["travailler", "manifestation", "syndicat", "arrêt", "protester"]
        ),
        ChutCard(
            mot: "MANIFESTATION",
            traduction: "Protest/Demonstration",
            contexte: "Street demonstrations are deeply embedded in French political culture, from the Revolution to the modern gilets jaunes movement.",
            motsInterdits: ["protester", "rue", "grève", "marcher", "revendiquer"]
        ),
        ChutCard(
            mot: "ÉLECTION",
            traduction: "Election",
            contexte: "French presidential elections occur every five years with two rounds. Voter turnout is typically higher than in the US.",
            motsInterdits: ["vote", "président", "candidat", "politique", "parti"]
        ),
        ChutCard(
            mot: "LOI",
            traduction: "Law",
            contexte: "The Napoleonic Code forms the basis of French law and has influenced legal systems across Europe and beyond.",
            motsInterdits: ["règle", "justice", "droit", "tribunal", "gouvernement"]
        ),

        // MARK: - Environment

        ChutCard(
            mot: "POLLUTION",
            traduction: "Pollution",
            contexte: "Paris sometimes implements alternate driving days during pollution peaks. Many cities are expanding low-emission zones.",
            motsInterdits: ["air", "voiture", "environnement", "sale", "fumée"]
        ),
        ChutCard(
            mot: "RECYCLAGE",
            traduction: "Recycling",
            contexte: "France has been improving its recycling infrastructure. Different colored bins are used for sorting waste in most cities.",
            motsInterdits: ["poubelle", "déchet", "trier", "plastique", "environnement"]
        ),
        ChutCard(
            mot: "ENVIRONNEMENT",
            traduction: "Environment",
            contexte: "Environmental awareness is growing in France. The country hosted the landmark Paris Climate Agreement (COP21) in 2015.",
            motsInterdits: ["nature", "pollution", "écologie", "planète", "climat"]
        ),
        ChutCard(
            mot: "CLIMAT",
            traduction: "Climate",
            contexte: "France has diverse climates, from oceanic in the northwest to Mediterranean in the south and continental in the east.",
            motsInterdits: ["temps", "température", "chaud", "froid", "météo"]
        ),

        // MARK: - Health

        ChutCard(
            mot: "MÉDECIN",
            traduction: "Doctor",
            contexte: "The French have a médecin traitant (regular doctor) who coordinates their care. House calls are still somewhat common.",
            motsInterdits: ["malade", "hôpital", "santé", "soigner", "patient"]
        ),
        ChutCard(
            mot: "PHARMACIE",
            traduction: "Pharmacy",
            contexte: "French pharmacies are identified by a green cross sign. Pharmacists give medical advice and many medications require prescriptions.",
            motsInterdits: ["médicament", "malade", "ordonnance", "santé", "docteur"]
        ),
        ChutCard(
            mot: "ORDONNANCE",
            traduction: "Prescription",
            contexte: "Many medications that are over-the-counter elsewhere require an ordonnance in France, including common antibiotics.",
            motsInterdits: ["médecin", "médicament", "pharmacie", "docteur", "malade"]
        ),
        ChutCard(
            mot: "ALLERGIE",
            traduction: "Allergy",
            contexte: "Food allergies must be declared in French restaurants, and menus are required to list common allergens.",
            motsInterdits: ["réaction", "peau", "manger", "éternuer", "médecin"]
        ),
        ChutCard(
            mot: "RHUME",
            traduction: "Cold (illness)",
            contexte: "The French are firm believers that going outside with wet hair or in cold weather causes a rhume. Pharmacies sell many remedies.",
            motsInterdits: ["malade", "nez", "tousser", "fièvre", "éternuer"]
        ),

        // MARK: - Work & Career

        ChutCard(
            mot: "RÉUNION",
            traduction: "Meeting",
            contexte: "French work culture is known for frequent and sometimes long meetings. The expression 'réunionite' mocks excessive meetings.",
            motsInterdits: ["bureau", "travail", "collègue", "discuter", "salle"]
        ),
        ChutCard(
            mot: "PATRON",
            traduction: "Boss",
            contexte: "The relationship between boss and employee in France is more hierarchical than in many Anglo-Saxon countries.",
            motsInterdits: ["chef", "travail", "entreprise", "employé", "diriger"]
        ),
        ChutCard(
            mot: "COLLÈGUE",
            traduction: "Colleague/Coworker",
            contexte: "Workplace relationships in France tend to be more formal. Using 'vous' with colleagues is common in many companies.",
            motsInterdits: ["travail", "bureau", "ami", "ensemble", "entreprise"]
        ),
        ChutCard(
            mot: "SALAIRE",
            traduction: "Salary/Wage",
            contexte: "Discussing salaries is taboo in France. The SMIC is the legal minimum wage, adjusted annually by the government.",
            motsInterdits: ["argent", "travail", "payer", "mois", "revenu"]
        ),
        ChutCard(
            mot: "CHÔMAGE",
            traduction: "Unemployment",
            contexte: "France has a generous unemployment insurance system. The expression 'être au chômage' means to be unemployed.",
            motsInterdits: ["travail", "emploi", "chercher", "payer", "allocation"]
        ),

        // MARK: - Arts & Culture

        ChutCard(
            mot: "THÉÂTRE",
            traduction: "Theater",
            contexte: "Paris has a vibrant theater scene. The Comédie-Française, founded in 1680, is the world's oldest active theater company.",
            motsInterdits: ["acteur", "scène", "pièce", "spectacle", "jouer"]
        ),
        ChutCard(
            mot: "MUSÉE",
            traduction: "Museum",
            contexte: "France has over 1,200 museums. The Louvre is the most visited museum in the world with millions of visitors annually.",
            motsInterdits: ["art", "peinture", "visiter", "exposition", "tableau"]
        ),
        ChutCard(
            mot: "EXPOSITION",
            traduction: "Exhibition",
            contexte: "Major exhibitions in Paris attract long queues. Many museums offer evening openings for special exhibitions.",
            motsInterdits: ["musée", "art", "montrer", "tableau", "visiter"]
        ),
        ChutCard(
            mot: "SCULPTURE",
            traduction: "Sculpture",
            contexte: "Auguste Rodin is France's most famous sculptor. His museum in Paris houses 'The Thinker' and other masterworks.",
            motsInterdits: ["art", "statue", "pierre", "musée", "artiste"]
        ),
        ChutCard(
            mot: "PEINTURE",
            traduction: "Painting",
            contexte: "France is home to Impressionism, one of the most influential art movements, with painters like Monet, Renoir, and Degas.",
            motsInterdits: ["art", "tableau", "musée", "couleur", "artiste"]
        ),

        // MARK: - Restaurant & Dining

        ChutCard(
            mot: "PLAT",
            traduction: "Dish/Main course",
            contexte: "In a French restaurant, the plat principal (main course) comes after the entrée (starter), unlike in American usage.",
            motsInterdits: ["manger", "assiette", "repas", "cuisine", "menu"]
        ),
        ChutCard(
            mot: "ENTRÉE",
            traduction: "Starter/Appetizer",
            contexte: "In French dining, the entrée is the starter course, not the main course as in American English. This is a common source of confusion.",
            motsInterdits: ["repas", "plat", "premier", "manger", "début"]
        ),
        ChutCard(
            mot: "DESSERT",
            traduction: "Dessert",
            contexte: "The French dessert course is an important part of any meal. Classic choices include crème brûlée, tarte tatin, and mousse au chocolat.",
            motsInterdits: ["sucre", "gâteau", "repas", "fin", "chocolat"]
        ),
        ChutCard(
            mot: "ADDITION",
            traduction: "Check/Bill (restaurant)",
            contexte: "In France, you must ask for the check as waiters consider it rude to bring it before you request it. Say 'l'addition, s'il vous plaît.'",
            motsInterdits: ["payer", "restaurant", "argent", "serveur", "prix"]
        ),
        ChutCard(
            mot: "POURBOIRE",
            traduction: "Tip",
            contexte: "Service is included in French restaurant bills by law. Leaving a small extra pourboire is appreciated but not expected.",
            motsInterdits: ["argent", "serveur", "restaurant", "payer", "addition"]
        ),

        // MARK: - Travel

        ChutCard(
            mot: "PASSEPORT",
            traduction: "Passport",
            contexte: "Within the EU Schengen zone, French citizens can travel without a passport, but it is needed for destinations outside Europe.",
            motsInterdits: ["voyage", "identité", "frontière", "avion", "pays"]
        ),
        ChutCard(
            mot: "DOUANE",
            traduction: "Customs",
            contexte: "Within the EU there are no customs checks. Arriving from outside the EU, you may need to declare certain goods at la douane.",
            motsInterdits: ["frontière", "aéroport", "contrôle", "pays", "déclarer"]
        ),
        ChutCard(
            mot: "VALISE",
            traduction: "Suitcase",
            contexte: "Louis Vuitton started as a trunk and luggage maker in Paris. The word valise has been borrowed into English in some contexts.",
            motsInterdits: ["voyage", "bagage", "avion", "partir", "vêtement"]
        ),
        ChutCard(
            mot: "HÔTEL",
            traduction: "Hotel",
            contexte: "French hotels are rated by stars (1 to 5). An 'hôtel de ville' is not a hotel but a town hall.",
            motsInterdits: ["dormir", "chambre", "voyage", "nuit", "réservation"]
        ),
        ChutCard(
            mot: "RÉSERVATION",
            traduction: "Reservation/Booking",
            contexte: "Making a reservation is highly recommended at French restaurants, especially for dinner. Popular places book up weeks in advance.",
            motsInterdits: ["réserver", "restaurant", "hôtel", "table", "place"]
        ),

        // MARK: - Job Search

        ChutCard(
            mot: "EMBAUCHE",
            traduction: "Hiring",
            contexte: "French labor laws make the hiring process formal. CDI (permanent contract) is the most sought-after type of employment.",
            motsInterdits: ["travail", "emploi", "recruter", "candidat", "poste"]
        ),
        ChutCard(
            mot: "ENTRETIEN",
            traduction: "Interview/Meeting",
            contexte: "French job interviews (entretiens d'embauche) tend to be formal. Candidates typically use 'vous' and dress conservatively.",
            motsInterdits: ["travail", "question", "candidat", "embauche", "répondre"]
        ),
        ChutCard(
            mot: "CV",
            traduction: "Resume/CV",
            contexte: "French CVs traditionally include a photo, date of birth, and marital status, though this is becoming less common.",
            motsInterdits: ["travail", "expérience", "emploi", "lettre", "candidature"]
        ),
        // MARK: - Holidays & Celebrations

        ChutCard(
            mot: "FÊTE",
            traduction: "Party/Celebration/Holiday",
            contexte: "France has many public holidays (jours fériés). When one falls on a Tuesday or Thursday, the French often 'faire le pont' and take the extra day off.",
            motsInterdits: ["célébrer", "anniversaire", "Noël", "danser", "musique"]
        ),
        ChutCard(
            mot: "NOËL",
            traduction: "Christmas",
            contexte: "French Christmas is celebrated with a réveillon (Christmas Eve dinner). The bûche de Noël (Yule log cake) is the traditional dessert.",
            motsInterdits: ["décembre", "cadeau", "sapin", "Père Noël", "famille"]
        ),
        ChutCard(
            mot: "PÂQUES",
            traduction: "Easter",
            contexte: "In France, Easter bells (les cloches de Pâques) fly from Rome to deliver chocolate eggs, rather than the Easter Bunny.",
            motsInterdits: ["chocolat", "œuf", "religion", "printemps", "dimanche"]
        ),
        ChutCard(
            mot: "CARNAVAL",
            traduction: "Carnival",
            contexte: "The Carnival of Nice is one of the largest in the world. Children dress up and throw confetti during carnaval season.",
            motsInterdits: ["fête", "déguiser", "masque", "défiler", "costume"]
        ),

        // MARK: - Books & Literature

        ChutCard(
            mot: "BIBLIOTHÈQUE",
            traduction: "Library",
            contexte: "The Bibliothèque nationale de France is one of the largest libraries in the world. 'Bibliothèque' is a famously hard word to pronounce.",
            motsInterdits: ["livre", "lire", "emprunter", "étudier", "silence"]
        ),
        ChutCard(
            mot: "LIBRAIRIE",
            traduction: "Bookshop",
            contexte: "A librairie is a bookshop, not a library (which is bibliothèque). This is a common false friend between French and English.",
            motsInterdits: ["livre", "acheter", "lire", "vendre", "magasin"]
        ),
        ChutCard(
            mot: "ROMAN",
            traduction: "Novel",
            contexte: "France has a strong literary tradition. The prix Goncourt is the most prestigious French literary award for novels.",
            motsInterdits: ["livre", "lire", "histoire", "écrire", "auteur"]
        ),
        ChutCard(
            mot: "POÉSIE",
            traduction: "Poetry",
            contexte: "French poetry has a rich tradition from Ronsard to Baudelaire to Prévert. Poetry is still taught extensively in schools.",
            motsInterdits: ["vers", "écrire", "poète", "rime", "littérature"]
        ),

        // MARK: - Driving & Transport

        ChutCard(
            mot: "AUTOROUTE",
            traduction: "Highway/Motorway",
            contexte: "Most French autoroutes are toll roads (péage). They are well-maintained and have rest areas (aires de repos) with facilities.",
            motsInterdits: ["voiture", "route", "conduire", "vitesse", "péage"]
        ),
        ChutCard(
            mot: "PERMIS DE CONDUIRE",
            traduction: "Driver's license",
            contexte: "Getting a driver's license in France is expensive and difficult, often costing over 1,500 euros with mandatory driving school hours.",
            motsInterdits: ["voiture", "conduire", "examen", "route", "auto-école"]
        ),
        ChutCard(
            mot: "ESSENCE",
            traduction: "Gasoline/Petrol",
            contexte: "Fuel is expensive in France due to high taxes. Diesel used to be cheaper but the gap has narrowed due to environmental policies.",
            motsInterdits: ["voiture", "station", "carburant", "moteur", "prix"]
        ),
        ChutCard(
            mot: "PÉAGE",
            traduction: "Toll/Tollbooth",
            contexte: "French autoroute tolls can add up on long trips. Electronic badges (télépéage) allow drivers to pass without stopping.",
            motsInterdits: ["autoroute", "payer", "route", "voiture", "argent"]
        ),

        // MARK: - Fashion & Luxury

        ChutCard(
            mot: "BIJOU",
            traduction: "Jewel/Jewelry",
            contexte: "Place Vendôme in Paris is the center of French high jewelry, home to Cartier, Boucheron, and other prestigious houses.",
            motsInterdits: ["or", "bague", "collier", "porter", "précieux"]
        ),
        ChutCard(
            mot: "PARFUM",
            traduction: "Perfume",
            contexte: "Grasse in Provence is the world capital of perfume. French perfume houses like Chanel and Guerlain are legendary.",
            motsInterdits: ["odeur", "sentir", "fleur", "bouteille", "Chanel"]
        ),
        ChutCard(
            mot: "MODE",
            traduction: "Fashion",
            contexte: "Paris Fashion Week is one of the most important events in the fashion calendar, showcasing both haute couture and prêt-à-porter.",
            motsInterdits: ["vêtement", "style", "tendance", "designer", "Paris"]
        ),
        ChutCard(
            mot: "TENDANCE",
            traduction: "Trend",
            contexte: "The French often set global trends in fashion, food, and lifestyle, though many French people prefer classic over trendy styles.",
            motsInterdits: ["mode", "nouveau", "populaire", "style", "actuel"]
        ),

        // MARK: - Household chores

        ChutCard(
            mot: "MÉNAGE",
            traduction: "Housework/Cleaning",
            contexte: "Faire le ménage means to do housework. 'Femme de ménage' is a cleaning lady, a common household help in France.",
            motsInterdits: ["nettoyer", "maison", "propre", "balai", "ranger"]
        ),
        ChutCard(
            mot: "LESSIVE",
            traduction: "Laundry",
            contexte: "Many French apartments have small washing machines. Dryers are less common; hanging clothes to dry is still very popular.",
            motsInterdits: ["laver", "vêtement", "machine", "propre", "linge"]
        ),
        ChutCard(
            mot: "VAISSELLE",
            traduction: "Dishes/Dishwashing",
            contexte: "Faire la vaisselle (doing the dishes) is still done by hand in many French homes, though dishwashers are becoming more common.",
            motsInterdits: ["laver", "assiette", "cuisine", "eau", "manger"]
        ),

        // MARK: - Weather (advanced)

        ChutCard(
            mot: "ORAGE",
            traduction: "Thunderstorm",
            contexte: "Summer thunderstorms are common in southern and central France. The expression 'il y a de l'orage dans l'air' means trouble is brewing.",
            motsInterdits: ["pluie", "tonnerre", "éclair", "ciel", "tempête"]
        ),
        ChutCard(
            mot: "BROUILLARD",
            traduction: "Fog",
            contexte: "Autumn fog is common in the valleys and plains of France, sometimes causing dangerous driving conditions on highways.",
            motsInterdits: ["voir", "route", "gris", "nuage", "matin"]
        ),
        ChutCard(
            mot: "CANICULE",
            traduction: "Heatwave",
            contexte: "The deadly 2003 canicule killed thousands in France. The government now has a plan canicule with alerts and prevention measures.",
            motsInterdits: ["chaud", "été", "soleil", "température", "chaleur"]
        ),
        ChutCard(
            mot: "SÉCHERESSE",
            traduction: "Drought",
            contexte: "Droughts have become more frequent in France due to climate change, sometimes leading to water usage restrictions in summer.",
            motsInterdits: ["eau", "pluie", "sec", "été", "chaleur"]
        ),

        // MARK: - Emotions (advanced)

        ChutCard(
            mot: "SOURIRE",
            traduction: "Smile",
            contexte: "The French don't smile as readily at strangers as Americans do. A genuine French smile usually indicates real warmth.",
            motsInterdits: ["bouche", "heureux", "rire", "content", "visage"]
        ),
        ChutCard(
            mot: "COLÈRE",
            traduction: "Anger",
            contexte: "French culture allows for more open expression of frustration. Political anger often translates into strikes and demonstrations.",
            motsInterdits: ["fâché", "crier", "furieux", "énervé", "violent"]
        ),
        ChutCard(
            mot: "JALOUSIE",
            traduction: "Jealousy",
            contexte: "Jalousie is a recurring theme in French literature and cinema, from Molière's plays to modern films.",
            motsInterdits: ["envie", "amour", "couple", "sentiment", "désir"]
        ),
        ChutCard(
            mot: "FIERTÉ",
            traduction: "Pride",
            contexte: "The French are known for national pride, particularly regarding their language, culture, cuisine, and intellectual traditions.",
            motsInterdits: ["fier", "orgueil", "honneur", "national", "sentiment"]
        ),
        ChutCard(
            mot: "HONTE",
            traduction: "Shame",
            contexte: "The expression 'avoir honte' (to be ashamed) is commonly used. 'C'est la honte!' is slang for 'that's embarrassing!'",
            motsInterdits: ["gêne", "rouge", "embarrassé", "sentiment", "cacher"]
        ),
        ChutCard(
            mot: "ENNUI",
            traduction: "Boredom",
            contexte: "French existentialist writers like Sartre explored ennui as a philosophical concept. The word has been borrowed into English.",
            motsInterdits: ["ennuyer", "intérêt", "fatigué", "triste", "occuper"]
        ),
        ChutCard(
            mot: "SOULAGEMENT",
            traduction: "Relief",
            contexte: "The expression 'quel soulagement!' (what a relief!) is commonly used after stressful situations like exam results or medical tests.",
            motsInterdits: ["soulagé", "stress", "peur", "respirer", "calme"]
        ),
    ]
}
