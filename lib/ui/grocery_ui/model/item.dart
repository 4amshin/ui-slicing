class GroceryItem {
  final String? name;
  final String? type;
  final String? category;
  final String? price;
  final String? imgAsset;
  final String? description;
  GroceryItem({
    required this.name,
    required this.type,
    required this.category,
    required this.price,
    required this.imgAsset,
    required this.description,
  });
}

List<GroceryItem> groceryItems = [
  GroceryItem(
    name: 'Bananas',
    type: 'Organic',
    category: 'fruit',
    price: '4.99',
    imgAsset: 'banana.png',
    description:
        "Bananas are a staple fruit, known for their sweet and creamy taste. They are easy to eat on the go and make a great snack option. Bananas are also rich in vitamins, minerals, and fiber, making them a nutritious addition to any diet.",
  ),
  GroceryItem(
    name: 'Grapes',
    type: 'Organic',
    category: 'fruit',
    price: '12.99',
    imgAsset: 'grape.png',
    description:
        "Grapes are a juicy and sweet fruit that come in many different varieties. They can be eaten as a snack or used in cooking and baking. Grapes are a good source of antioxidants and can help support a healthy heart.",
  ),
  GroceryItem(
    name: 'Apple',
    type: 'Organic',
    category: 'fruit',
    price: '7.98',
    imgAsset: 'apple.png',
    description:
        "Apples are a popular fruit known for their crunchy texture and wide range of flavors. They come in many different varieties, from sweet to tart, and can be eaten raw or cooked in various dishes. Apples are also a great source of fiber and vitamins, making them a healthy addition to any meal.",
  ),
  GroceryItem(
    name: 'Avocado',
    type: 'Organic',
    category: 'fruit',
    price: '6.49',
    imgAsset: 'avocado.png',
    description:
        "Avocado is a creamy and rich fruit that is high in healthy fats and vitamins. It is often used in a variety of dishes, from salads to guacamole, and can add creaminess and flavor to any meal. Avocados are also a good source of fiber, making them a nutritious addition to any diet.",
  ),
  GroceryItem(
    name: 'Bell Pepper',
    type: 'Organic Red',
    category: 'vegetable',
    price: '2.49',
    imgAsset: 'pepper.png',
    description:
        "Bell peppers are a crunchy vegetable that come in many different colors, including red, green, yellow, and orange. They are often used in cooking to add flavor and color to dishes and are a good source of vitamins and minerals.",
  ),
  GroceryItem(
    name: 'Ginger',
    type: 'Organic',
    category: 'vegetable',
    price: '6.99',
    imgAsset: 'ginger.png',
    description:
        "Ginger is a root that is commonly used in cooking and has a warm and spicy flavor. It is often used in Asian cuisine and has been used for medicinal purposes for centuries. Ginger is also a good source of antioxidants and has anti-inflammatory properties.",
  ),
  GroceryItem(
    name: 'Broccoli',
    type: 'Organic',
    category: 'vegetable',
    price: '4.98',
    imgAsset: 'broccoli.png',
    description:
        "Broccoli is a cruciferous vegetable that is high in vitamins, minerals, and fiber. It has a slightly bitter taste and is often used in soups, stews, and stir-fries. Broccoli is also a good source of antioxidants and has been linked to a number of health benefits.",
  ),
  GroceryItem(
    name: 'Carrot',
    type: 'Organic',
    category: 'vegetable',
    price: '7,69',
    imgAsset: 'carrot.png',
    description:
        "Carrots are a sweet and crunchy vegetable that come in many different colors, including orange, purple, and yellow. They are often used in cooking, from soups to salads, and can also be eaten raw as a snack. Carrots are a good source of vitamins, minerals, and fiber and have been linked to a number of health benefits.",
  ),
];
