import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MyApp',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: MyAppBar(),
    ),
  ));
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white,), onPressed: null
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text('demo'),
            collapseMode: CollapseMode.parallax,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.white,),
                tooltip: 'Add new entry',
                onPressed: null
            )
          ],
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildListDelegate(child()),
        )
      ],
    );
  }

  SliverGrid _gridSliver(){
    return SliverGrid(
        delegate: SliverChildListDelegate(child()),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0)
    );
  }


  List<Widget> child(){
    List<Widget> widget_data = <Widget>[
      ListTile(title: Text('Jakarta'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Bandung'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Bogor'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Depok'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Tangerang'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Bekasi'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Jatinegara'),),
      Divider(color: Colors.black,),
      ListTile(title: Text('Tanah Abang'),),
    ];
    return widget_data;
  }

}
