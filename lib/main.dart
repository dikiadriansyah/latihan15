import 'package:flutter/material.dart';
import 'package:latihan15/second_screen.dart';

void main() {
  runApp(const AppKu());
}

class AppKu extends StatelessWidget{
  const AppKu({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan 15',
      theme: ThemeData(
        // -----------------
        // dapat mengubah font family pada satu per satu widget Text, kita dapat membuat font yang kita daftarkan menjadi default. Caranya dengan menambahkan parameter fontFamily pada kelas ThemeData yang ada pada parameter theme di MaterialApp
          fontFamily: 'Oswald',
          // -----------------
          primarySwatch: Colors.blue
      ),
      home: FirstScreen(),
    );
  }
}


class FirstScreen extends StatelessWidget{
  /*
        Dalam pemrograman Android kita mengenal Intent lalu pada pemrograman website terdapat tag untuk berpindah dari satu page ke page lain.
        Pada Flutter kita akan menggunakan sebuah class bernama Navigator.
         Dengan Navigator ini kita akan berpindah dari satu screen ke screen lainnya.
         */

  // Seringkali beberapa halaman pada aplikasi perlu saling berinteraksi dengan berbagi dan saling mengirimkan data. Pada Flutter kita memanfaatkan constructor dari sebuah class untuk mengirimkan data antar halaman.
  final String message = 'Hai Dari First Screen';
  // const FirstScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body:

      Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: (){
            // Untuk berpindah ke screen kedua kita akan menggunakan sebuah method Navigator.push
            // Untuk mengirimkan variabel message tersebut ke Second Screen, maka kita akan mengirimkannya sebagai parameter dari constructor kelas SecondScreen
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(message)
            ));
            /*
            Navigator.push memiliki dua parameter. Pertama ialah context dan yang kedua Route. Parameter context ini merupakan variabel BuildContext yang ada pada method build.
            Parameter route berguna untuk menentukan tujuan ke mana kita akan berpindah screen. Route tersebut kita isikan dengan MaterialPageRoute yang di dalamnya terdapat builder yang nantinya akan diisi dengan tujuan screen-nya.
            Maka untuk melakukan perpindahan screen kita akan membuat event onPressed pada tombol ElevatedButton yang ada pada screen pertama:
             */
          },
        ),
      ),
    );
  }
}