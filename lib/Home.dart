
import 'package:flutter/material.dart';

import 'description_place.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 250,
        left: 30,
        right: 30,
      ),
      child: DescriptionPlace("Uyuni", 3, "Lorem ipsum dolor sit amet consectetur adipiscing elit dictumst ultrices, volutpat per conubia eleifend ac gravida tincidunt diam, ultricies sem litora netus odio ornare natoque nullam. Eros magnis id interdum est dictum fringilla, pellentesque duis aptent nibh at orci, cras sagittis potenti semper conubia. Cras erat ullamcorper tempor etiam dapibus primis molestie, natoque ridiculus augue pretium maecenas accumsan porta nisl, commodo neque nibh praesent nullam lobortis.Consequat metus convallis lectus imperdiet a cursus habitant fusce feugiat proin, sapien justo curabitur augue faucibus velit mus dictum hendrerit, vehicula volutpat sed nisl iaculis diam nunc platea vulputate. Elementum justo felis mollis senectus aptent praesent, molestie eget egestas enim potenti sem, suscipit quis vestibulum vulputate posuere ante, sollicitudin facilisi risus placerat lobortis. Ante ultrices congue lacinia class faucibus integer augue eros fringilla, quisque ridiculus id sociis et aliquet rhoncus nisl")
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My places"
       ),
    ),
      body: Stack(
        children:<Widget> [
          descriptionPlace
        ],
      ),
    );
  }
}