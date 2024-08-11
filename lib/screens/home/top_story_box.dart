part of '../../screens/home.dart';

class TopStoryBox extends StatelessWidget {
  final Story story;
  const TopStoryBox({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 85,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          story.image,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                        ),
                        Align(
                          alignment: const Alignment(0, 1.010),
                          child: ClipRect(
                            clipBehavior: Clip.antiAlias,
                            child: FractionallySizedBox(
                              heightFactor: 0.25,
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black,
                                        Colors.black.withOpacity(0.1),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    heightFactor: 0.32,
                    widthFactor: 1.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: SelectableText(
                              '“${story.title}”',
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5.0),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                // This is a simple workaround that dynamically changes maxLines to render ellipsis when
                                // clipping an overflow. For a cleaner code maybe use AutoSizeText package but since this is
                                // just a sample/demo I don't want to use too much additional packages.
                                final style = Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400);
                                final Size size = (TextPainter(
                                        text: TextSpan(
                                            text: story.content, style: style),
                                        maxLines: 1,
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        textDirection: TextDirection.ltr)
                                      ..layout())
                                    .size;
                                final maxLines = math.max(
                                    1,
                                    (constraints.biggest.height / size.height)
                                        .floor());
                                return Text(
                                  story.content,
                                  softWrap: true,
                                  maxLines: maxLines,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: style,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectableText(
                  'Story of a ${story.activity}.',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(150, 40),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Read More >>'),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
