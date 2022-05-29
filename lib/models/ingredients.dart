class Ingredients{
  final String? category;
  final String? unit;
  final String? ingredientId;
  final String? categoryId;
  final String? ingredient;
  final String? id;
  final String? remainder;
  final double? quantity;
  final String? wholeLine;


  Ingredients({
    this.category,
    this.unit,
    this. ingredientId,
    this.categoryId,
    this. ingredient,
    this.id,
    this.remainder,
    this.quantity,
    this. wholeLine
  });

  factory Ingredients.fromMap(Map<String, dynamic> map){
    return Ingredients(
      category: map['category'] as String,
      unit: map['unit'] as String,
      ingredientId: map['ingredientId'] as String,
      categoryId: map['categoryId'] as String,
      ingredient: map['ingredient'] as String,
      id: map['id'] as String,
      remainder: map['remainder'] as String,
      quantity: map['quantity'] ?? 0.0,
      wholeLine: map['wholeLine'] as String,

    );
  }

  Map<String, dynamic> toMap() {
    return {
      "category": category,
      "unit": unit,
      "ingredientId": ingredientId,
      "categoryId": categoryId,
      "ingredient": ingredient,
      "id": id,
      "remainder": remainder,
      "quantity": quantity,
      "wholeLine": wholeLine,
    };
  }

  static List<Ingredients> ingredientsFromSnapshot(List snapshot) {
    return snapshot.map((data2) {
      return Ingredients.fromMap(data2);
    }).toList();
  }

}