import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:lottie/lottie.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:top_shop/models/components.dart';
import 'package:top_shop/modules/login/login_screen.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {

  SignUpScreen({Key? key}) : super(key: key);

  final _emailController1 = TextEditingController();
  final _passwordController1 = TextEditingController();
  final _nameController1 = TextEditingController();
  var formLoginKey1 = GlobalKey<FormState>();

  final RoundedLoadingButtonController _btnController1 =
  RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {

    void _doSomething1() async {
      if (formLoginKey1.currentState!.validate()) {
        FocusScope.of(context).unfocus();
        _btnController1.success();
      }else {
        _btnController1.error();
      }
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: (){
                    navigateTo(LoginScreen(), context);
                  },
                  icon: const Icon(Icons.arrow_left_rounded, size: 60,),
                ),
              ),
              SizedBox(
                child: Lottie.asset('assets/lotties/shop3.json'),
                height: 120,
                width: 200,
              ),
              Form(
                key: formLoginKey1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.3),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(50), topRight: Radius.circular(15), bottomLeft: Radius.circular(15))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController1,
                            validator: ValidationBuilder().email().build(),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: 'enter your email',
                              label: Text(
                                'Email',
                                // style: TextStyle(color: signup_bg),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: _passwordController1,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility), ),
                              hintText: 'enter your password',
                              label: const Text('Password'),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: _nameController1,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              hintText: 'enter your name',
                              label: Text(
                                'Name',
                                // style: TextStyle(color: signup_bg),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // IntlPhoneField(
                          //   decoration: InputDecoration(
                          //     labelText: 'Phone Number',
                          //     border: OutlineInputBorder(
                          //       borderSide: BorderSide(),
                          //     ),
                          //   ),
                          //   initialCountryCode: 'IN',
                          //   onChanged: (phone) {
                          //     print(phone.completeNumber);
                          //   },
                          // ),
                          // const SizedBox(height: 20),
                          RoundedLoadingButton(
                            color: Colors.deepOrange,
                            child: const Text('SIGN UP', style: TextStyle(color: Colors.white)),
                            controller: _btnController1,
                            onPressed: _doSomething1,
                            successColor: Colors.green,
                            resetDuration: const Duration(seconds: 2),
                            resetAfterDuration: true,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


