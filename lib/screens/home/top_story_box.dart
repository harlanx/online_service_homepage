part of '../../screens/home.dart';

class TopStoryBox extends StatelessWidget {
  final Story story;
  const TopStoryBox({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 800),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Whole Image
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Flexible(
                        child: Image.asset(
                          story.image,
                          alignment: Alignment.bottomCenter,
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxWidth * 0.15,
                      ),
                    ],
                  );
                },
              ),

              AspectRatio(
                aspectRatio: 8 / 2.5,
                child: ClipRect(
                  clipBehavior: Clip.hardEdge,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.1),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: const <double>[0.5, 0.8],
                        ),
                      ),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        child: LayoutBuilder(
                          builder: (context, constr) {
                            return Container(
                              constraints: BoxConstraints(
                                  maxWidth: constr.maxWidth * 0.95),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: SelectableText(
                                      '“${story.title}”',
                                      maxLines: 1,
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
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight: constr.maxWidth * 0.03,
                                    ),
                                    child: const SizedBox.expand(),
                                  ),
                                  Flexible(
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        final w = constraints.maxWidth;
                                        double scale;
                                        if (w > 600) {
                                          scale = 1.3;
                                        } else if (w > 350 && w <= 600) {
                                          scale = 1.1;
                                        } else if (w > 250 && w <= 350) {
                                          scale = 0.9;
                                        } else {
                                          scale = 0.6;
                                        }
                                        return SelectableText(
                                          story.content,
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            height: scale,
                                          ),
                                          //softWrap: true,
                                          textScaler: TextScaler.linear(scale),
                                          maxLines: 4,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: SelectableText(
                    'Story of a ${story.activity}.',
                    style: const TextStyle(
                      overflow: TextOverflow.fade,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
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
        ],
      ),
    );
  }
}
