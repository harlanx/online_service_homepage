part of '../../screens/home.dart';

class ShareStoryLabel extends StatelessWidget {
  const ShareStoryLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600, minWidth: 400),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: const Offset(-3, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        child: FittedBox(
          fit: BoxFit.contain,
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
                maxLines: 2,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
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
    );
  }
}
