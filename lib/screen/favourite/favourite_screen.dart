import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favourite_provider.dart';


class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title:  Text('FAVOURITE APP'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount:100,
             itemBuilder: (context, index){
              return Consumer<FavouriteItemProvider>(builder: (context, value,child){
               return ListTile(
                  onTap: (){
                    if(value.selectedItem.contains(index)){
                      value.removeItem(index);
                    }else {
                      value.addItem(index);
                    }

                  },
                  title : Text("Item "+index.toString()),
                  trailing: Icon(
                      value.selectedItem.contains(index)? Icons.favorite :Icons.favorite_border_outlined),

                );
              });
                  },
            ),
          ),
        ],
      ),
    );
  }
}
