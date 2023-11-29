import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final List<String> formattedParts = [];
    for (int i = 0; i < newValue.text.length; i += 3) {
      final part = newValue.text.substring(i, i + 3);
      if (part.length == 3) {
        formattedParts.add(part);
      } else {
        formattedParts.add(newValue.text.substring(i));
        break;
      }
    }
    final String formatted = formattedParts.join(' ');
    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController id = TextEditingController();
  TextEditingController SDT = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: id,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.public_outlined),
                labelText: 'ID Thiết Bị',
                hintText: 'Nhập ID thiết bị',
              ),
            ),
            TextField(
              controller: SDT,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Số điện thoại',
                hintText: 'Nhập số điện thoại',
                prefixIcon: Icon(Icons.phone),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(12),
                PhoneNumberFormatter(),
              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              
            }, child: Text("Gửi mã xác nhận"))
          ],
        ),
      ),
    );
  }
}