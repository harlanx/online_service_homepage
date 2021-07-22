import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:online_service_homepage/data/data.dart';
import 'package:online_service_homepage/models/models.dart';
part 'home/adaptive_appbar.dart';
part 'home/sign_up_form.dart';
part 'home/top_story_box.dart';
part 'home/featured_story_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    //print(_size.width);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/bubble_fade.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            ListView(
              children: [
                AdaptiveAppbar(screenWidth: _size.width),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        alignment: _size.width > 1575 ? WrapAlignment.spaceBetween : WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runSpacing: 30,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 650, maxWidth: 1000, minHeight: 410),
                            child: AspectRatio(
                              aspectRatio: 1.2 / 1,
                              child: TopStoryBox(
                                story: sampleTopStory,
                              ),
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 600, minWidth: 400),
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade600,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                              child: Material(
                                color: Colors.white,
                                child: InkWell(
                                  child: Ink(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    child: Text(
                                      'What\'s your story?\nShare it with us today.',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        height: 1.2,
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: _size.width > 1575 || _size.width < 1270,
                            maintainState: true,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxHeight: 650, maxWidth: 300),
                              child: SignUpForm(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Featured Stories',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Flexible(
                            child: SizedBox(
                              height: 215,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                separatorBuilder: (context, index) => SizedBox(width: 20),
                                itemCount: sampleStories.length,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: 280,
                                    child: FeaturedStoryBox(
                                      story: sampleStories[index],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
