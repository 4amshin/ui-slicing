// ignore_for_file: public_member_api_docs, sort_constructors_first
class Vegetables {
  final String? name;
  final String? type;
  final String? price;
  final String? imgAsset;
  Vegetables({
    required this.name,
    required this.type,
    required this.price,
    required this.imgAsset,
  });
}

List<Vegetables> vegetable = [
  Vegetables(
    name: 'Bell Pepper',
    type: 'Organic Red',
    price: '2.49',
    imgAsset: 'pepper.png',
  ),
  Vegetables(
    name: 'Ginger',
    type: 'Organic',
    price: '6.99',
    imgAsset: 'ginger.png',
  ),
  Vegetables(
    name: 'Broccoli',
    type: 'Organic',
    price: '4.98',
    imgAsset: 'broccoli.png',
  ),
  Vegetables(
    name: 'Carrot',
    type: 'Organic',
    price: '7,69',
    imgAsset: 'carrot.png',
  ),
];
