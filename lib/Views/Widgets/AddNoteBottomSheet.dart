// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/CustomTextField.dart';
import 'package:notes_app/Views/Widgets/CustomerButton.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> FormKey = GlobalKey();
     AutovalidateMode validatemode = AutovalidateMode.disabled;

   String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            CustomTextField(
              onChanged: (value){
                title = value;
              },
              title: title!,
              maxLines: 1,
              hint: 'title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value){
                content = value;
              },
                title: content!,
                maxLines: 5,
                hint: "content"),
            SizedBox(
              height: 30,
            ),
            CustumerButton(
              onPressed: (){
                if(FormKey.currentState!.validate()){
                  FormKey.currentState!.save();
                }else{
                  validatemode = AutovalidateMode.always;
                }
              },
              textname: "Save Note",
            )
          ],
        ),
      ),
    );
  }
}
