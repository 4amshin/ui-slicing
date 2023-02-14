// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hairstyle {
  final String? title;
  final String? imgAsset;
  Hairstyle({
    required this.title,
    required this.imgAsset,
  });
}

List<Hairstyle> hairstyles = [
  Hairstyle(
    title: 'Crew Cut',
    imgAsset: 'crew-cut.jpg',
  ),
  Hairstyle(
    title: 'Fade',
    imgAsset: 'fade.jpg',
  ),
  Hairstyle(
    title: 'French Crop',
    imgAsset: 'french-crop.jpg',
  ),
  Hairstyle(
    title: 'Pompadour',
    imgAsset: 'pompadour.jpg',
  ),
  Hairstyle(
    title: 'Quiff',
    imgAsset: 'quiff.jpg',
  ),
  Hairstyle(
    title: 'Side Part',
    imgAsset: 'side-part.jpg',
  ),
  Hairstyle(
    title: 'Slick Back',
    imgAsset: 'slick-back.jpg',
  ),
  Hairstyle(
    title: 'Undercut',
    imgAsset: 'undercut.jpg',
  ),
];
