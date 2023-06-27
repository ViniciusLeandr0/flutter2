


import 'package:flutter/material.dart';

class Logado extends StatelessWidget {
  const Logado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'CAVALO',
            style: TextStyle(color: Colors.white),
          ),
          leading: Ink(
            child: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )),
      body: const Pagina2(),
    );
  }
}

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 66),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
           const Center(
              child:CircleAvatar(
              backgroundImage: AssetImage('images/cavalo.jpg'),
              radius: 50,
            ),
            ),
            const Padding(padding: EdgeInsets.all(10),),
           const Text(
              'Zeca',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, letterSpacing: 2),
            ),
            Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding:const EdgeInsets.only(top:40),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Icon(Icons.search,size: 50,),
                Padding(padding: EdgeInsets.only(top:40,left: 40,right: 40)),
               Icon(Icons.settings,size: 50,),
                Padding(padding: EdgeInsets.only(top:40,left: 40,right: 40)),
               Icon(Icons.access_alarm,size: 50,),
                 Padding(padding: EdgeInsets.only(top:40,left: 40,right: 40)),
               Icon(Icons.account_balance,size: 50,),
                ],
               ),
               ),
                Padding(padding:const EdgeInsets.only(top:0, bottom: 0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                Text('cavalo',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),),
                Padding(padding: EdgeInsets.all(40)),
               Text('tigre',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Padding(padding: EdgeInsets.all(40)),
               Text('leao',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Padding(padding: EdgeInsets.all(40)),
                Text('camelo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ],
               ),
               ),
             const Padding(padding: EdgeInsets.only(top:50)),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const[
                Image(image: AssetImage('/images/cavalo.jpg'),width: 150,),
                Padding(padding: EdgeInsets.all(10)),
                Image(image: AssetImage('/images/cavalo.jpg'),width: 150)

              ]
             
             )
              ],
            )
          ],
        ),
      ),
    );
  }
}