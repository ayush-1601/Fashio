import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;

  RxList imageList = [].obs;

  Future getImagefromCamera() async {
    final ImagePicker _picker = ImagePicker();

    final image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      // imagePath.value = image.path.toString();
      imageList.add(image.path.toString());
    }

    // imageList.add(imagePath);
  }

  Future getImagefromGallery() async {
    final ImagePicker _picker = ImagePicker();

    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      // imagePath.value = image.path.toString();
      // imageList.add(imagePath);
      imageList.add(image.path.toString());
    }
  }
}
