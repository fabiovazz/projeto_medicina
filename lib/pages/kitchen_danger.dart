import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class KitchenDanger extends StatefulWidget {
  const KitchenDanger({Key? key}) : super(key: key);

  @override
  _KitchenDangerState createState() => _KitchenDangerState();
}

class _KitchenDangerState extends State<KitchenDanger> {
  List<bool> options = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 46, 139, 1),
      body: ListView(
        children: [
          Column(
            children: [
              const Text("Encontre o Perigo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      decoration: TextDecoration.none)),
              const Padding(padding: EdgeInsets.only(top: 5)),
              const Text("Cozinha",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      decoration: TextDecoration.none)),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Image.asset(
                'assets/kitchen/origin.png',
                width: 350,
                height: 300,
                fit: BoxFit.fill,
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 130,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          options[0] = true;
                          options[1] = false;
                          options[2] = false;
                          options[3] = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          options[0]
                              ? const Color.fromRGBO(247, 207, 90, 1)
                              : const Color.fromARGB(12, 46, 139, 1),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(5),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Image.asset(
                        'assets/kitchen/op1.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          options[0] = false;
                          options[1] = true;
                          options[2] = false;
                          options[3] = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          options[1]
                              ? const Color.fromRGBO(247, 207, 90, 1)
                              : const Color.fromARGB(12, 46, 139, 1),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(5),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Image.asset(
                        'assets/kitchen/op2.png',
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 130,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          options[0] = false;
                          options[1] = false;
                          options[2] = true;
                          options[3] = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          options[2]
                              ? const Color.fromRGBO(247, 207, 90, 1)
                              : const Color.fromARGB(12, 46, 139, 1),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(5),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Image.asset('assets/kitchen/op3.png',
                          fit: BoxFit.contain),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          options[0] = false;
                          options[1] = false;
                          options[2] = false;
                          options[3] = true;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          options[3]
                              ? const Color.fromRGBO(247, 207, 90, 1)
                              : const Color.fromARGB(12, 46, 139, 1),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(5),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Image.asset('assets/kitchen/op4.png',
                          fit: BoxFit.contain),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              SizedBox(
                width: 80,
                height: 50,
                child: IconButton(
                  splashRadius: 25,
                  alignment: Alignment.center,
                  onPressed: () {
                    if (options.contains(true)) {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text(options[2] == true ? "Parabéns" : "Ops!"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(options[2] == true
                                    ? 'Você encontrou o perigo!'
                                    : 'Você não encontrou o perigo'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Próximo'),
                              onPressed: () {
                                context.go('/yard');
                              },
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.arrow_forward),
                  iconSize: 35,
                  color: const Color.fromRGBO(247, 207, 90, 1),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
