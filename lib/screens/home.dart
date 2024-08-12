import 'dart:ui';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:online_service_homepage/data/data.dart';
import 'package:online_service_homepage/models/models.dart';
part 'home/adaptive_appbar.dart';
part 'home/sign_up_form.dart';
part 'home/top_story_box.dart';
part 'home/featured_story_box.dart';
part 'home/share_story_label.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //print(_size.width);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/bubble_fade.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                AdaptiveAppbar(screenWidth: size.width),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final w = constraints.maxWidth;
                            WrapAlignment wrapAlignment;
                            double runSpacing;
                            if (w > 1600) {
                              runSpacing = 30;
                              wrapAlignment = WrapAlignment.spaceBetween;
                            } else {
                              runSpacing = 10;
                              wrapAlignment = WrapAlignment.center;
                            }
                            return Wrap(
                              direction: Axis.horizontal,
                              alignment: wrapAlignment,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 20,
                              runSpacing: runSpacing,
                              children: [
                                TopStoryBox(story: sampleTopStory),
                                const ShareStoryLabel(),
                                const SignUpForm(),
                              ],
                            );
                          },
                        ),
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
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 20),
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
