import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_1/pages/login.dart';
import 'package:task_1/pages/register.dart';

class Slide extends StatelessWidget {
  // const Slide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                child: Text('Skip'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '7Krav',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: PageView(
                /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                /// Use [Axis.vertical] to scroll vertically.
                controller: controller,
                children: <Widget>[
                  Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/boarding1.png'),
                          ),
                        ),
                      ),
                      Align(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Get Started'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Dont have an account ?',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, RegisterScreen.id);
                              },
                              child: Text('Sign up'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                      child: Image(
                    image: AssetImage('assets/boarding2.png'),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
