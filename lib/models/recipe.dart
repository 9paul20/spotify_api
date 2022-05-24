class Recipe{
  final String? directionsUrl;
  final String? totalTime;
  final String? displayName;
  final String? images;
  final String? name;
  final String? brand;
  final String? id;
  final String? recipeId;
  final int? numberOfServings;
  final String? globalId;
  final int? totalTimeInSeconds;
  final double? rating;

  Recipe({this.directionsUrl, this.totalTime, this.displayName, this.images, this.name, this.brand, this.id, this.recipeId, this.numberOfServings, this.globalId, this.totalTimeInSeconds, this.rating});

  factory Recipe.fromMap(Map<String, dynamic> map){
    return Recipe(
      directionsUrl: map['directionsUrl'] as String,
      totalTime: map['totalTime'] as String,
      displayName: map['displayName'] as String,
      images: map['images'][0]['hostedLargeUrl'] as String,
      name: map['name'] as String,
      brand: map['brand'] ?? '',
      id: map['id'] as String,
      recipeId: map['recipeId'] as String,
      numberOfServings: map['numberOfServings'] as int,
      globalId: map['globalId'] as String,
      totalTimeInSeconds: map['totalTimeInSeconds'] as int,
      rating: map['rating'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "directionsUrl": directionsUrl,
      "totalTime": totalTime,
      "displayName": displayName,
      "images": images,
      "name": name,
      "brand": brand,
      "id": id,
      "recipeId": recipeId,
      "numberOfServings": numberOfServings,
      "globalId": globalId,
      "totalTimeInSeconds": totalTimeInSeconds,
      "rating": rating,
    };
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromMap(data);
    }).toList();
  }

}