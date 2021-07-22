class Story {
  final Name name;
  final String activity;
  final String image;
  final String title;
  final String content;

  Story({
    required this.name,
    required this.activity,
    required this.image,
    this.title = '',
    this.content = '',
  });
}

class Name {
  final String first;
  final String last;

  Name(this.first, this.last);

  String get firstInitial => first[0];
  String get lastInitial {
    if (last.isNotEmpty){
      return last[0];
    }
    return '';
  }
}
