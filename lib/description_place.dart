import 'package:flutter/material.dart';

class DescriptionPlace  extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    const star = Icon(
      Icons.star,
      color: Color(0xFFf2C611),
    );

    const starHalf = Icon(
      Icons.star_half,
      color: Color(0xFFf2C611),
    );


    const starBorder = Icon(
      Icons.star_border,
      color: Color(0xFFf2C611),
    );

    const description = Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sapien tortor, mollis a felis quis, congue molestie magna. Donec sed commodo sapien. Proin sodales nulla at eros iaculis, et vestibulum velit ornare. Aenean mollis justo sem, et vulputate velit auctor in. Nullam ullamcorper, dolor non dignissim volutpat, neque ligula vestibulum neque, sit amet dictum nibh neque quis eros. Cras vel sapien sed urna eleifend accumsan. Nunc non purus at mauris fermentum fermentum venenatis sed leo. Proin nec mauris suscipit, mattis eros id, aliquet lorem. Nunc non augue nulla. Mauris ullamcorper, dui sit amet egestas aliquam, augue tellus molestie sem, in tempus velit tortor ultricies ipsum. Vivamus lobortis ligula nec arcu pretium pellentesque. ",
      style: TextStyle(
        fontSize: 20.0,
        color: Color(0xFF56575a),
      ),
    );

    final titleStars = Row(
      children:  <Widget>[
        const  Expanded(child: Text(
          "Duwili Ella",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: false,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFF56575a),
          )
          ,
        ),
        flex: 1,)
        ,
        Expanded(
        flex: 0,
        child: Row(
          children: const <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        ),
        ),

        
      ],
    );

    return SingleChildScrollView(
      child: Container(
      child: Column(
        children: <Widget>[
          titleStars,
          const SizedBox(height: 10.0),
          description,
        ],
      ),
      margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0, bottom: 30.0),
      
    ));
  }
}
