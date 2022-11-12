library flutter_social_login_widget;

import 'package:flutter/material.dart';
import 'package:flutter_social_login_widget/models/login_method.model.dart';

class SocialLogin extends StatefulWidget {
  const SocialLogin({
    Key? key,
    required this.methods,
  }) : super(key: key);

  final List<LoginMethod> methods;

  @override
  State<SocialLogin> createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.methods.isEmpty
          ? Container()
          : (widget.methods.length == 1
              ? Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1.0, color: Colors.blue),
                    ),
                    icon: widget.methods[0].image,
                    label: const Text(
                      'CONTINUE WITH SMT',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                            onPressed: () {
                              widget.methods[index].onMethodTap(index);
                            },
                            style: OutlinedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                              elevation: 0,
                            ),
                            child: widget.methods[index].image,
                          ),
                        );
                      },
                      itemCount: widget.methods.length,
                    ),
                  ),
                )),
    );
  }
}
