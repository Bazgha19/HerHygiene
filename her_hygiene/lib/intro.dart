import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/* import 'package:her_hygiene/Contraceptive%20Health%20Test/size_configs.dart'; */
import 'package:her_hygiene/home_screen.dart';
import 'package:her_hygiene/main.dart';
import 'size_configs.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.pink.shade50,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.pink.shade100,
                Colors.pink.shade100,
                Colors.pink.shade100,
                Colors.pink.shade100,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(40)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Home()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color.fromRGBO(179, 68, 98, 1),
                        fontSize: 18.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                Container(
                  /* height: 600.0, */
                  height: getProportionateScreenHeight(600),
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/intro1.png',
                                ),
                                /* height: 300.0,
                                width: 300.0, */
                                height: getProportionateScreenHeight(300),
                                width: getProportionateScreenWidth(300),
                              ),
                            ),
                            SizedBox(
                              /* height: 30.0 */
                              height: getProportionateScreenHeight(30),
                            ),
                            Center(
                              child: Text(
                                'Hygiene In Your Hands',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromRGBO(179, 68, 98, 1),
                                  fontFamily: 'Moon',
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              /* height: 15.0 */
                              height: getProportionateScreenHeight(10),
                            ),
                            Center(
                              child: Text(
                                'The only app you will ever need to know about your hygiene',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Color.fromRGBO(195, 91, 118, 1),
                                  fontFamily: 'Moon',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/track.png',
                                ),
                                /* height: 300.0,
                                width: 300.0, */
                                height: getProportionateScreenHeight(300),
                                width: getProportionateScreenWidth(300),
                              ),
                            ),
                            SizedBox(
                              /* height: 30.0 */
                              height: getProportionateScreenHeight(30),
                            ),
                            Center(
                              child: Text(
                                'Track Your Hygiene',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromRGBO(179, 68, 98, 1),
                                  fontFamily: 'Moon',
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              /* height: 15.0 */
                              height: getProportionateScreenHeight(15),
                            ),
                            Center(
                              child: Text(
                                'Quizes helps you in analyzing your hygiene',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Moon',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(195, 91, 118, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/start.png',
                                ),
                                /* height: 300.0,
                                width: 300.0, */
                                height: getProportionateScreenHeight(300),
                                width: getProportionateScreenWidth(300),
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(5)),
                            Center(
                              child: Text(
                                'Enter In The World Of HerHygiene',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromRGBO(179, 68, 98, 1),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Moon',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(5)),
                            Center(
                              child: Text(
                                'It take less then a minute to enter and enjoy HerHygiene',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Moon',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(195, 91, 118, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              print('Next');
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Color.fromRGBO(179, 68, 98, 1),
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins'),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromRGBO(179, 68, 98, 1),
                                  size: 30.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.pink.shade100,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home()));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color.fromRGBO(179, 68, 98, 1),
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
