import 'package:flutter/material.dart';
import 'package:habit/src/features/register/views/widgets/text_input.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';
  final String _passwordConfirm = '';
  bool _isKeepingSigned = false;
  bool _isAgreedAboutEmailing = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TextInput(
            label: '이름',
            icon: Icons.person,
            onSaved: (value) {
              _name = value.toString();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '이름은 필수 입력 사항입니다.';
              }
              if (value.length < 2) {
                return '이름은 반드시 2글자 이상을 입력해야 합니다.';
              }
              return null;
            },
            isPassword: false,
            keyBoardType: TextInputType.name,
          ),
          const SizedBox(
            height: 6,
          ),
          TextInput(
            label: '이메일',
            icon: Icons.mail_outline_rounded,
            onSaved: (value) {
              _email = value.toString();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '이메일은 필수 입력 사항입니다.';
              }

              if (!RegExp(
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                  .hasMatch(value)) {
                return '유효한 이메일 형식을 입력해야 합니다.';
              }

              return null;
            },
            isPassword: false,
            keyBoardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 6,
          ),
          TextInput(
            label: '비밀번호',
            icon: Icons.lock_outline_rounded,
            onSaved: (value) {
              _password = value.toString();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '비밀번호는 필수 입력 사항입니다.';
              }

              if (value.length < 8) {
                return '비밀번호는 8글자 이상이어야 합니다.';
              }

              return null;
            },
            isPassword: true,
            keyBoardType: TextInputType.none,
          ),
          // const SizedBox(
          //   height: 6,
          // ),
          // TextInput(
          //   label: '비밀번호 확인',
          //   icon: Icons.lock_outline_rounded,
          //   onSaved: (value) {
          //     _passwordConfirm = value.toString();
          //   },
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return '비밀번호는 필수 입력 사항입니다.';
          //     }

          //     if (value.length < 8) {
          //       return '비밀번호는 8글자 이상이어야 합니다.';
          //     }

          //     if (value != _password) {
          //       return '비밀번호가 일치하지 않습니다.';
          //     }

          //     return null;
          //   },
          //   isPassword: true,
          // ),
          const SizedBox(
            height: 28,
          ),
          SizedBox(
            height: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isKeepingSigned,
                  onChanged: (value) {
                    _isKeepingSigned = value!;
                    setState(() {});
                  },
                  side: BorderSide.none,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  checkColor: const Color(0xFF573353),
                  fillColor: const MaterialStatePropertyAll(
                    Color(0xFFFDA758),
                  ),
                ),
                const Text('Keep me signed in'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isAgreedAboutEmailing,
                  onChanged: (value) {
                    _isAgreedAboutEmailing = value!;
                    setState(() {});
                  },
                  side: BorderSide.none,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  checkColor: const Color(0xFF573353),
                  fillColor: const MaterialStatePropertyAll(
                    Color(0xFFFDA758),
                  ),
                ),
                const Text('Email me about special pricing and more')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: _submitForm,
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size.fromHeight(60),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFFDA758),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: const Text(
                'Create Account',
                style: TextStyle(
                  color: Color(0xFF573353),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text('Or Sign in with'),
              Divider(color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}
