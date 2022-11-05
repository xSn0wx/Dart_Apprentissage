void test() {
  // Variables
  var name = "gateau au choc"; //String
  var nbPerson = 4 + 10; //int
  var chocoGramme = 15.5; //double
  var isFavorite = true; // bool
  print("Nombre de personne $nbPerson, ${nbPerson + chocoGramme}");
  String? nom = null;
  // nom est null
  String nameToprint = nom ?? "Guest user";
  nameToprint = nom != null ? nom : "Guest user";
  // Si nom est null alors il vaut "Guest user"
  
  // Liste
  var ingredients = ["Chocolat", "Farine"]; // List<String>
  ingredients.add("Sucre");
  print(ingredients);
  /* Set<String> ingredients = Set();
     set = liste sans doublons*/
  
  // Hashmap (clée valeur)
  Map<String, double> ingredient = {
    "Chocolat" : 266.5,
    "Farine" : 66.5
  };
  print(ingredient["Chocolat"]); // valeur de Chocolat

  // Condition
  var price = 3;
  if(price < 5) {
    print("Bon marché");
  } else if (price >= 5 && price < 10) { // && = et et || = ou
    print("Moyen");
  } else {
    print("Cher");
  }
  // ==
  var nbStep = 3;
  switch(nbStep) {
    case 1 : {
      print("Très facile");
      break;
    }
    case 2 : {
      print("Moyenne");
      break;
    }
    default : {
      print("Difficile");
      break;
    }
  }

  // Boucles
  List<String> alimentation = ["Chocolat", "Farine", "Sucre", "Beurre", "Oeuf"];
  for (int i = 0; i < alimentation.length; i++) {
    print(alimentation[i]);
  }
  // ==
  for (var a in alimentation) {
    print(a);
  }
  var i = 0;
  while(i < alimentation.length && alimentation[i] != "Beurre") {
    print(alimentation[i]);
    i++;
  }
  do {
    print(alimentation[i]);
    i++;
  } while (i < alimentation.length && alimentation[i] != "Beurre");
  // la boucle do permet de faire au moins une fois la boucle
}

void main() {
    print(getSteps(3, "Coucou"));
  // print(getSteps( nbSteps : 3, prefix :"Coucou"));


  Dessert recipe = Dessert(name : "Gateau Choco", nourriture : ["oeuf", "farine", "sucre"], steps : ["Etape 1", "Etape 2"]);
  print(recipe.nourriture);
}

// Fonction
String getSteps(int nbSteps, [String prefix = "Etape"]) { 
  // getSteps({ required int nbSteps, required String prefix})
  var result = "";
  for (int i = 0; i < nbSteps; i++) {
    result = result + "$prefix ${i+1}\n";
  }
  return result;
}

// class

class Recipe {
  String name;
  List<String> nourriture;
  List<String> steps;
  String type;

  Recipe({required this.name, required this.nourriture, required this.steps, required this.type});
}

class Dessert extends Recipe {
  Dessert({required String name, required List<String> nourriture, required List<String> steps}) : super(name: name, nourriture: nourriture, steps: steps, type: "Dessert");
}