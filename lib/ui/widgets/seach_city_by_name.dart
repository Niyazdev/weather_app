import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';
import 'package:whetherapp/utils/custom_search_textfield.dart';

class SearchCityByName extends StatefulWidget {
  final Function onChanged;

  const SearchCityByName({@required this.onChanged});

  @override
  _SearchCityByNameState createState() => _SearchCityByNameState();
}

class _SearchCityByNameState extends State<SearchCityByName> {
  final TextEditingController _searchController = TextEditingController();

  String _searchText;

  IconData _suffixIcon() {
    _searchText = _searchController.text.toString().trim();
    return _searchText.isNotEmpty ? Icons.clear : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 2 * AppSizeConfig.widthMultiplier,
        vertical: 1 * AppSizeConfig.heightMultiplier,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(width: 0.5, color: AppTheme.hintColor),
      ),
      child: CustomSearchTextField(
        prefixIcon: Icons.search,
        labelText: 'Search for a City',
        suffixIcon: _suffixIcon(),
        onIconPress: () {
          setState(() {
            _searchController.text = '';
          });
        },
        textEditingController: _searchController,
        onChanged: (String value) {
          widget.onChanged(value);
        },
      ),
    );
  }
}
