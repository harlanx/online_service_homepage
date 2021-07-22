part of '../../screens/home.dart';

class FeaturedStoryBox extends StatelessWidget {
  final Story story;
  const FeaturedStoryBox({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(story.image, fit: BoxFit.cover),
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              heightFactor: 0.15,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.centerLeft,
                color: Colors.black54,
                child: Text(
                  story.activity,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.25, 1.0],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${story.name.first} ${story.name.lastInitial}${story.name.lastInitial.isNotEmpty ? '.' : ''}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Read >>',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
