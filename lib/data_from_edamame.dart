import 'dart:convert';

import 'package:flutter/foundation.dart';

class Food {
  final int from;
  final int to;
  final int count;
  final List<Hit> hits;
  Food({
     this.from,
     this.to,
     this.count,
     this.hits,
  });

  Food copyWith({
    int from,
    int to,
    int count,
    List<Hit> hits,
  }) {
    return Food(
      from: from ?? this.from,
      to: to ?? this.to,
      count: count ?? this.count,
      hits: hits ?? this.hits,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'from': from,
      'to': to,
      'count': count,
      'hits': hits?.map((x) => x.toMap())?.toList(),
    };
  }

  factory Food.fromMap(Map<String, dynamic> map) {
    return Food(
      from: map['from']?.toInt(),
      to: map['to']?.toInt(),
      count: map['count']?.toInt(),
      hits: List<Hit>.from(map['hits']?.map((x) => Hit.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Food.fromJson(String source) => Food.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Food(from: $from, to: $to, count: $count, hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Food &&
      other.from == from &&
      other.to == to &&
      other.count == count &&
      listEquals(other.hits, hits);
  }

  @override
  int get hashCode {
    return from.hashCode ^
      to.hashCode ^
      count.hashCode ^
      hits.hashCode;
  }
}

class Hit {
  final Recipe recipe;
  Hit({
     this.recipe,
  });

  Hit copyWith({
    Recipe recipe,
  }) {
    return Hit(
      recipe: recipe ?? this.recipe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'recipe': recipe.toMap(),
    };
  }

  factory Hit.fromMap(Map<String, dynamic> map) {
    return Hit(
      recipe: Recipe.fromMap(map['recipe']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hit.fromJson(String source) => Hit.fromMap(json.decode(source));

  @override
  String toString() => 'Hit(recipe: $recipe)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Hit &&
      other.recipe == recipe;
  }

  @override
  int get hashCode => recipe.hashCode;
}

class Recipe {
  final String label;
  final String source;
  final int totalTime;
  final String image;
  final List<String> ingredientLines;
  Recipe({
     this.label,
     this.source,
     this.totalTime,
     this.image,
     this.ingredientLines,
  });

  Recipe copyWith({
    String label,
    String source,
    int totalTime,
    String image,
    List<String> ingredientLines,
  }) {
    return Recipe(
      label: label ?? this.label,
      source: source ?? this.source,
      totalTime: totalTime ?? this.totalTime,
      image: image ?? this.image,
      ingredientLines: ingredientLines ?? this.ingredientLines,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'source': source,
      'totalTime': totalTime,
      'image': image,
      'ingredientLines': ingredientLines,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      label: map['label'],
      source: map['source'],
      totalTime: map['totalTime']?.toInt(),
      image: map['image'],
      ingredientLines: List<String>.from(map['ingredientLines']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Recipe(label: $label, source: $source, totalTime: $totalTime, image: $image, ingredientLines: $ingredientLines)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Recipe &&
      other.label == label &&
      other.source == source &&
      other.totalTime == totalTime &&
      other.image == image &&
      listEquals(other.ingredientLines, ingredientLines);
  }

  @override
  int get hashCode {
    return label.hashCode ^
      source.hashCode ^
      totalTime.hashCode ^
      image.hashCode ^
      ingredientLines.hashCode;
  }
}