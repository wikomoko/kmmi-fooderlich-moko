
class DataFromAPi {
  int from;
  int to;
  int count;
  Links links;
  List<Hits> hits;

  DataFromAPi({this.from, this.to, this.count, this.links, this.hits});

  DataFromAPi.fromJson(Map<String, dynamic> json) {
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
  Self self;

  Links1({this.self});

  Links1.fromJson(Map<String, dynamic> json) {
    if(json["self"] is Map)
      this.self = json["self"] == null ? null : Self.fromJson(json["self"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.self != null)
      data["self"] = this.self.toJson();
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
  double calories;
  double totalWeight;
  int totalTime;
  List<String> cuisineType;
  List<String> mealType;
  List<String> dishType;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;
  List<Digest> digest;

  Recipe({this.uri, this.label, this.image, this.source, this.url, this.shareAs, this.yield, this.dietLabels, this.healthLabels, this.cautions, this.ingredientLines, this.ingredients, this.calories, this.totalWeight, this.totalTime, this.cuisineType, this.mealType, this.dishType, this.totalNutrients, this.totalDaily, this.digest});

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
    if(json["calories"] is double)
      this.calories = json["calories"];
    if(json["totalWeight"] is double)
      this.totalWeight = json["totalWeight"];
    if(json["totalTime"] is int)
      this.totalTime = json["totalTime"];
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
    data["totalTime"] = this.totalTime;
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
  double total;
  bool hasRdi;
  double daily;
  String unit;
  List<Sub> sub;

  Digest({this.label, this.tag, this.schemaOrgTag, this.total, this.hasRdi, this.daily, this.unit, this.sub});

  Digest.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["tag"] is String)
      this.tag = json["tag"];
    if(json["schemaOrgTag"] is String)
      this.schemaOrgTag = json["schemaOrgTag"];
    if(json["total"] is double)
      this.total = json["total"];
    if(json["hasRDI"] is bool)
      this.hasRdi = json["hasRDI"];
    if(json["daily"] is double)
      this.daily = json["daily"];
    if(json["unit"] is String)
      this.unit = json["unit"];
    if(json["sub"] is List)
      this.sub = json["sub"]==null ? null : (json["sub"] as List).map((e)=>Sub.fromJson(e)).toList();
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
      data["sub"] = this.sub.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Sub {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRdi;
  double daily;
  String unit;

  Sub({this.label, this.tag, this.schemaOrgTag, this.total, this.hasRdi, this.daily, this.unit});

  Sub.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["tag"] is String)
      this.tag = json["tag"];
    if(json["schemaOrgTag"] is String)
      this.schemaOrgTag = json["schemaOrgTag"];
    if(json["total"] is double)
      this.total = json["total"];
    if(json["hasRDI"] is bool)
      this.hasRdi = json["hasRDI"];
    if(json["daily"] is double)
      this.daily = json["daily"];
    if(json["unit"] is String)
      this.unit = json["unit"];
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
    return data;
  }
}

class TotalDaily {
  EnercKcal1 enercKcal;
  Fat1 fat;
  Fasat1 fasat;
  Chocdf1 chocdf;
  Fibtg1 fibtg;
  Procnt1 procnt;
  Chole1 chole;
  Na1 na;
  Ca1 ca;
  Mg1 mg;
  K1 k;
  Fe1 fe;
  Zn1 zn;
  P1 p;
  VitaRae1 vitaRae;
  Vitc1 vitc;
  Thia1 thia;
  Ribf1 ribf;
  Nia1 nia;
  Vitb6A1 vitb6A;
  Foldfe1 foldfe;
  Vitb121 vitb12;
  Vitd1 vitd;
  Tocpha1 tocpha;
  Vitk11 vitk1;

  TotalDaily({this.enercKcal, this.fat, this.fasat, this.chocdf, this.fibtg, this.procnt, this.chole, this.na, this.ca, this.mg, this.k, this.fe, this.zn, this.p, this.vitaRae, this.vitc, this.thia, this.ribf, this.nia, this.vitb6A, this.foldfe, this.vitb12, this.vitd, this.tocpha, this.vitk1});

  TotalDaily.fromJson(Map<String, dynamic> json) {
    if(json["ENERC_KCAL"] is Map)
      this.enercKcal = json["ENERC_KCAL"] == null ? null : EnercKcal1.fromJson(json["ENERC_KCAL"]);
    if(json["FAT"] is Map)
      this.fat = json["FAT"] == null ? null : Fat1.fromJson(json["FAT"]);
    if(json["FASAT"] is Map)
      this.fasat = json["FASAT"] == null ? null : Fasat1.fromJson(json["FASAT"]);
    if(json["CHOCDF"] is Map)
      this.chocdf = json["CHOCDF"] == null ? null : Chocdf1.fromJson(json["CHOCDF"]);
    if(json["FIBTG"] is Map)
      this.fibtg = json["FIBTG"] == null ? null : Fibtg1.fromJson(json["FIBTG"]);
    if(json["PROCNT"] is Map)
      this.procnt = json["PROCNT"] == null ? null : Procnt1.fromJson(json["PROCNT"]);
    if(json["CHOLE"] is Map)
      this.chole = json["CHOLE"] == null ? null : Chole1.fromJson(json["CHOLE"]);
    if(json["NA"] is Map)
      this.na = json["NA"] == null ? null : Na1.fromJson(json["NA"]);
    if(json["CA"] is Map)
      this.ca = json["CA"] == null ? null : Ca1.fromJson(json["CA"]);
    if(json["MG"] is Map)
      this.mg = json["MG"] == null ? null : Mg1.fromJson(json["MG"]);
    if(json["K"] is Map)
      this.k = json["K"] == null ? null : K1.fromJson(json["K"]);
    if(json["FE"] is Map)
      this.fe = json["FE"] == null ? null : Fe1.fromJson(json["FE"]);
    if(json["ZN"] is Map)
      this.zn = json["ZN"] == null ? null : Zn1.fromJson(json["ZN"]);
    if(json["P"] is Map)
      this.p = json["P"] == null ? null : P1.fromJson(json["P"]);
    if(json["VITA_RAE"] is Map)
      this.vitaRae = json["VITA_RAE"] == null ? null : VitaRae1.fromJson(json["VITA_RAE"]);
    if(json["VITC"] is Map)
      this.vitc = json["VITC"] == null ? null : Vitc1.fromJson(json["VITC"]);
    if(json["THIA"] is Map)
      this.thia = json["THIA"] == null ? null : Thia1.fromJson(json["THIA"]);
    if(json["RIBF"] is Map)
      this.ribf = json["RIBF"] == null ? null : Ribf1.fromJson(json["RIBF"]);
    if(json["NIA"] is Map)
      this.nia = json["NIA"] == null ? null : Nia1.fromJson(json["NIA"]);
    if(json["VITB6A"] is Map)
      this.vitb6A = json["VITB6A"] == null ? null : Vitb6A1.fromJson(json["VITB6A"]);
    if(json["FOLDFE"] is Map)
      this.foldfe = json["FOLDFE"] == null ? null : Foldfe1.fromJson(json["FOLDFE"]);
    if(json["VITB12"] is Map)
      this.vitb12 = json["VITB12"] == null ? null : Vitb121.fromJson(json["VITB12"]);
    if(json["VITD"] is Map)
      this.vitd = json["VITD"] == null ? null : Vitd1.fromJson(json["VITD"]);
    if(json["TOCPHA"] is Map)
      this.tocpha = json["TOCPHA"] == null ? null : Tocpha1.fromJson(json["TOCPHA"]);
    if(json["VITK1"] is Map)
      this.vitk1 = json["VITK1"] == null ? null : Vitk11.fromJson(json["VITK1"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.enercKcal != null)
      data["ENERC_KCAL"] = this.enercKcal.toJson();
    if(this.fat != null)
      data["FAT"] = this.fat.toJson();
    if(this.fasat != null)
      data["FASAT"] = this.fasat.toJson();
    if(this.chocdf != null)
      data["CHOCDF"] = this.chocdf.toJson();
    if(this.fibtg != null)
      data["FIBTG"] = this.fibtg.toJson();
    if(this.procnt != null)
      data["PROCNT"] = this.procnt.toJson();
    if(this.chole != null)
      data["CHOLE"] = this.chole.toJson();
    if(this.na != null)
      data["NA"] = this.na.toJson();
    if(this.ca != null)
      data["CA"] = this.ca.toJson();
    if(this.mg != null)
      data["MG"] = this.mg.toJson();
    if(this.k != null)
      data["K"] = this.k.toJson();
    if(this.fe != null)
      data["FE"] = this.fe.toJson();
    if(this.zn != null)
      data["ZN"] = this.zn.toJson();
    if(this.p != null)
      data["P"] = this.p.toJson();
    if(this.vitaRae != null)
      data["VITA_RAE"] = this.vitaRae.toJson();
    if(this.vitc != null)
      data["VITC"] = this.vitc.toJson();
    if(this.thia != null)
      data["THIA"] = this.thia.toJson();
    if(this.ribf != null)
      data["RIBF"] = this.ribf.toJson();
    if(this.nia != null)
      data["NIA"] = this.nia.toJson();
    if(this.vitb6A != null)
      data["VITB6A"] = this.vitb6A.toJson();
    if(this.foldfe != null)
      data["FOLDFE"] = this.foldfe.toJson();
    if(this.vitb12 != null)
      data["VITB12"] = this.vitb12.toJson();
    if(this.vitd != null)
      data["VITD"] = this.vitd.toJson();
    if(this.tocpha != null)
      data["TOCPHA"] = this.tocpha.toJson();
    if(this.vitk1 != null)
      data["VITK1"] = this.vitk1.toJson();
    return data;
  }
}

class Vitk11 {
  String label;
  double quantity;
  String unit;

  Vitk11({this.label, this.quantity, this.unit});

  Vitk11.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Tocpha1 {
  String label;
  double quantity;
  String unit;

  Tocpha1({this.label, this.quantity, this.unit});

  Tocpha1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitd1 {
  String label;
  double quantity;
  String unit;

  Vitd1({this.label, this.quantity, this.unit});

  Vitd1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitb121 {
  String label;
  double quantity;
  String unit;

  Vitb121({this.label, this.quantity, this.unit});

  Vitb121.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Foldfe1 {
  String label;
  double quantity;
  String unit;

  Foldfe1({this.label, this.quantity, this.unit});

  Foldfe1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitb6A1 {
  String label;
  double quantity;
  String unit;

  Vitb6A1({this.label, this.quantity, this.unit});

  Vitb6A1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Nia1 {
  String label;
  double quantity;
  String unit;

  Nia1({this.label, this.quantity, this.unit});

  Nia1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Ribf1 {
  String label;
  double quantity;
  String unit;

  Ribf1({this.label, this.quantity, this.unit});

  Ribf1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Thia1 {
  String label;
  double quantity;
  String unit;

  Thia1({this.label, this.quantity, this.unit});

  Thia1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitc1 {
  String label;
  double quantity;
  String unit;

  Vitc1({this.label, this.quantity, this.unit});

  Vitc1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class VitaRae1 {
  String label;
  double quantity;
  String unit;

  VitaRae1({this.label, this.quantity, this.unit});

  VitaRae1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class P1 {
  String label;
  double quantity;
  String unit;

  P1({this.label, this.quantity, this.unit});

  P1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Zn1 {
  String label;
  double quantity;
  String unit;

  Zn1({this.label, this.quantity, this.unit});

  Zn1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fe1 {
  String label;
  double quantity;
  String unit;

  Fe1({this.label, this.quantity, this.unit});

  Fe1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class K1 {
  String label;
  double quantity;
  String unit;

  K1({this.label, this.quantity, this.unit});

  K1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Mg1 {
  String label;
  double quantity;
  String unit;

  Mg1({this.label, this.quantity, this.unit});

  Mg1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Ca1 {
  String label;
  double quantity;
  String unit;

  Ca1({this.label, this.quantity, this.unit});

  Ca1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Na1 {
  String label;
  double quantity;
  String unit;

  Na1({this.label, this.quantity, this.unit});

  Na1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Chole1 {
  String label;
  double quantity;
  String unit;

  Chole1({this.label, this.quantity, this.unit});

  Chole1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Procnt1 {
  String label;
  double quantity;
  String unit;

  Procnt1({this.label, this.quantity, this.unit});

  Procnt1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fibtg1 {
  String label;
  double quantity;
  String unit;

  Fibtg1({this.label, this.quantity, this.unit});

  Fibtg1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Chocdf1 {
  String label;
  double quantity;
  String unit;

  Chocdf1({this.label, this.quantity, this.unit});

  Chocdf1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fasat1 {
  String label;
  double quantity;
  String unit;

  Fasat1({this.label, this.quantity, this.unit});

  Fasat1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fat1 {
  String label;
  double quantity;
  String unit;

  Fat1({this.label, this.quantity, this.unit});

  Fat1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class EnercKcal1 {
  String label;
  double quantity;
  String unit;

  EnercKcal1({this.label, this.quantity, this.unit});

  EnercKcal1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class TotalNutrients {
  EnercKcal enercKcal;
  Fat fat;
  Fasat fasat;
  Fatrn fatrn;
  Fams fams;
  Fapu fapu;
  Chocdf chocdf;
  Fibtg fibtg;
  Sugar sugar;
  Procnt procnt;
  Chole chole;
  Na na;
  Ca ca;
  Mg mg;
  K k;
  Fe fe;
  Zn zn;
  P p;
  VitaRae vitaRae;
  Vitc vitc;
  Thia thia;
  Ribf ribf;
  Nia nia;
  Vitb6A vitb6A;
  Foldfe foldfe;
  Folfd folfd;
  Folac folac;
  Vitb12 vitb12;
  Vitd vitd;
  Tocpha tocpha;
  Vitk1 vitk1;
  Water water;

  TotalNutrients({this.enercKcal, this.fat, this.fasat, this.fatrn, this.fams, this.fapu, this.chocdf, this.fibtg, this.sugar, this.procnt, this.chole, this.na, this.ca, this.mg, this.k, this.fe, this.zn, this.p, this.vitaRae, this.vitc, this.thia, this.ribf, this.nia, this.vitb6A, this.foldfe, this.folfd, this.folac, this.vitb12, this.vitd, this.tocpha, this.vitk1, this.water});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    if(json["ENERC_KCAL"] is Map)
      this.enercKcal = json["ENERC_KCAL"] == null ? null : EnercKcal.fromJson(json["ENERC_KCAL"]);
    if(json["FAT"] is Map)
      this.fat = json["FAT"] == null ? null : Fat.fromJson(json["FAT"]);
    if(json["FASAT"] is Map)
      this.fasat = json["FASAT"] == null ? null : Fasat.fromJson(json["FASAT"]);
    if(json["FATRN"] is Map)
      this.fatrn = json["FATRN"] == null ? null : Fatrn.fromJson(json["FATRN"]);
    if(json["FAMS"] is Map)
      this.fams = json["FAMS"] == null ? null : Fams.fromJson(json["FAMS"]);
    if(json["FAPU"] is Map)
      this.fapu = json["FAPU"] == null ? null : Fapu.fromJson(json["FAPU"]);
    if(json["CHOCDF"] is Map)
      this.chocdf = json["CHOCDF"] == null ? null : Chocdf.fromJson(json["CHOCDF"]);
    if(json["FIBTG"] is Map)
      this.fibtg = json["FIBTG"] == null ? null : Fibtg.fromJson(json["FIBTG"]);
    if(json["SUGAR"] is Map)
      this.sugar = json["SUGAR"] == null ? null : Sugar.fromJson(json["SUGAR"]);
    if(json["PROCNT"] is Map)
      this.procnt = json["PROCNT"] == null ? null : Procnt.fromJson(json["PROCNT"]);
    if(json["CHOLE"] is Map)
      this.chole = json["CHOLE"] == null ? null : Chole.fromJson(json["CHOLE"]);
    if(json["NA"] is Map)
      this.na = json["NA"] == null ? null : Na.fromJson(json["NA"]);
    if(json["CA"] is Map)
      this.ca = json["CA"] == null ? null : Ca.fromJson(json["CA"]);
    if(json["MG"] is Map)
      this.mg = json["MG"] == null ? null : Mg.fromJson(json["MG"]);
    if(json["K"] is Map)
      this.k = json["K"] == null ? null : K.fromJson(json["K"]);
    if(json["FE"] is Map)
      this.fe = json["FE"] == null ? null : Fe.fromJson(json["FE"]);
    if(json["ZN"] is Map)
      this.zn = json["ZN"] == null ? null : Zn.fromJson(json["ZN"]);
    if(json["P"] is Map)
      this.p = json["P"] == null ? null : P.fromJson(json["P"]);
    if(json["VITA_RAE"] is Map)
      this.vitaRae = json["VITA_RAE"] == null ? null : VitaRae.fromJson(json["VITA_RAE"]);
    if(json["VITC"] is Map)
      this.vitc = json["VITC"] == null ? null : Vitc.fromJson(json["VITC"]);
    if(json["THIA"] is Map)
      this.thia = json["THIA"] == null ? null : Thia.fromJson(json["THIA"]);
    if(json["RIBF"] is Map)
      this.ribf = json["RIBF"] == null ? null : Ribf.fromJson(json["RIBF"]);
    if(json["NIA"] is Map)
      this.nia = json["NIA"] == null ? null : Nia.fromJson(json["NIA"]);
    if(json["VITB6A"] is Map)
      this.vitb6A = json["VITB6A"] == null ? null : Vitb6A.fromJson(json["VITB6A"]);
    if(json["FOLDFE"] is Map)
      this.foldfe = json["FOLDFE"] == null ? null : Foldfe.fromJson(json["FOLDFE"]);
    if(json["FOLFD"] is Map)
      this.folfd = json["FOLFD"] == null ? null : Folfd.fromJson(json["FOLFD"]);
    if(json["FOLAC"] is Map)
      this.folac = json["FOLAC"] == null ? null : Folac.fromJson(json["FOLAC"]);
    if(json["VITB12"] is Map)
      this.vitb12 = json["VITB12"] == null ? null : Vitb12.fromJson(json["VITB12"]);
    if(json["VITD"] is Map)
      this.vitd = json["VITD"] == null ? null : Vitd.fromJson(json["VITD"]);
    if(json["TOCPHA"] is Map)
      this.tocpha = json["TOCPHA"] == null ? null : Tocpha.fromJson(json["TOCPHA"]);
    if(json["VITK1"] is Map)
      this.vitk1 = json["VITK1"] == null ? null : Vitk1.fromJson(json["VITK1"]);
    if(json["WATER"] is Map)
      this.water = json["WATER"] == null ? null : Water.fromJson(json["WATER"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.enercKcal != null)
      data["ENERC_KCAL"] = this.enercKcal.toJson();
    if(this.fat != null)
      data["FAT"] = this.fat.toJson();
    if(this.fasat != null)
      data["FASAT"] = this.fasat.toJson();
    if(this.fatrn != null)
      data["FATRN"] = this.fatrn.toJson();
    if(this.fams != null)
      data["FAMS"] = this.fams.toJson();
    if(this.fapu != null)
      data["FAPU"] = this.fapu.toJson();
    if(this.chocdf != null)
      data["CHOCDF"] = this.chocdf.toJson();
    if(this.fibtg != null)
      data["FIBTG"] = this.fibtg.toJson();
    if(this.sugar != null)
      data["SUGAR"] = this.sugar.toJson();
    if(this.procnt != null)
      data["PROCNT"] = this.procnt.toJson();
    if(this.chole != null)
      data["CHOLE"] = this.chole.toJson();
    if(this.na != null)
      data["NA"] = this.na.toJson();
    if(this.ca != null)
      data["CA"] = this.ca.toJson();
    if(this.mg != null)
      data["MG"] = this.mg.toJson();
    if(this.k != null)
      data["K"] = this.k.toJson();
    if(this.fe != null)
      data["FE"] = this.fe.toJson();
    if(this.zn != null)
      data["ZN"] = this.zn.toJson();
    if(this.p != null)
      data["P"] = this.p.toJson();
    if(this.vitaRae != null)
      data["VITA_RAE"] = this.vitaRae.toJson();
    if(this.vitc != null)
      data["VITC"] = this.vitc.toJson();
    if(this.thia != null)
      data["THIA"] = this.thia.toJson();
    if(this.ribf != null)
      data["RIBF"] = this.ribf.toJson();
    if(this.nia != null)
      data["NIA"] = this.nia.toJson();
    if(this.vitb6A != null)
      data["VITB6A"] = this.vitb6A.toJson();
    if(this.foldfe != null)
      data["FOLDFE"] = this.foldfe.toJson();
    if(this.folfd != null)
      data["FOLFD"] = this.folfd.toJson();
    if(this.folac != null)
      data["FOLAC"] = this.folac.toJson();
    if(this.vitb12 != null)
      data["VITB12"] = this.vitb12.toJson();
    if(this.vitd != null)
      data["VITD"] = this.vitd.toJson();
    if(this.tocpha != null)
      data["TOCPHA"] = this.tocpha.toJson();
    if(this.vitk1 != null)
      data["VITK1"] = this.vitk1.toJson();
    if(this.water != null)
      data["WATER"] = this.water.toJson();
    return data;
  }
}

class Water {
  String label;
  double quantity;
  String unit;

  Water({this.label, this.quantity, this.unit});

  Water.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitk1 {
  String label;
  double quantity;
  String unit;

  Vitk1({this.label, this.quantity, this.unit});

  Vitk1.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Tocpha {
  String label;
  double quantity;
  String unit;

  Tocpha({this.label, this.quantity, this.unit});

  Tocpha.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitd {
  String label;
  double quantity;
  String unit;

  Vitd({this.label, this.quantity, this.unit});

  Vitd.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitb12 {
  String label;
  double quantity;
  String unit;

  Vitb12({this.label, this.quantity, this.unit});

  Vitb12.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Folac {
  String label;
  int quantity;
  String unit;

  Folac({this.label, this.quantity, this.unit});

  Folac.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is int)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Folfd {
  String label;
  double quantity;
  String unit;

  Folfd({this.label, this.quantity, this.unit});

  Folfd.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Foldfe {
  String label;
  double quantity;
  String unit;

  Foldfe({this.label, this.quantity, this.unit});

  Foldfe.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitb6A {
  String label;
  double quantity;
  String unit;

  Vitb6A({this.label, this.quantity, this.unit});

  Vitb6A.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Nia {
  String label;
  double quantity;
  String unit;

  Nia({this.label, this.quantity, this.unit});

  Nia.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Ribf {
  String label;
  double quantity;
  String unit;

  Ribf({this.label, this.quantity, this.unit});

  Ribf.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Thia {
  String label;
  double quantity;
  String unit;

  Thia({this.label, this.quantity, this.unit});

  Thia.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Vitc {
  String label;
  double quantity;
  String unit;

  Vitc({this.label, this.quantity, this.unit});

  Vitc.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class VitaRae {
  String label;
  double quantity;
  String unit;

  VitaRae({this.label, this.quantity, this.unit});

  VitaRae.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class P {
  String label;
  double quantity;
  String unit;

  P({this.label, this.quantity, this.unit});

  P.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Zn {
  String label;
  double quantity;
  String unit;

  Zn({this.label, this.quantity, this.unit});

  Zn.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fe {
  String label;
  double quantity;
  String unit;

  Fe({this.label, this.quantity, this.unit});

  Fe.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class K {
  String label;
  double quantity;
  String unit;

  K({this.label, this.quantity, this.unit});

  K.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Mg {
  String label;
  double quantity;
  String unit;

  Mg({this.label, this.quantity, this.unit});

  Mg.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Ca {
  String label;
  double quantity;
  String unit;

  Ca({this.label, this.quantity, this.unit});

  Ca.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Na {
  String label;
  double quantity;
  String unit;

  Na({this.label, this.quantity, this.unit});

  Na.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Chole {
  String label;
  double quantity;
  String unit;

  Chole({this.label, this.quantity, this.unit});

  Chole.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Procnt {
  String label;
  double quantity;
  String unit;

  Procnt({this.label, this.quantity, this.unit});

  Procnt.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Sugar {
  String label;
  double quantity;
  String unit;

  Sugar({this.label, this.quantity, this.unit});

  Sugar.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fibtg {
  String label;
  double quantity;
  String unit;

  Fibtg({this.label, this.quantity, this.unit});

  Fibtg.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Chocdf {
  String label;
  double quantity;
  String unit;

  Chocdf({this.label, this.quantity, this.unit});

  Chocdf.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fapu {
  String label;
  double quantity;
  String unit;

  Fapu({this.label, this.quantity, this.unit});

  Fapu.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fams {
  String label;
  double quantity;
  String unit;

  Fams({this.label, this.quantity, this.unit});

  Fams.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fatrn {
  String label;
  double quantity;
  String unit;

  Fatrn({this.label, this.quantity, this.unit});

  Fatrn.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fasat {
  String label;
  double quantity;
  String unit;

  Fasat({this.label, this.quantity, this.unit});

  Fasat.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Fat {
  String label;
  double quantity;
  String unit;

  Fat({this.label, this.quantity, this.unit});

  Fat.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class EnercKcal {
  String label;
  double quantity;
  String unit;

  EnercKcal({this.label, this.quantity, this.unit});

  EnercKcal.fromJson(Map<String, dynamic> json) {
    if(json["label"] is String)
      this.label = json["label"];
    if(json["quantity"] is double)
      this.quantity = json["quantity"];
    if(json["unit"] is String)
      this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["label"] = this.label;
    data["quantity"] = this.quantity;
    data["unit"] = this.unit;
    return data;
  }
}

class Ingredients {
  String text;
  double weight;
  String foodCategory;
  String foodId;
  String image;

  Ingredients({this.text, this.weight, this.foodCategory, this.foodId, this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    if(json["text"] is String)
      this.text = json["text"];
    if(json["weight"] is double)
      this.weight = json["weight"];
    if(json["foodCategory"] is String)
      this.foodCategory = json["foodCategory"];
    if(json["foodId"] is String)
      this.foodId = json["foodId"];
    if(json["image"] is String)
      this.image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["text"] = this.text;
    data["weight"] = this.weight;
    data["foodCategory"] = this.foodCategory;
    data["foodId"] = this.foodId;
    data["image"] = this.image;
    return data;
  }
}

class Links {
  Next next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    if(json["next"] is Map)
      this.next = json["next"] == null ? null : Next.fromJson(json["next"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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