import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  //String DefaultImg ;
  //ImageController(this.DefaultImg);
  var selectedImage = TImages.productImage1.obs;

  void changeImage(String newImage) {
    selectedImage.value = newImage;
  }
}
