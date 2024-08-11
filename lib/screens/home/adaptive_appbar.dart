part of '../../screens/home.dart';

class AdaptiveAppbar extends StatelessWidget {
  final double screenWidth;
  const AdaptiveAppbar({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 80),
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
        child: Container(
          width: double.infinity,
          color: Colors.black26,
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                child: Container(
                  height: 80,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/harmony_logo.png',
                        filterQuality: FilterQuality.medium,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'HARMONY',
                        style: TextStyle(
                          fontFamily: 'Monoton',
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 880),
                child: Container(
                  height: 80,
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
                      ElevatedButton(
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
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuLabelButton(String title, String navigation) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {
        //Go to navigation
      },
    );
  }
}
