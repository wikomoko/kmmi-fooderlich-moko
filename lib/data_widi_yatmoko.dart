import 'dart:convert';
import 'package:http/http.dart' as http;
UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        this.from,
        this.to,
        this.count,
        this.links,
        this.hits,
    });

    int from;
    int to;
    int count;
    Links links;
    List<Hit> hits;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        from: json["from"],
        to: json["to"],
        count: json["count"],
        links: Links.fromJson(json["_links"]),
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "from": from,
        "to": to,
        "count": count,
        "_links": links.toJson(),
        "hits": List<dynamic>.from(hits.map((x) => x.toJson())),
    };
}

class Hit {
    Hit({
        this.recipe,
        this.links,
    });

    Recipe recipe;
    Links links;

    factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        recipe: Recipe.fromJson(json["recipe"]),
        links: Links.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "recipe": recipe.toJson(),
        "_links": links.toJson(),
    };
}

class Links {
    Links({
        this.self,
        this.next,
    });

    Next self;
    Next next;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: Next.fromJson(json["self"]),
        next: Next.fromJson(json["next"]),
    );

    Map<String, dynamic> toJson() => {
        "self": self.toJson(),
        "next": next.toJson(),
    };
}

class Next {
    Next({
        this.href,
        this.title,
    });

    String href;
    String title;

    factory Next.fromJson(Map<String, dynamic> json) => Next(
        href: json["href"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "title": title,
    };
}

class Recipe {
    Recipe({
        this.uri,
        this.label,
        this.image,
        this.source,
        this.url,
        this.shareAs,
        this.recipeYield,
        this.dietLabels,
        this.healthLabels,
        this.cautions,
        this.ingredientLines,
        this.ingredients,
        this.calories,
        this.totalWeight,
        this.cuisineType,
        this.mealType,
        this.dishType,
        this.totalNutrients,
        this.totalDaily,
        this.digest,
    });

    String uri;
    String label;
    String image;
    String source;
    String url;
    String shareAs;
    int recipeYield;
    List<String> dietLabels;
    List<String> healthLabels;
    List<String> cautions;
    List<String> ingredientLines;
    List<Ingredient> ingredients;
    int calories;
    int totalWeight;
    List<String> cuisineType;
    List<String> mealType;
    List<String> dishType;
    TotalDaily totalNutrients;
    TotalDaily totalDaily;
    List<Digest> digest;

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        uri: json["uri"],
        label: json["label"],
        image: json["image"],
        source: json["source"],
        url: json["url"],
        shareAs: json["shareAs"],
        recipeYield: json["yield"],
        dietLabels: List<String>.from(json["dietLabels"].map((x) => x)),
        healthLabels: List<String>.from(json["healthLabels"].map((x) => x)),
        cautions: List<String>.from(json["cautions"].map((x) => x)),
        ingredientLines: List<String>.from(json["ingredientLines"].map((x) => x)),
        ingredients: List<Ingredient>.from(json["ingredients"].map((x) => Ingredient.fromJson(x))),
        calories: json["calories"],
        totalWeight: json["totalWeight"],
        cuisineType: List<String>.from(json["cuisineType"].map((x) => x)),
        mealType: List<String>.from(json["mealType"].map((x) => x)),
        dishType: List<String>.from(json["dishType"].map((x) => x)),
        totalNutrients: TotalDaily.fromJson(json["totalNutrients"]),
        totalDaily: TotalDaily.fromJson(json["totalDaily"]),
        digest: List<Digest>.from(json["digest"].map((x) => Digest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "uri": uri,
        "label": label,
        "image": image,
        "source": source,
        "url": url,
        "shareAs": shareAs,
        "yield": recipeYield,
        "dietLabels": List<dynamic>.from(dietLabels.map((x) => x)),
        "healthLabels": List<dynamic>.from(healthLabels.map((x) => x)),
        "cautions": List<dynamic>.from(cautions.map((x) => x)),
        "ingredientLines": List<dynamic>.from(ingredientLines.map((x) => x)),
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "calories": calories,
        "totalWeight": totalWeight,
        "cuisineType": List<dynamic>.from(cuisineType.map((x) => x)),
        "mealType": List<dynamic>.from(mealType.map((x) => x)),
        "dishType": List<dynamic>.from(dishType.map((x) => x)),
        "totalNutrients": totalNutrients.toJson(),
        "totalDaily": totalDaily.toJson(),
        "digest": List<dynamic>.from(digest.map((x) => x.toJson())),
    };
}

class Digest {
    Digest({
        this.label,
        this.tag,
        this.schemaOrgTag,
        this.total,
        this.hasRdi,
        this.daily,
        this.unit,
        this.sub,
    });

    String label;
    String tag;
    String schemaOrgTag;
    int total;
    bool hasRdi;
    int daily;
    String unit;
    TotalDaily sub;

    factory Digest.fromJson(Map<String, dynamic> json) => Digest(
        label: json["label"],
        tag: json["tag"],
        schemaOrgTag: json["schemaOrgTag"],
        total: json["total"],
        hasRdi: json["hasRDI"],
        daily: json["daily"],
        unit: json["unit"],
        sub: TotalDaily.fromJson(json["sub"]),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "tag": tag,
        "schemaOrgTag": schemaOrgTag,
        "total": total,
        "hasRDI": hasRdi,
        "daily": daily,
        "unit": unit,
        "sub": sub.toJson(),
    };
}

class TotalDaily {
    TotalDaily();

    factory TotalDaily.fromJson(Map<String, dynamic> json) => TotalDaily(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Ingredient {
    Ingredient({
        this.text,
        this.quantity,
        this.measure,
        this.food,
        this.weight,
        this.foodId,
    });

    String text;
    int quantity;
    String measure;
    String food;
    int weight;
    String foodId;

    factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        text: json["text"],
        quantity: json["quantity"],
        measure: json["measure"],
        food: json["food"],
        weight: json["weight"],
        foodId: json["foodId"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "quantity": quantity,
        "measure": measure,
        "food": food,
        "weight": weight,
        "foodId": foodId,
    };

 Future<List<UserModel>> getData() async {
    Uri link = Uri.parse(
        "https://api.edamam.com/api/recipes/v2?type=public&q=salmon&app_id=a03c43af&app_key=e5d79dffe2b66474ff75017f1e0f357d");
    var connecting = await http.get(link);
    if (connecting.statusCode == 200)
      print("connected");
    else
      print("eror");
     var jsonObject = jsonDecode(connecting.body);
     List<dynamic> listUser = (jsonObject as Map<String,dynamic>)['hits'];
      List<UserModel> users = [];
        for(int i = 0;i<listUser.length;i++)
        {
          users.add(UserModel.fromJson(listUser[i]));
        }
        return users;
  }

}
