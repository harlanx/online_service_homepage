part of '../../screens/home.dart';

class AdaptiveAppbar extends StatelessWidget {
  const AdaptiveAppbar({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
      ),
      child: Container(
        width: double.infinity,
        color: Colors.black26,
        constraints: const BoxConstraints(
            minHeight: 80,
            maxHeight: double.infinity,
            maxWidth: double.infinity),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          alignment: screenWidth >= 1240
              ? WrapAlignment.spaceBetween
              : WrapAlignment.center,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.asset(
                      'assets/icons/harmony_logo.png',
                      filterQuality: FilterQuality.medium,
                      fit: BoxFit.scaleDown,
                      height: 64,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Flexible(
                    flex: 2,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'HARMONY',
                        style: TextStyle(
                          fontFamily: 'Monoton',
                          fontSize: 40,
                        ),

                        maxLines: 1,
                        //overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 880),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  spacing: 50,
                  children: [
                    menuLabelButton('Home', ''),
                    menuLabelButton('Stories', ''),
                    menuLabelButton('Community', ''),
                    menuLabelButton('About', ''),
                    menuLabelButton('Contact', ''),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          backgroundColor: const Color(0xFF7aa9b9),
                          foregroundColor: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 5,
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuLabelButton(String title, String navigation) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
          overflow: TextOverflow.fade,
        ),
        onTap: () {
          //Go to navigation
        },
      ),
    );
  }
}
