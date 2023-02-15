// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hairstyle {
  final String? title;
  final String? imgAsset;
  bool isSelected;
  Hairstyle({
    required this.title,
    required this.imgAsset,
    required this.isSelected,
  });
}

List<Hairstyle> hairstyles = [
  Hairstyle(
    title: 'Crew Cut',
    imgAsset: 'crew-cut.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'Fade',
    imgAsset: 'fade.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'French Crop',
    imgAsset: 'french-crop.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'Pompadour',
    imgAsset: 'pompadour.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'Quiff',
    imgAsset: 'quiff.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'Side Part',
    imgAsset: 'side-part.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'Slick Back',
    imgAsset: 'slick-back.jpg',
    isSelected: false,
  ),
  Hairstyle(
    title: 'Undercut',
    imgAsset: 'undercut.jpg',
    isSelected: false,
  ),
];
