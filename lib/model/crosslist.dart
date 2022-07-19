import 'package:e_learning/utils/helper/imageName.dart';

class CrossItem {
  String name = '';
  String creator = '';
  String price = '';
  String lession = '';
  String imagename = '';
  String rating = '';
  CrossItem({
     required this.name,
     required this.creator,
     required this.price,
     required this.lession,
     required this.imagename,
     required this.rating,
  });
}

List<CrossItem> crosslist = [
  CrossItem(
      creator: 'Salim',
      lession: '50',
      name: 'Marketing',
      price: '18',
      imagename: ImageName.cross_Marketing,
      rating: '4.5'),
  CrossItem(
      creator: 'Kamal',
      lession: '40',
      name: 'UI/UX Design',
      price: '18',
      imagename: ImageName.cross_ui_ux,
      rating: '4.0'),
  CrossItem(
      creator: 'Salim',
      lession: '50',
      name: 'Marketing',
      price: '18',
      imagename: ImageName.cross_Marketing,
      rating: '4.5'),
  CrossItem(
      creator: 'Kamal',
      lession: '40',
      name: 'UI/UX Design',
      price: '18',
      imagename: ImageName.cross_ui_ux,
      rating: '4.0'),
];
