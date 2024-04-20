import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class MainScreen extends StatelessWidget {

  String platform = 'Неопределенная платформа';

  @override

  Widget build(BuildContext context) {

    if (kIsWeb) {platform = 'Определена платформа WEB';   }
    if (Platform.isAndroid) { platform = 'Определена платформа Android'; }
    if (Platform.isWindows) { platform = 'Определена платформа Windows'; }
    if (Platform.isIOS) { platform = 'Определена платформа IOS'; }
    if (Platform.isLinux) { platform = 'Определена платформа Linux'; }
    if (Platform.isMacOS) { platform = 'Определена платформа MacOS'; }
    if (Platform.isFuchsia) { platform = 'Определена платформа Fuchsia'; }

    return Scaffold(

      appBar: AppBar(title: Text('Главное окно')),

      body: new Column( children: [ 
        Container ( color: Colors.white,   height:40,
          child: 
        new Text( ' Практической работе №5 ', style: TextStyle(fontSize: 30, color: Colors.indigo) )),

        Container ( color: Colors.cyan,   height:350,

	child: Center(child: Column(children: [

        new Text(platform , style: TextStyle(fontSize: 30, color: Colors.white)),
        new Text('  '),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_2');}, child: Text('Открыть второе окно',style: TextStyle(fontSize: 24, color: Colors.blue) )),
        new Text('  '),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_3');}, child: Text('Открыть третье окно',style: TextStyle(fontSize: 24, color: Colors.red) )),
        new Text('  '),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_4');}, child: Text('Открыть четвертое окно',style: TextStyle(fontSize: 24, color: Colors.green) ))

      ],)),)]

    )
    );

  }

}


class Screen_2 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Второе окно',style: TextStyle(fontSize: 20, color: Colors.blue))),

      body: Center(child:  new Column(

        children: [
          new Text('Для переключения между окнами или виджетами нужно использовать Navigator. Navigator – виджет-класс, позволяющий управлять стеком дочерних виджетов, т.е. открывать, закрывать и переключать окна или страницы. Когда мы используем MaterialApp, то экземпляр класса Navigator уже создан.', style: TextStyle(fontSize: 20, color: Colors.blue)),
	  new Image.network("https://flutter.su/data/f8f8cabc67a5a9642134a5fdb3a55a45.png?w=150", width: 150.0, height: 150.0,),
   ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.blue)))
   ])),
    
    );

  }

}



class Screen_3 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Третье окно',style: TextStyle(fontSize: 20, color: Colors.red))),

      body: Center(child:  new Column(

        children: [
	  new Image.asset("image/i1.png"),
   ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.red)))
   ])),
    
    );

  }

}



class Screen_4 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Четвертое окно',style: TextStyle(fontSize: 20, color: Colors.blue))),

      body: Center(child:  new Column(

        children: [
          new Text(' Еще одно окно ', style: TextStyle(fontSize: 24, color: Colors.green)),
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_5');}, child: Text('Открыть пятое окно',style: TextStyle(fontSize: 24, color: Colors.purpleAccent) )),
   ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.green)))
   ])),
    
    );

  }

}





class Screen_5 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Пятое окно',style: TextStyle(fontSize: 20, color: Colors.purpleAccent))),

      body: Center(child: ElevatedButton(onPressed: (){

        Navigator.pop(context);

      }, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.purpleAccent)))),

    );

  }

}



void main() {

  runApp(MaterialApp(


    initialRoute: '/',

    routes: {

      '/':(BuildContext context) => MainScreen(),

      '/screen_2':(BuildContext context) => Screen_2(),
      '/screen_3':(BuildContext context) => Screen_3(),
      '/screen_4':(BuildContext context) => Screen_4(),
      '/screen_5':(BuildContext context) => Screen_5()

    }

  ));

}