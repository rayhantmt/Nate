import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nate/utils/app_pages.dart';

class NewProposalController extends GetxController {
  final ImagePicker picker = ImagePicker();
  Rxn<XFile> pickedimage = Rxn<XFile>();
  Future<void> catpute() async {
    try {
      final XFile? picked = await picker.pickImage(source: ImageSource.camera);
      if (picked != null) {
        pickedimage.value = picked;
        Get.toNamed(AppPages.projectsetup);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
      print(e.toString());
    }
  }
}
