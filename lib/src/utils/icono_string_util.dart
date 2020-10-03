import 'package:flutter/material.dart';

final _icons = <String, IconData> {
	'emoji_people' : Icons.emoji_people,
	'accessibility' : Icons.accessibility,
	'directions_run' : Icons.directions_run,
	};//_icons

Icon getIcon (String nombreIcono) { 
	
	return Icon(_icons[nombreIcono],
		color:Colors.purple,
		size:40.0);//Icon
}
