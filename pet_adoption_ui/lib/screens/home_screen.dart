import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adoption_ui/models/pet_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildPetCategory(bool isSelected, String category) {
    return GestureDetector(
      onTap: () => print('Selected $category'),
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 80.0,
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).primaryColor
              : Color(0xFFF8F2F7),
          borderRadius: BorderRadius.circular(20.0),
          border: isSelected
              ? Border.all(width: 8.0, color: Color(0xFFFED8D3))
              : null,
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40.0, top: 40.0),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage(owner.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Gap(40.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 22.0),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.black,
                    size: 40.0,
                  ),
                ),
                labelText: 'Location',
                labelStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
                contentPadding: EdgeInsets.only(bottom: 20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 40.0,
              vertical: 15.0,
            ),
            child: Divider(),
          ),
          Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Gap(40.0),
                Padding(
                  padding: EdgeInsetsGeometry.only(right: 20.0),
                  child: IconButton(
                    onPressed: () => print('Filters'),
                    icon: Icon(Icons.search, size: 35.0),
                  ),
                ),
                _buildPetCategory(false, 'Cats'),
                _buildPetCategory(true, 'Dogs'),
                _buildPetCategory(false, 'Birds'),
                _buildPetCategory(false, 'Other'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
