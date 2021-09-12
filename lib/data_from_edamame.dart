
class DataFromEdamame {
  int from;
  int to;
  int count;
  Links links;
  List<Hits> hits;

  DataFromEdamame({this.from, this.to, this.count, this.links, this.hits});

  DataFromEdamame.fromJson(Map<String, dynamic> json) {
    if(json["from"] is int)
      this.from = json["from"];
    if(json["to"] is int)
      this.to = json["to"];
    if(json["count"] is int)
      this.count = json["count"];
    if(json["_links"] is Map)
      this.links = json["_links"] == null ? null : Links.fromJson(json["_links"]);
    if(json["hits"] is List)
      this.hits = json["hits"]==null ? null : (json["hits"] as List).map((e)=>Hits.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["from"] = this.from;
    data["to"] = this.to;
    data["count"] = this.count;
    if(this.links != null)
      data["_links"] = this.links.toJson();
    if(this.hits != null)
      data["hits"] = this.hits.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Hits {
  Recipe recipe;
  Links1 links;

  Hits({this.recipe, this.links});

  Hits.fromJson(Map<String, dynamic> json) {
    if(json["recipe"] is Map)
      this.recipe = json["recipe"] == null ? null : Recipe.fromJson(json["recipe"]);
    if(json["_links"] is Map)
      this.links = json["_links"] == null ? null : Links1.fromJson(json["_links"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.recipe != null)
      data["recipe"] = this.recipe.toJson();
    if(this.links != null)
      data["_links"] = this.links.toJson();
    return data;
  }
}

class Links1 {
  Self1 self;
  Next1 next;

  Links1({this.self, this.next});

  Links1.fromJson(Map<String, dynamic> json) {
    if(json["self"] is Map)
      this.self = json["self"] == null ? null : Self1.fromJson(json["self"]);
    if(json["next"] is Map)
      this.next = json["next"] == null ? null : Next1.fromJson(json["next"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.self != null)
      data["self"] = this.self.toJson();
    if(this.next != null)
      data["next"] = this.next.toJson();
    return data;
  }
}

class Next1 {
  String href;
  String title;

  Next1({this.href, this.title});

  Next1.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String)
      this.href = json["href"];
    if(json["title"] is String)
      this.title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["href"] = this.href;
    data["title"] = this.title;
    return data;
  }
}

class Self1 {
  String href;
  String title;

  Self1({this.href, this.title});

  Self1.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String)
      this.href = json["href"];
    if(json["title"] is String)
      this.title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["href"] = this.href;
    data["title"] = this.title;
    return data;
  }
}

class Recipe {
  String uri;
  String label;
  String image;
  String source;
  String url;
  String shareAs;
  int yield;
  List<String> dietLabels;
  List<String> healthLabels;
  List<String> cautions;
  List<String> ingredientLines;
  List<Ingredients> ingredients;
  int calories;
  int totalWeight;
  List<String> cuisineType;
  List<String> mealType;
  List<String> dishType;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;
  List<Digest> digest;

  Recipe({this.uri, this.label, this.image, this.source, this.url, this.shareAs, this.yield, this.dietLabels, this.healthLabels, this.cautions, this.ingredientLines, this.ingredients, this.calories, this.totalWeight, this.cuisineType, this.mealType, this.dishType, this.totalNutrients, this.totalDaily, this.digest});

  Recipe.fromJson(Map<String, dynamic> json) {
    if(json["uri"] is String)
      this.uri = json["uri"];
    if(json["label"] is String)
      this.label = json["label"];
    if(json["image"] is String)
      this.image = json["image"];
    if(json["source"] is String)
      this.source = json["source"];
    if(json["url"] is String)
      this.url = json["url"];
    if(json["shareAs"] is String)
      this.shareAs = json["shareAs"];
    if(json["yield"] is int)
      this.yield = json["yield"];
    if(json["dietLabels"] is List)
      this.dietLabels = json["dietLabels"]==null ? null : List<String>.from(json["dietLabels"]);
    if(json["healthLabels"] is List)
      this.healthLabels = json["healthLabels"]==null ? null : List<String>.from(json["healthLabels"]);
    if(json["cautions"] is List)
      this.cautions = json["cautions"]==null ? null : List<String>.from(json["cautions"]);
    if(json["ingredientLines"] is List)
      this.ingredientLines = json["ingredientLines"]==null ? null : List<String>.from(json["ingredientLines"]);
    if(json["ingredients"] is List)
      this.ingredients = json["ingredients"]==null ? null : (json["ingredients"] as List).map((e)=>Ingredients.fromJson(e)).toList();
    if(json["calories"] is int)
      this.calories = json["calories"];
    if(json["totalWeight"] is int)
      this.totalWeight = json["totalWeight"];
    if(json["cuisineType"] is List)
      this.cuisineType = json["cuisineType"]==null ? null : List<String>.from(json["cuisineType"]);
    if(json["mealType"] is List)
      this.mealType = json["mealType"]==null ? null : List<String>.from(json["mealType"]);
    if(json["dishType"] is List)
      this.dishType = json["dishType"]==null ? null : List<String>.from(json["dishType"]);
    if(json["totalNutrients"] is Map)
      this.totalNutrients = json["totalNutrients"] == null ? null : TotalNutrients.fromJson(json["totalNutrients"]);
    if(json["totalDaily"] is Map)
      this.totalDaily = json["totalDaily"] == null ? null : TotalDaily.fromJson(json["totalDaily"]);
    if(json["digest"] is List)
      this.digest = json["digest"]==null ? null : (json["digest"] as List).map((e)=>Digest.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["uri"] = this.uri;
    data["label"] = this.label;
    data["image"] = this.image;
    data["source"] = this.source;
    data["url"] = this.url;
    data["shareAs"] = this.shareAs;
    data["yield"] = this.yield;
    if(this.dietLabels != null)
      data["dietLabels"] = this.dietLabels;
    if(this.healthLabels != null)
      data["healthLabels"] = this.healthLabels;
    if(this.cautions != null)
      data["cautions"] = this.cautions;
    if(this.ingredientLines != null)
      data["ingredientLines"] = this.ingredientLines;
    if(this.ingredients != null)
      data["ingredients"] = this.ingredients.map((e)=>e.toJson()).toList();
    data["calories"] = this.calories;
    data["totalWeight"] = this.totalWeight;
    if(this.cuisineType != null)
      data["cuisineType"] = this.cuisineType;
    if(this.mealType != null)
      data["mealType"] = this.mealType;
    if(this.dishType != null)
      data["dishType"] = this.dishType;
    if(this.totalNutrients != null)
      data["totalNutrients"] = this.totalNutrients.toJson();
    if(this.totalDaily != null)
      data["totalDaily"] = this.totalDaily.toJson();
    if(this.digest != null)
      data["digest"] = this.digest.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Digest {
  String label;
  String tag;
  String schemaOrgTag;
  int total;
  bool hasRdi;
  int daily;
  String unit;
  Sub sub;

  Digest({this.label, this.tag, this.schemaOrgTag, this.total, this.hasRdi, this.daily, this.unit, this.sub});

  Digest.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["tag"] is String)
      this.tag = json["tag"];
    if(json["schemaOrgTag"] is String)
      this.schemaOrgTag = json["schemaOrgTag"];
    if(json["total"] is int)
      this.total = json["total"];
    if(json["hasRDI"] is bool)
      this.hasRdi = json["hasRDI"];
    if(json["daily"] is int)
      this.daily = json["daily"];
    if(json["unit"] is String)
      this.unit = json["unit"];
    if(json["sub"] is Map)
      this.sub = json["sub"] == null ? null : Sub.fromJson(json["sub"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["tag"] = this.tag;
    data["schemaOrgTag"] = this.schemaOrgTag;
    data["total"] = this.total;
    data["hasRDI"] = this.hasRdi;
    data["daily"] = this.daily;
    data["unit"] = this.unit;
    if(this.sub != null)
      data["sub"] = this.sub.toJson();
    return data;
  }
}

class Sub {
  Sub();

  Sub.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}

class TotalDaily {
  TotalDaily();

  TotalDaily.fromJson(Map<String, dynamic> json) ;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}

class TotalNutrients {
  TotalNutrients();

  TotalNutrients.fromJson(Map<String, dynamic> json) ;
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}

class Ingredients {
  String text;
  int quantity;
  String measure;
  String food;
  int weight;
  String foodId;

  Ingredients({this.text, this.quantity, this.measure, this.food, this.weight, this.foodId});

  Ingredients.fromJson(Map<String, dynamic> json) {
    if(json["text"] is String)
      this.text = json["text"];
    if(json["quantity"] is int)
      this.quantity = json["quantity"];
    if(json["measure"] is String)
      this.measure = json["measure"];
    if(json["food"] is String)
      this.food = json["food"];
    if(json["weight"] is int)
      this.weight = json["weight"];
    if(json["foodId"] is String)
      this.foodId = json["foodId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["text"] = this.text;
    data["quantity"] = this.quantity;
    data["measure"] = this.measure;
    data["food"] = this.food;
    data["weight"] = this.weight;
    data["foodId"] = this.foodId;
    return data;
  }
}

class Links {
  Self self;
  Next next;

  Links({this.self, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    if(json["self"] is Map)
      this.self = json["self"] == null ? null : Self.fromJson(json["self"]);
    if(json["next"] is Map)
      this.next = json["next"] == null ? null : Next.fromJson(json["next"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.self != null)
      data["self"] = this.self.toJson();
    if(this.next != null)
      data["next"] = this.next.toJson();
    return data;
  }
}

class Next {
  String href;
  String title;

  Next({this.href, this.title});

  Next.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String)
      this.href = json["href"];
    if(json["title"] is String)
      this.title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["href"] = this.href;
    data["title"] = this.title;
    return data;
  }
}

class Self {
  String href;
  String title;

  Self({this.href, this.title});

  Self.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String)
      this.href = json["href"];
    if(json["title"] is String)
      this.title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["href"] = this.href;
    data["title"] = this.title;
    return data;
  }
}