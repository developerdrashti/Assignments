import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({super.key});

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  // //late File galleryfile;
  // final ImagePicker _picker = ImagePicker();

  // // Pick an image
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // imageSelectorGallery() async {
    //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    //   // galleryfile = (await ImagePicker.pickImage(
    //   //   source: ImageSource.gallery,
    //   // )) as File;
    // }

    return Scaffold(
        appBar: AppBar(
          title: Text("Image Picker"),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  child: const Text("Select Gallary",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    pickImage();
                  }),
              SizedBox(
                child: Center(
                  child: Image.file(image!),
                ),
              )
            ],
          ),
        ));
  }
}
