import 'package:flutter/material.dart';
import 'package:appDos/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
	final opciones = ['Top Bikini', 
					 'Bottom Bikini',
					 'Sandals',
					 'Hats',
					 'Sunglases',
					 'Lotion'];
	@override
	Widget build(BuildContext context) {
		return Scaffold(
	   		appBar: AppBar(
				backgroundColor: Colors.cyan,
	            	title: Text('ChipoCluda', 
						style:TextStyle(
						fontSize:40,
						color: Colors.pink),//TextStyle
					),//Text
			),//AppBar
	        body: _articulosPlayeros(),
	   );//Scaffold
	}//build

///-------------------------------------------------------------
Widget _articulosPlayeros() { 
	return FutureBuilder(
		future:menuProvider.cargarData(),
		initialData:[],
		builder:(context, AsyncSnapshot<List<dynamic>> snapshot){ 
			return ListView(
				children: _listaItems(snapshot.data),
			);//ListView
		},//builder
	);//FutureBuilder
}//_articulosPlayeros
///-------------------------------------------------------------

List<Widget>_listaItems(List<dynamic> data){ 
	
	final List<Widget> opciones = [];
	data.forEach((opt){

		final widgetTemp = ListTile( 
			title:Text(opt['texto'],
				style:TextStyle( 
					fontSize:20,
					color:Colors.cyan,
				),//TextStyle
			),//Text
			subtitle:Text('ChipoCluda',
				style:TextStyle(
					fontSize:10,
					color:Colors.pink),//TextStyle
			),//Text
			leading:Icon(Icons.accessibility,
				color:Colors.pink,
				size:40.0,
			),//Icon
			trailing:Icon(Icons.keyboard_arrow_right,
				color:Colors.yellow,
				size:50.0,
			),//Icon
		);//ListTile

	opciones..add(widgetTemp);
	opciones..add(
		Divider(
			height:10,
			indent:20,
			endIndent:20,
			thickness: 2,
			color:Colors.yellow,
		),//Divider
	);//add		
	});//data
	return opciones;
}//_listaItems
}//HomePage
