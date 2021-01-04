import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class AddPostEvent extends BaseEvent {
  final String described;
  final List<Asset> listAsset;
  final String status;
  // List<Asset> images = List<Asset>();
  // List<Asset> resultList = List<Asset>();

  AddPostEvent( {this.described,this.listAsset, this.status});
}

class PickImagesEvent extends BaseEvent {
  List<Asset> images = List<Asset>();
  List<Asset> resultList = List<Asset>();
}

class PickVideoEvent extends BaseEvent {}
