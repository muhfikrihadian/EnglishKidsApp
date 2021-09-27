import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPlace extends StatelessWidget{
  final String id;
  final String name;
  final String image;
  final String description;
  final String tipe;

  ListPlace(this.id, this.name, this.image, this.description, this.tipe);

  void goToDetail(BuildContext context){
    Navigator.of(context).pushNamed('/detail', arguments: {"id":id, "title":name, "description":description, "tipe":tipe});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(top:15, bottom: 15),
        child: Column(
          children: <Widget>[
            Container(
              // tag: "logo",
              child:  ListTile(
                // leading : Image.network(image),
                leading: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/ic_loading.gif',
                  image: image,
                ),
                title: Text(name),
                subtitle: Text(description.length > 100 ? description.substring(0, 100) + "..." : description),
                onTap: () => goToDetail(context),
              ),
            ),

          ],
        ),

      ),
    );
  }
}