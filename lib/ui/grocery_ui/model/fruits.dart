// ignore_for_file: public_member_api_docs, sort_constructors_first
class Fruit {
  final String? name;
  final String? type;
  final String? price;
  final String? imgAsset;
  Fruit({
    required this.name,
    required this.type,
    required this.price,
    required this.imgAsset,
  });
}

List<Fruit> fruits = [
  Fruit(
    name: 'Bananas',
    type: 'Organic',
    price: '4.99',
    imgAsset: 'banana.png',
  ),
  Fruit(
    name: 'Grapes',
    type: 'Organic',
    price: '12.99',
    imgAsset: 'grape.png',
  ),
  Fruit(
    name: 'Apple',
    type: 'Organic',
    price: '7.98',
    imgAsset: 'apple.png',
  ),
  Fruit(
    name: 'Avocado',
    type: 'Organic',
    price: '6.49',
    imgAsset: 'avocado.png',
  ),
];
