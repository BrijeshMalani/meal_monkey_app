import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPractice extends StatefulWidget {
  const ImagePickerPractice({Key? key}) : super(key: key);

  @override
  _ImagePickerPracticeState createState() => _ImagePickerPracticeState();
}

class _ImagePickerPracticeState extends State<ImagePickerPractice> {
  File? _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('no image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image Picker Practices'),
      ),
      body: GestureDetector(
        onTap: () {
          getImage();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: NetworkImage(
              //                         //       'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              // ),
            ),
            child: _image == null
                ? Image.network(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    _image!,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}
