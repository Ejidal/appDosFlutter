import 'package:flutter/material.dart';


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
	        body: ListView(
				children: _articulosPlayeros(),
			),//ListView
	   );//Scaffold
	}//build
//-------------------------------------------------------------
	List<Widget> _crearItems() { 
		List<Widget> lista = new List<Widget>();

		for (String opt in opciones){
			final tempWidget = ListTile(
				title:Text(opt),
				);//ListTitle

				lista.add(tempWidget);
				lista.add(Divider());
			}//opciones
		return lista;

	}//_crearItems
//-------------------------------------------------------------
	List<Widget> _articulosPlayeros() { 

		return opciones.map((item) { 

			return Column(
				children:<Widget>[
					ListTile( 
						title:Text(item,
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
					),//ListTile
					Divider(
						height:10,
						indent:20,
						endIndent:20,
						thickness: 2,
						color:Colors.yellow,
					),//Divider
				],//Widget
			);//Column

		}).toList();//opciones.map
		
	}//_articulosPlayeros
//-------------------------------------------------------------

}//HomePage
