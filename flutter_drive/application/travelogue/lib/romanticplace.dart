import 'package:flutter/material.dart';
import 'package:travelogue/diggin.dart';
import 'package:travelogue/le_cirque.dart';
import 'package:travelogue/miabella.dart';
import 'package:travelogue/romeolane.dart';
import 'package:travelogue/rosecafe.dart';
import 'package:travelogue/sevilla.dart';
import 'package:travelogue/sorrento.dart';
import 'package:travelogue/thaihigh.dart';

class webview5 extends StatefulWidget {
  const webview5({super.key});

  @override
  State<webview5> createState() => _webview5State();
}

class _webview5State extends State<webview5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => sevilla()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      ClipRRect(
                        //borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390ce2bfe0ddc155%3A0xc74f2bf0032573e7!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMdsU8QdygOEpTp89vFo-P6Fp1YdH4q1EImKyse%3Dw260-h175-n-k-no!5swarm%20and%20cozy%20restaurants%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipOow0oW7wKiVMDNhWf3RxKrxw5BGVEkoRlIkXic&hl=en&sa=X&ved=2ahUKEwjG3vPPycH7AhV3ILcAHeOPA-QQ7ZgBKAB6BAgiEAI#",
                            height: 105,
                            width: 190, //MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                      ),
                      Text(
                        "Sevilla",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => le_cirque()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 80, right: 20),
                  child: Column(
                    children: [
                      ClipRRect(
                        //borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.asset(
                            "assets/image/lecircle.jpg",
                            height: 105,
                            width: 160,
                          ),
                        ),
                      ),
                      Text(
                        "Le cirque",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => thaihigh()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390d1e11afc66825%3A0xceda71fb7f9d03e6!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOsi5YWY-c4AUoSRcObrUpXQroIEwvQMFCX4koN%3Dw260-h175-n-k-no!5sromantic%20place%20in%20delhi%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipOsi5YWY-c4AUoSRcObrUpXQroIEwvQMFCX4koN&hl=en&sa=X&ved=2ahUKEwiX4OnbxsH7AhU86jgGHbSAC-8Q7ZgBKAB6BAgYEAI#",
                            height: 105,
                            width: 180,
                          ),
                        ),
                      ),
                      Text(
                        "Thai high",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => rosecafe()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390ce1e407a7bc3f%3A0xe4daa7dba1c7f579!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNTZn4BL2rQv1ZpzQQDsUnNY28NlJDNZ9eaOyiC%3Dw260-h175-n-k-no!5sromantic%20place%20in%20delhi%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNTZn4BL2rQv1ZpzQQDsUnNY28NlJDNZ9eaOyiC&hl=en&sa=X&ved=2ahUKEwju2bGNx8H7AhV8xDgGHXy9De4Q7ZgBKAB6BAgiEAI#",
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "Rose cafe",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => miabella()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390d1d8aa2237655%3A0x47c455b61148be22!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipP_9fbN7crfNbRK7svHtFyyV1KFwWixHJLeSWSz%3Dw260-h175-n-k-no!5sromantic%20place%20in%20delhi%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipP_9fbN7crfNbRK7svHtFyyV1KFwWixHJLeSWSz&hl=en&sa=X&ved=2ahUKEwiH5o7Px8H7AhXowjgGHZ0iDO0Q7ZgBKAB6BAgcEAI#",
                            height: 105,
                            width: 180,
                          ),
                        ),
                      ),
                      Text(
                        "Miabella",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => sorrento()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390ce2ca845216ab%3A0x344160d2b5aca5a4!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNAODDvVH2p0TX8UtWCabsN1l-Kunv2PcW9tR8M%3Dw260-h175-n-k-no!5sromantic%20place%20in%20delhi%20sorrento%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNAODDvVH2p0TX8UtWCabsN1l-Kunv2PcW9tR8M&hl=en&sa=X&ved=2ahUKEwiQ6d_uyMH7AhX9-jgGHaSoBu4Q7ZgBKAB6BAgVEAI#",
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "Sorrento",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => romeolane()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390cfde46df6adb3%3A0xa6e882ddba69469e!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMchAwMuSeXkw5LFTI96ZTNgpFV51iMPl_qRMtd%3Dw260-h175-n-k-no!5sromantic%20place%20in%20delhi%20romeo%20lane%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMchAwMuSeXkw5LFTI96ZTNgpFV51iMPl_qRMtd&hl=en&sa=X&ved=2ahUKEwi2s7CLycH7AhX3xzgGHYrJCO8Q7ZgBKAB6BAgUEAI#",
                            height: 105,
                            width: 180,
                          ),
                        ),
                      ),
                      Text(
                        "Romeo lane",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => diggin()),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border
                        child: SizedBox.fromSize(
                          child: Image.network(
                            "https://www.google.com/maps/uv?pb=!1s0x390ce29e8cfa84b5%3A0x923a697eca1c1a80!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipM639vbmvmnVc1Afa55W1n_Oy6Ag0LjumZC67v1%3Dw260-h175-n-k-no!5sromantic%20place%20in%20delhi%20diggin%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipM639vbmvmnVc1Afa55W1n_Oy6Ag0LjumZC67v1&hl=en&sa=X&ved=2ahUKEwi6w8OuycH7AhXB03MBHTBOD60Q7ZgBKAB6BAgdEAI#",
                            height: 105,
                            width: 200,
                          ),
                        ),
                      ),
                      Text(
                        "Diggin",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
