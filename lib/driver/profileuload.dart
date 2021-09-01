import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// import 'service.dart'; profile page
class ProfileUpload extends StatefulWidget {
  // PostCreate();
  @override
  _ProfileUploadState createState() => _ProfileUploadState();
}

class _ProfileUploadState extends State<ProfileUpload> {
  _ProfileUploadState();
  // Service service = Service();
  final _addFormKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Images'),
      ),
      body: Form(
        key: _addFormKey,
        child: SingleChildScrollView(
          child: Container(
            child: Card(
                child: Container(
                    child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('Image Title'),
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Title',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter title';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    child: OutlineButton(
                        onPressed: getImage, child: _buildImage())),
                Container(
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Save'),
                      )
                    ],
                  ),
                ),
              ],
            ))),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (_image == null) {
      return Padding(
        child: Icon(
          Icons.add,
          color: Colors.grey,
        ),
      );
    } else {
      return Text(_image.path);
    }
  }
}
