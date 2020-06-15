import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';

class CustomSearchBox extends StatefulWidget {
  final Function onChanged;

  const CustomSearchBox({@required this.onChanged});

  @override
  _CustomSearchBoxState createState() => _CustomSearchBoxState();
}

class _CustomSearchBoxState extends State<CustomSearchBox> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.accentColor.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(10 * AppSizeConfig.heightMultiplier),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4 * AppSizeConfig.widthMultiplier,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              controller: _searchController,
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: AppTheme.accentColor,
                    fontSize: 2 * AppSizeConfig.textMultiplier,
                  ),
              onChanged: (text) {
                widget.onChanged(text);
                setState(() {});
              },
              keyboardType: TextInputType.text,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Type product name here',
                hintStyle: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: AppTheme.accentColor,
                    ),
                contentPadding:  EdgeInsets.zero,
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              _searchController.text.trim().length > 0
                  ? Icons.close
                  : Icons.search,
              size: 6 * AppSizeConfig.imageSizeMultiplier,
              color: AppTheme.accentColor,
            ),
            onPressed: () {
              if (_searchController.text.trim().length > 0) {
                _searchController.text = '';
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
