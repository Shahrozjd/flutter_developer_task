import 'dart:async';
import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_developer_task/models/exchange.dart';
import 'package:flutter_developer_task/theme/colors.dart';
import 'package:flutter_developer_task/theme/styles.dart';

class TradingPage extends StatefulWidget {
  const TradingPage({super.key});

  @override
  State<TradingPage> createState() => _TradingPageState();
}

class _TradingPageState extends State<TradingPage> {
  List<Exchange> rates = [];
  List<ReceivePort> receivePort =[];

  Map<String, double> exchanges = {
    "EURUSD": 2.1000,
    "XAGUSD": 30.99,
    "GBPUSD": 2.1000,
    "USDJPY": 110.100,
    "LTCUSD": 50.99,
    "ETHUSD": 400.99,
    "EURAUD": 2.1000,
    "EURCHF": 2.1000,
    "EURGBP": 1.1000,
    "EURJPY": 130.99,
    "GBPAUD": 1.9999,
  };

  @override
  void initState() {
    super.initState();
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (int i = 0; i < exchanges.length; i++) {
        receivePort.add(ReceivePort());
        rates.add(Exchange());
      }
      runIsolate();
    });
  }

  runIsolate() async {
    for (int i = 0; i < exchanges.length; i++) {


       Isolate.spawn(
          exchangeRate, [receivePort[i].sendPort, exchanges.values.toList()[i]]);

      receivePort[i].listen((message) {
        

        setState(() {
          rates[i] = Exchange(
            bid: message[0].toString(),
            ask: message[1].toString(),);
          
        });


      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DataTable(
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => CustomColors.darkGrey),
              headingRowHeight: 40,
              columnSpacing: 0,
              columns: [
                // DataColumn(
                //   label: Text(
                //     "Symbol",
                //     style: kTextStyleMedium,
                //   ),
                // ),
                DataColumn(
                  label: Text(
                    "Bid",
                    style: kTextStyleMedium,
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Ask",
                    style: kTextStyleMedium,
                  ),
                ),
              ],
              rows: rates
                  .map(
                    ((element) => DataRow(
                          cells: <DataCell>[
                            DataCell(Text(element.bid??"---")),
                            DataCell(Text(element.ask??"---")),
                          ],
                        )),
                  )
                  .toList(),
            ),
          ],
        ));
  }
}

exchangeRate(List<dynamic> parameters) {
  SendPort sendPort = parameters.first;
  double val = parameters.last;

  List<double> rates = [0.0, 0.0];

  Timer.periodic(const Duration(seconds: 1), (timer) {
    var random = Random();
    double bid = random.nextDouble() * val;
    double ask = random.nextDouble() * val;
    if (bid >= ask) ask += 1;

    rates[0] = bid;
    rates[1] = ask;

    sendPort.send(rates);
  });
}
