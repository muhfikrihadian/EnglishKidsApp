import 'package:english_kids_app/components/list_place.dart';
import 'package:english_kids_app/models/dummy_data.dart';
import 'package:english_kids_app/models/type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = route['id'];
    final title = route['title'];
    final animalsLists = ANIMALS_DUMMY_DATA.where((place) {
      return place.category == id;
    }).toList();
    final coloursLists = COLOURS_DUMMY_DATA.where((colours) {
      return colours.category == id;
    }).toList();
    final fruitsLists = FRUITS_DUMMY_DATA.where((datas) {
      return datas.category == id;
    }).toList();
    final treesLists = TREES_DUMMY_DATA.where((datas) {
      return datas.category == id;
    }).toList();
    final vegetablesLists = VEGETABLES_DUMMY_DATA.where((datas) {
      return datas.category == id;
    }).toList();
    final vehiclesLists = VEHICLES_DUMMY_DATA.where((datas) {
      return datas.category == id;
    }).toList();
    List<Type> tipe = null;

    if(title == "Animals"){
      tipe = animalsLists;
    }else if(title == "Colours"){
      tipe = coloursLists;
    }else if(title == "Fruits"){
      tipe = fruitsLists;
    }else if(title == "Trees"){
      tipe = treesLists;
    }else if(title == "Vegetables"){
      tipe = vegetablesLists;
    }else if(title == "Vehicles"){
      tipe = vehiclesLists;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ListPlace(
            tipe[index].id,
            tipe[index].name,
            tipe[index].image,
            tipe[index].description,
            title
          );
        },
        itemCount: tipe.length,
      ),
    );
  }
}