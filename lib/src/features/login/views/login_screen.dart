import 'package:flutter/material.dart';
import 'package:habit/src/features/login/views/widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(0, -50),
            child: Image.asset(
              'assets/images/splash-screen.png',
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.22, 0.5],
                colors: [
                  const Color.fromRGBO(255, 243, 233, 0.22),
                  const Color(0xFFFFF3E9).withOpacity(0.5),
                ],
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WELCOME TO Monumental habits'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF573353),
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none,
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SocialLoginButton(
                    icon: Icons.g_mobiledata,
                    label: 'Continue with Google',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const SocialLoginButton(
                    icon: Icons.facebook,
                    label: 'Continue with Facebook',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 28,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Log in with email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF573353),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        style: const TextStyle(
                          color: Color(0xFFFDA758),
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mail_outline,
                            size: 16,
                          ),
                          prefixIconColor: const Color(0xFFFDA758),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFF6ED),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 12,
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: const Color(0xFF573353).withOpacity(0.5),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        style: const TextStyle(
                          color: Color(0xFFFDA758),
                        ),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock_outline_rounded,
                              size: 16,
                            ),
                            prefixIconColor: const Color(0xFFFDA758),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            filled: true,
                            fillColor: const Color(0xFFFFF6ED),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 12,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: const Color(0xFF573353).withOpacity(0.5),
                            ),
                            suffix: const Text(
                              'Show',
                              style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(
                        Size.fromHeight(60),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFFDA758),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Login',
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
                const Column(
                  children: [
                    SizedBox(
                      height: 22,
                      child: TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        ),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF573353),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 22,
                      child: TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        ),
                        child: Text(
                          'Don’t have an account? Sign up',
                          style: TextStyle(
                            color: Color(0xFF573353),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
