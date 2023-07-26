import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextEditor extends StatefulWidget {
  const TextEditor({super.key});

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  late QuillController _quillController;

  @override
  void initState() {
    _quillController = QuillController.basic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Column(
        children: [
          QuillToolbar.basic(controller: _quillController,),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            child: QuillEditor.basic(
                controller: _quillController, readOnly: false),
          ))
        ],
      ),
    );
  }
}
