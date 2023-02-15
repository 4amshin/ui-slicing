// ignore_for_file: public_member_api_docs, sort_constructors_first
class Banner {
  final String? imgAsset;
  final String? discount;
  final String? content;
  Banner({
    required this.imgAsset,
    required this.discount,
    required this.content,
  });
}

List<Banner> banners = [
  Banner(
    imgAsset: 'banner-1.jpg',
    discount: '20% OFF',
    content: 'Every cut on Wednesday',
  ),
  Banner(
    imgAsset: 'banner-2.jpg',
    discount: '30% OFF',
    content: 'On Hairstyle day',
  ),
  Banner(
    imgAsset: 'banner-3.jpg',
    discount: '40% OFF',
    content: 'Special discount for Friday',
  ),
];
