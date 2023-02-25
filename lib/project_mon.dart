import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

final TextEditingController _minRisk = TextEditingController();
final TextEditingController _lowRisk = TextEditingController();
final TextEditingController _reasonableRisk = TextEditingController();
final TextEditingController _highRisk = TextEditingController();

final TextEditingController _minRiskSchedule = TextEditingController();
final TextEditingController _lowRiskSchedule = TextEditingController();
final TextEditingController _reasonableRiskSchedule = TextEditingController();
final TextEditingController _highRiskSchedule = TextEditingController();

final TextEditingController _minRiskDsgnProg = TextEditingController();
final TextEditingController _lowRiskDsgnProg = TextEditingController();
final TextEditingController _reasonableRiskDsgnProg = TextEditingController();
final TextEditingController _highRiskDsgnProg = TextEditingController();

final TextEditingController _minRiskImpProg = TextEditingController();
final TextEditingController _lowRiskImpProg = TextEditingController();
final TextEditingController _reasonableRiskImpProg = TextEditingController();
final TextEditingController _highRiskImpProg = TextEditingController();

final TextEditingController _minRiskIntProg = TextEditingController();
final TextEditingController _lowRiskIntProg = TextEditingController();
final TextEditingController _reasonableRiskIntProg = TextEditingController();
final TextEditingController _highRiskIntProg = TextEditingController();

final TextEditingController _minRiskNewMet = TextEditingController();
final TextEditingController _lowRiskNewMet = TextEditingController();
final TextEditingController _reasonableRiskNewMet = TextEditingController();
final TextEditingController _highRiskNewMet = TextEditingController();

final TextEditingController metric1 = TextEditingController();
final TextEditingController metric2 = TextEditingController();
final TextEditingController metric3 = TextEditingController();
final TextEditingController metric4 = TextEditingController();
final TextEditingController metric5 = TextEditingController();
final TextEditingController metricName1 = TextEditingController();

double _lowScore = 0.0;
double _medScore = 0.0;
int _highScore = 0;
int _totalVotes = 0;

double _lowScoreSchedule = 0.0;
double _medScoreSchedule = 0.0;
int _highScoreSchedule = 0;
int _totalVotesSchedule = 0;

double _lowScoreDsgnProg = 0.0;
double _medScoreDsgnProg = 0.0;
int _highScoreDsgnProg = 0;
int _totalVotesDsgnProg = 0;

double _lowScoreImpProg = 0.0;
double _medScoreImpProg = 0.0;
int _highScoreImpProg = 0;
int _totalVotesImpProg = 0;

double _lowScoreIntProg = 0.0;
double _medScoreIntProg = 0.0;
int _highScoreIntProg = 0;
int _totalVotesIntProg = 0;

double _lowScoreNewMet = 0.0;
double _medScoreNewMet = 0.0;
int _highScoreNewMet = 0;
int _totalVotesNewMet = 0;

double _riskDefects = 0.0;
double _riskSchedule = 0.0;
double _riskDsgnProg = 0.0;
double _riskImpProg = 0.0;
double _riskIntProg = 0.0;
double _riskNewMet = 0.0;

double overallRisk = 0.0;
double newSCore = 0.0;

class FirstRoute extends StatefulWidget {
  //const FirstRoute({super.key});
  @override
  _firstRouteState createState() => _firstRouteState();
}

class _firstRouteState extends State<FirstRoute> {
  final _project_mon_State project = new _project_mon_State();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    metric1.dispose();
    metric2.dispose();
    metric3.dispose();
    metric4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Total project risk'),
      ),
      body: Center(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
              child: Container(
                  //margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 300.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // radius of 10
                    color: Color.fromARGB(255, 200, 192, 192),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ], // green as background color
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                    child: Text(
                      overallRisk < 0.3333333333
                          ? "🟩 ${overallRisk.toStringAsFixed(9)}"
                          : (overallRisk > 0.3333333333) &&
                                  (overallRisk < 0.6666666667)
                              ? "🟨 ${overallRisk.toStringAsFixed(9)}"
                              : overallRisk > 0.6666666667
                                  ? "🟥 ${overallRisk.toStringAsFixed(9)}"
                                  : "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ))),
        ]),
      ),
    );
  }
}

void main() {
  runApp(App());
  test('first function', () {
    _project_mon_State project = new _project_mon_State();
    final calculation = project_mon();
    final test = project.calculateRisks();
    expect(() => test, throwsAssertionError);
  });

  test('second function', () {
    _project_mon_State project = new _project_mon_State();
    final calculation = project_mon();
    final test = project.calculateRisksSchedule();
    expect(() => test, throwsAssertionError);
  });

  test('third function', () {
    _project_mon_State project = new _project_mon_State();
    final calculation = project_mon();
    final test = project.calculateRisksImpProg();
    expect(() => test, throwsAssertionError);
  });

  test('fourth function', () {
    _project_mon_State project = new _project_mon_State();
    final calculation = project_mon();
    final test = project.calculateRisksIntProg();
    expect(() => test, throwsAssertionError);
  });

  test('fifth function', () {
    _project_mon_State project = new _project_mon_State();
    final calculation = project_mon();
    final test = project.calculateRisksNewMet();
    expect(() => test, throwsAssertionError);
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: project_mon(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Add entries'),
          onPressed: () async {
            List<PersonEntry> persons = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => project_mon(),
              ),
            );
            if (persons != null) persons.forEach(print);
          },
        ),
      ),
    );
  }
}

class project_mon extends StatefulWidget {
  @override
  _project_mon_State createState() => _project_mon_State();
}

class PersonEntry {
  final String first;
  final String second;
  final String third;
  final String fourth;
  final String fifth;

  PersonEntry(this.first, this.second, this.third, this.fourth, this.fifth);
  @override
  String toString() {
    return 'Metric: metric1= $first, metric2= $second, metric3= $third, metric4 = $fourth, metric5 = $fifth';
  }
}

@visibleForTesting
class _project_mon_State extends State<project_mon> {
  var met1 = <TextEditingController>[];
  var met2 = <TextEditingController>[];
  var met3 = <TextEditingController>[];
  var met4 = <TextEditingController>[];
  var met5 = <TextEditingController>[];
  var cards = <Card>[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Project Monitoring App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(25), // radius of 10
                          color: Colors.grey // green as background color
                          ),

                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      //color: Colors.grey,
                      width: 520.0,
                      height: 100.0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
                        child: Text(
                          'Rules: Please read all the risk assessments below and enter your votes for each bin. You should see your risk values displayed shortly after!!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // radius of 10
                        color: Color.fromARGB(255, 189, 102, 204),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 50, 220, 0),
                      //color: Colors.grey,
                      width: 200.0,
                      height: 35.0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        child: Text(
                          'Total number of defects',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), // radius of 10
                        color: Color.fromARGB(255, 176, 173, 173),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      //color: Colors.grey,
                      width: 520.0,
                      height: 310.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Minimal risk: Number of defects are well below where expected',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 22, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _minRisk,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Low risk: Number of defects are about where we expect',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _lowRisk,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Reasonable risk: Number of defects are slightly above what is expected',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _reasonableRisk,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'High risk: Number of defects greatly exceed expectations',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _highRisk,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('View score'),
              onPressed: calculateRisks,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // radius of 10
                  color: Color.fromARGB(255, 176, 173, 173),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ], // green as background color
                ),

                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //color: Colors.grey,
                width: 300.0,
                height: 310.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Low score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_lowScore.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Med score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_medScore.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'High score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_highScore.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total votes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_totalVotes.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total risk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _totalVotes == null
                                        ? "Required"
                                        : "${_riskDefects.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 60.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    _riskDefects < 0.3333333333
                                        ? "🟩"
                                        : (_riskDefects > 0.3333333333) &&
                                                (_riskDefects < 0.6666666667)
                                            ? "🟨"
                                            : (_riskDefects > 0.666666666)
                                                ? "🟥"
                                                : "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // radius of 10
                        color: Color.fromARGB(255, 189, 102, 204),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 50, 220, 0),
                      //color: Colors.grey,
                      width: 200.0,
                      height: 35.0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        child: Text(
                          'Schedule feasibility',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), // radius of 10
                        color: Color.fromARGB(255, 176, 173, 173),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      //color: Colors.grey,
                      width: 520.0,
                      height: 310.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Minimal risk: Project can be easily completed in scheduled time',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 22, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _minRiskSchedule,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Low risk: Project can be completed in scheduled time with strict management',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _lowRiskSchedule,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Reasonable risk: Project may be completed in scheduled time, but will require crunch',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _reasonableRiskSchedule,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'High risk: Project is unlikely to be completed in scheduled time',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _highRiskSchedule,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('View score'),
              onPressed: calculateRisksSchedule,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // radius of 10
                  color: Color.fromARGB(255, 176, 173, 173),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ], // green as background color
                ),

                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //color: Colors.grey,
                width: 300.0,
                height: 310.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Low score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_lowScoreSchedule.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Med score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_medScoreSchedule.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'High score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_highScoreSchedule.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total votes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_totalVotesSchedule.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total risk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _totalVotes == null
                                        ? "Required"
                                        : "${_riskSchedule.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 60.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    _riskSchedule < 0.3333333333
                                        ? "🟩"
                                        : (_riskSchedule > 0.3333333333) &&
                                                (_riskSchedule < 0.6666666667)
                                            ? "🟨"
                                            : (_riskSchedule > 0.666666666)
                                                ? "🟥"
                                                : "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // radius of 10
                        color: Color.fromARGB(255, 189, 102, 204),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 50, 220, 0),
                      //color: Colors.grey,
                      width: 200.0,
                      height: 35.0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        child: Text(
                          'Design Progress',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), // radius of 10
                        color: Color.fromARGB(255, 176, 173, 173),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      //color: Colors.grey,
                      width: 520.0,
                      height: 310.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Minimal risk: The design is complete',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 22, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _minRiskDsgnProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Low risk: Design is mostly complete and no major problems are noted',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _lowRiskDsgnProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Reasonable risk: Design is incomplete and one major problem is noted with strategies to mitigate',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _reasonableRiskDsgnProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'High risk: Design is incomplete, has several major problems with no plans to mitigate',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _highRiskDsgnProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('View score'),
              onPressed: calculateRisksDsgnProg,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // radius of 10
                  color: Color.fromARGB(255, 176, 173, 173),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ], // green as background color
                ),

                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //color: Colors.grey,
                width: 300.0,
                height: 310.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Low score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_lowScoreDsgnProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Med score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_medScoreDsgnProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'High score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_highScoreDsgnProg.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total votes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_totalVotesDsgnProg.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total risk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _totalVotes == null
                                        ? "Required"
                                        : "${_riskDsgnProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 60.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    _riskDsgnProg < 0.3333333333
                                        ? "🟩"
                                        : (_riskDsgnProg > 0.3333333333) &&
                                                (_riskDsgnProg < 0.6666666667)
                                            ? "🟨"
                                            : (_riskDsgnProg > 0.666666666)
                                                ? "🟥"
                                                : "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // radius of 10
                        color: Color.fromARGB(255, 189, 102, 204),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 50, 220, 0),
                      //color: Colors.grey,
                      width: 200.0,
                      height: 35.0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        child: Text(
                          'Implementation Progress',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), // radius of 10
                        color: Color.fromARGB(255, 176, 173, 173),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      //color: Colors.grey,
                      width: 520.0,
                      height: 310.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Minimal risk: The implementation is ahead of schedule',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 22, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _minRiskImpProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Low risk: The implementation is on schedule',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _lowRiskImpProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Reasonable risk: The implementation is slightly behind schedule',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _reasonableRiskImpProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'High risk: The implementation is far behind schedule',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _highRiskImpProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('View score'),
              onPressed: calculateRisksImpProg,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // radius of 10
                  color: Color.fromARGB(255, 176, 173, 173),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ], // green as background color
                ),

                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //color: Colors.grey,
                width: 300.0,
                height: 310.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Low score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_lowScoreImpProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Med score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_medScoreImpProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'High score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_highScoreImpProg.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total votes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_totalVotesImpProg.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total risk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _totalVotes == null
                                        ? "Required"
                                        : "${_riskImpProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 60.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    _riskImpProg < 0.3333333333
                                        ? "🟩"
                                        : (_riskImpProg > 0.3333333333) &&
                                                (_riskImpProg < 0.6666666667)
                                            ? "🟨"
                                            : (_riskImpProg > 0.666666666)
                                                ? "🟥"
                                                : "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), // radius of 10
                        color: Color.fromARGB(255, 189, 102, 204),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 50, 220, 0),
                      //color: Colors.grey,
                      width: 200.0,
                      height: 35.0,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        child: Text(
                          'Integration Progress',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), // radius of 10
                        color: Color.fromARGB(255, 176, 173, 173),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ], // green as background color
                      ),

                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      //color: Colors.grey,
                      width: 520.0,
                      height: 310.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Minimal risk: No major integration problems have been detected',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 22, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _minRiskIntProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Low risk: Minor integration problems have been detected',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _lowRiskIntProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'Reasonable risk: At least one major integration problem, with plans to remedy',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _reasonableRiskIntProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Container(
                                      width: 287.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        color: Color.fromARGB(255, 200, 192,
                                            192), // green as background color
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 9, 0, 0),
                                        child: Text(
                                          'High risk: Multiple problems with no plans to remedy',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
                                child: Container(
                                  width: 65.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    color: Color.fromARGB(255, 117, 116,
                                        116), // green as background color
                                  ),
                                  //margin: const EdgeInsets.only(left: 0.0, right: 50.0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: TextField(
                                      controller: _highRiskIntProg,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Vote',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('View score'),
              onPressed: calculateRisksIntProg,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // radius of 10
                  color: Color.fromARGB(255, 176, 173, 173),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ], // green as background color
                ),

                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //color: Colors.grey,
                width: 300.0,
                height: 310.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Low score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_lowScoreIntProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Med score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_medScoreIntProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'High score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_highScoreIntProg.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total votes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _lowRisk == null
                                        ? "Required"
                                        : "${_totalVotesIntProg.toStringAsFixed(0)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    'Total risk',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                  child: Text(
                                    _totalVotes == null
                                        ? "Required"
                                        : "${_riskIntProg.toStringAsFixed(9)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 22, 0, 0),
                            child: Container(
                                width: 60.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10), // radius of 10
                                  color: Color.fromARGB(255, 200, 192,
                                      192), // green as background color
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text(
                                    _riskIntProg < 0.3333333333
                                        ? "🟩"
                                        : (_riskIntProg > 0.3333333333) &&
                                                (_riskIntProg < 0.6666666667)
                                            ? "🟨"
                                            : (_riskIntProg > 0.666666666)
                                                ? "🟥"
                                                : "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            
            
            Padding(
              padding: EdgeInsets.fromLTRB(10, 16, 0, 32),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text('View total project risk status '),
                  //onPressed: totalProjectRisk,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstRoute()),
                    );
                    totalProjectRisk();
                  }),
            ),

            /*ElevatedButton(
            onPressed: _setText,
            child: Text('Add additional metrics'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
          ),*/
            
          ],
        ),
      ),
    );
  }

  void calculateRisks() {
    //double minimalRisk = double.parse(_minRisk.text);
    double lowRisk = double.parse(_lowRisk.text);
    double reasonableRisk = double.parse(_reasonableRisk.text);
    int highRisk = int.parse(_highRisk.text);

    int minimalRiskInt = int.parse(_minRisk.text);
    int lowRiskInt = int.parse(_lowRisk.text);
    int reasonableRiskInt = int.parse(_reasonableRisk.text);

    _lowScore = lowRisk * 0.3333333333;
    _medScore = reasonableRisk * 0.6666666667;
    _highScore = highRisk * 1;
    _totalVotes = minimalRiskInt + lowRiskInt + reasonableRiskInt + highRisk;

    double risk = (_lowScore + _medScore + _highScore) / _totalVotes;

    _riskDefects = double.parse('${risk}');
    assert(_riskDefects != null);

    setState(() {});
  }

  void calculateRisksSchedule() {
    double minimalRisk = double.parse(_minRiskSchedule.text);
    double lowRisk = double.parse(_lowRiskSchedule.text);
    double reasonableRisk = double.parse(_reasonableRiskSchedule.text);
    int highRisk = int.parse(_highRiskSchedule.text);

    int minimalRiskInt = int.parse(_minRiskSchedule.text);
    int lowRiskInt = int.parse(_lowRiskSchedule.text);
    int reasonableRiskInt = int.parse(_reasonableRiskSchedule.text);

    _lowScoreSchedule = lowRisk * 0.3333333333;
    _medScoreSchedule = reasonableRisk * 0.6666666667;
    _highScoreSchedule = highRisk * 1;
    _totalVotesSchedule =
        minimalRiskInt + lowRiskInt + reasonableRiskInt + highRisk;

    double sched =
        (_lowScoreSchedule + _medScoreSchedule + _highScoreSchedule) /
            _totalVotesSchedule;

    _riskSchedule = double.parse('${sched}');

    assert(_riskSchedule != null);

    setState(() {});
  }

  void calculateRisksDsgnProg() {
    double minimalRisk = double.parse(_minRiskDsgnProg.text);
    double lowRisk = double.parse(_lowRiskDsgnProg.text);
    double reasonableRisk = double.parse(_reasonableRiskDsgnProg.text);
    int highRisk = int.parse(_highRiskDsgnProg.text);

    int minimalRiskInt = int.parse(_minRiskDsgnProg.text);
    int lowRiskInt = int.parse(_lowRiskDsgnProg.text);
    int reasonableRiskInt = int.parse(_reasonableRiskDsgnProg.text);

    _lowScoreDsgnProg = lowRisk * 0.3333333333;
    _medScoreDsgnProg = reasonableRisk * 0.6666666667;
    _highScoreDsgnProg = highRisk * 1;
    _totalVotesDsgnProg =
        minimalRiskInt + lowRiskInt + reasonableRiskInt + highRisk;

    double risk = (_lowScoreDsgnProg + _medScoreDsgnProg + _highScoreDsgnProg) /
        _totalVotesDsgnProg;

    _riskDsgnProg = double.parse('${risk}');
    assert(_riskDsgnProg != null);
    setState(() {});
  }

  void calculateRisksImpProg() {
    double minimalRisk = double.parse(_minRiskImpProg.text);
    double lowRisk = double.parse(_lowRiskImpProg.text);
    double reasonableRisk = double.parse(_reasonableRiskImpProg.text);
    int highRisk = int.parse(_highRiskImpProg.text);

    int minimalRiskInt = int.parse(_minRiskImpProg.text);
    int lowRiskInt = int.parse(_lowRiskImpProg.text);
    int reasonableRiskInt = int.parse(_reasonableRiskImpProg.text);

    _lowScoreImpProg = lowRisk * 0.3333333333;
    _medScoreImpProg = reasonableRisk * 0.6666666667;
    _highScoreImpProg = highRisk * 1;
    _totalVotesImpProg =
        minimalRiskInt + lowRiskInt + reasonableRiskInt + highRisk;

    double risk = (_lowScoreImpProg + _medScoreImpProg + _highScoreImpProg) /
        _totalVotesImpProg;

    _riskImpProg = double.parse('${risk}');

    assert(_riskImpProg != null);
    setState(() {});
  }

  void calculateRisksIntProg() {
    double minimalRisk = double.parse(_minRiskIntProg.text);
    double lowRisk = double.parse(_lowRiskIntProg.text);
    double reasonableRisk = double.parse(_reasonableRiskIntProg.text);
    int highRisk = int.parse(_highRiskIntProg.text);

    int minimalRiskInt = int.parse(_minRiskIntProg.text);
    int lowRiskInt = int.parse(_lowRiskIntProg.text);
    int reasonableRiskInt = int.parse(_reasonableRiskIntProg.text);

    _lowScoreIntProg = lowRisk * 0.3333333333;
    _medScoreIntProg = reasonableRisk * 0.6666666667;
    _highScoreIntProg = highRisk * 1;
    _totalVotesIntProg =
        minimalRiskInt + lowRiskInt + reasonableRiskInt + highRisk;

    double risk = (_lowScoreIntProg + _medScoreIntProg + _highScoreIntProg) /
        _totalVotesIntProg;

    _riskIntProg = double.parse('${risk}');

    assert(_riskIntProg != null);
    setState(() {});
  }

  void calculateRisksNewMet() {
    double minimalRisk = double.parse(_minRiskNewMet.text);
    double lowRisk = double.parse(_lowRiskNewMet.text);
    double reasonableRisk = double.parse(_reasonableRiskNewMet.text);
    int highRisk = int.parse(_highRiskNewMet.text);

    int minimalRiskInt = int.parse(_minRiskNewMet.text);
    int lowRiskInt = int.parse(_lowRiskNewMet.text);
    int reasonableRiskInt = int.parse(_reasonableRiskNewMet.text);

    _lowScoreNewMet = lowRisk * 0.3333333333;
    _medScoreNewMet = reasonableRisk * 0.6666666667;
    _highScoreNewMet = highRisk * 1;
    _totalVotesNewMet =
        minimalRiskInt + lowRiskInt + reasonableRiskInt + highRisk;

    double risk = (_lowScoreNewMet + _medScoreNewMet + _highScoreNewMet) /
        _totalVotesNewMet;

    _riskNewMet = double.parse('${risk}');

    assert(_riskNewMet != null);
    setState(() {});
  }

  /*void setNewMetric() {
    newSCore = 1.0;
    setState(() => cards.add(createCard()));
  }*/

  void totalProjectRisk() {
    double countVal = 5.0;
    overallRisk = (_riskDefects +
            _riskDsgnProg +
            _riskImpProg +
            _riskSchedule +
            _riskIntProg +
            _riskNewMet) /
        countVal;

    setState(() {});
  }
}
