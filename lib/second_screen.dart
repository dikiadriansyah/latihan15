// import 'package:latihan15/main.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{

  // Agar Second Screen bisa menerima data tersebut, maka kita perlu mengubah default constructor-nya dan menambahkan variabel untuk menampung datanya.
  final String message;

  const SecondScreen(this.message, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text('Second Screen')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kemudian kita dapat menampilkan data yang diterima melalui variabel yang kita buat.
            Text(message),
        OutlinedButton(
          child: const Text('Kembali'),
          onPressed: (){
            // Navigator.pop
            // Setelah dapat berpindah ke screen lain maka kita akan belajar menggunakan Navigator.pop untuk kembali ke screen sebelumnya.
            // Pada Navigator.pop kita hanya cukup menambahkan parameter context yang merupakan variabel dari method build.
            Navigator.pop(context);
          },
          /*
Untuk kembali dari screen kedua kita dapat menambahkan event onPressed pada OutlinedButton yang ada pada screen kedua dan kita masukkan Navigator.pop pada event,
           */
        ),
          ],
        ),
        ),

    );
  }
}