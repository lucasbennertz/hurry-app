import 'package:image_picker/image_picker.dart';
class PegadorDeImagem{
  ImagePicker picker = ImagePicker();

  Future<XFile?> pegarImagem() async{
    Future<XFile?> image = picker.pickImage(source: ImageSource.gallery);
    return image;
  }
}