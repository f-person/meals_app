import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _gluttenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals',
                  _gluttenFree,
                  (value) => _gluttenFree = value,
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals',
                  _lactoseFree,
                  (value) => _lactoseFree = value,
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals',
                  _vegetarian,
                  (value) => _vegetarian = value,
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals',
                  _vegan,
                  (value) => _vegan = value,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
