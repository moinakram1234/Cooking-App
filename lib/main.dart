import 'package:cookingapp/Homepage.dart';
import 'package:cookingapp/RecipewithAi.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  _AppBarExampleState createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            // Handle the press event
          },
        ),
        title: const Text('Cooking Ai'),
        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },
        scrolledUnderElevation: 4.0,
        centerTitle: true,
        actions: <Widget>[
        
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'More',
            onPressed: () {
              // Handle the press event
            },
          ),
        ],
      ),
      body: _buildPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _currentIndex == 1 ? Colors.black : Colors.white, // Change this to your desired color
        currentIndex: _currentIndex,
        selectedItemColor:_currentIndex == 1 ? Colors.white :Colors.black , // Set the selected item color to white
        unselectedItemColor:_currentIndex == 1 ? Colors.white :Colors.black , // Set the unselected item color to black
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Create Recipe',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.receipt),
            label: 'Receipt',
          ),
        ], 
        elevation: 0.0,
      ),
    );
  }

  Widget _buildPage(int index) {
    final Color oddItemColor = Theme.of(context).primaryColor.withOpacity(0.05);
    final Color evenItemColor =
        Theme.of(context).primaryColor.withOpacity(0.15);

    switch (index) {
      case 0:
        return Container(
          margin: EdgeInsets.only(left: 15, right: 10),
          child: Column(
            children: [
           Container(
              margin: EdgeInsets.only(top: 10),
              width: 360,
              height: 40,
            child:    TextField( 
                decoration: InputDecoration(
                  
                  
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search), // replace with your desired icon
                ),
              ),
           ),
             
              HomePage(),
            ],
          ),
        );
      case 1:
        return Container(
        child: RecipeWithAI(),
        );
      case 2:
        return ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: index.isOdd ? oddItemColor : evenItemColor,
            );
          },
        );
      default:
        return Container(); // Handle additional cases if needed
    }
  }
}
