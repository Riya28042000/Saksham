import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  bool male = false;
  bool female = false;
  bool hostel = false;
  bool day = false;
  var branchSelectedItem = 'CS';
  var yearSelectedItem = '1';
  var yearItems = ['1', '2', '3', '4'];
  var branchitems = ['CS', 'IT', 'EC', 'ME', 'EN', 'CE/EI', 'MCA/MBA'];
  int selectedvalue;
  int hdselectedvalue;
  bool athletics = false;
  bool chess = false;
  bool badminton = false;
  bool volleyBall = false;
  bool carrom = false;
  bool tt = false;
  bool basketBall = false;
  bool tugOfWar = false;
  bool khokho = false;
  bool cricket = false;
  bool kabaddi = false;
  bool powerlift = false;
  bool football = false;
  bool pool = false;
  bool obstacle = false;

  @override
  void initState() {
    selectedvalue = 0;
    hdselectedvalue = 0;
    // TODO: implement initState
    super.initState();
  }

  void selectedvaluefunction(int val) {
    setState(() {
      selectedvalue = val;
    });
  }

  void hdselectedfunction(int val) {
    print(val);
    setState(() {
      hdselectedvalue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
              decoration: new BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Card(
                color: Colors.black,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AspectRatio(
                  child: Image.asset('assets/saksham1.png', fit: BoxFit.fill),
                  aspectRatio: 8 / 7,
                ),
              ),
            )),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              child: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle:
                      GoogleFonts.crimsonText(color: Colors.grey, fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Name is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style:
                    GoogleFonts.crimsonText(color: Colors.white, fontSize: 19),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              child: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'Student Number',
                  hintStyle:
                      GoogleFonts.crimsonText(color: Colors.grey, fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Student Number is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style:
                    GoogleFonts.crimsonText(color: Colors.white, fontSize: 19),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      child: Container(
                        height: 50,
                        width: 160,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              male = true;
                              female = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: male ? Colors.black : Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: male ? Colors.white : Colors.black,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Male",
                                    style: GoogleFonts.crimsonText(
                                      color: male ? Colors.black : Colors.white,
                                      //    fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(10)),
                  Padding(
                    child: Container(
                      height: 50,
                      width: 160,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            female = true;
                            male = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: female ? Colors.black : Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: female ? Colors.white : Colors.black,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Female",
                                  style: GoogleFonts.crimsonText(
                                    color: female ? Colors.black : Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                  )
                ]),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              child: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'Contact Number',
                  hintStyle:
                      GoogleFonts.crimsonText(color: Colors.grey, fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                validator: (val) {
                  if (val.length == 0) {
                    return "Contact Number is required";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style:
                    GoogleFonts.crimsonText(color: Colors.white, fontSize: 19),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Branch:",
                      style: GoogleFonts.crimsonText(
                          color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.black,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          elevation: 8,
                          style: GoogleFonts.crimsonText(
                              color: Colors.grey, fontSize: 19),
                          items: branchitems.map((String dropDownStringItem) {
                            return DropdownMenuItem(
                              value: dropDownStringItem,
                              child: Text(
                                dropDownStringItem,
                                style: GoogleFonts.crimsonText(
                                    color: Colors.white, fontSize: 19),
                              ),
                            );
                          }).toList(),
                          onChanged: (String userSelectedItem) {
                            setState(() {
                              branchSelectedItem = userSelectedItem;
                            });
                          },
                          value: branchSelectedItem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Year:",
                      style: GoogleFonts.crimsonText(
                          color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.black,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          elevation: 8,
                          style: GoogleFonts.crimsonText(
                              color: Colors.grey, fontSize: 19),
                          items: yearItems.map((String dropDownStringItem) {
                            return DropdownMenuItem(
                              value: dropDownStringItem,
                              child: Text(
                                dropDownStringItem,
                                style: GoogleFonts.crimsonText(
                                    color: Colors.white, fontSize: 19),
                              ),
                            );
                          }).toList(),
                          onChanged: (String userSelectedItem) {
                            setState(() {
                              yearSelectedItem = userSelectedItem;
                            });
                          },
                          value: yearSelectedItem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      child: Container(
                        height: 50,
                        width: 160,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              hostel = true;
                              day = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: hostel ? Colors.black : Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: hostel ? Colors.white : Colors.black,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Hosteler",
                                    style: GoogleFonts.crimsonText(
                                      color:
                                          hostel ? Colors.black : Colors.white,
                                      //    fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(10)),
                  Padding(
                    child: Container(
                      height: 50,
                      width:160,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            day = true;
                            hostel = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: day ? Colors.black : Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: day ? Colors.white : Colors.black,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Day Scholar",
                                  style: GoogleFonts.crimsonText(
                                    color: day ? Colors.black : Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                  )
                ]),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.all(7),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'A',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Athletics ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                          selected: athletics,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              athletics = val;
                            });
                          },
                        ),
                      ),
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'C',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Chess     ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                          selected: chess,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              chess = val;
                            });
                          },
                        ),
                      ),
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: badminton,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              badminton = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'B',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Badminton    ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                    ])),
            Padding(
                padding: EdgeInsets.all(7),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: volleyBall,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              volleyBall = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'V',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Volleyball  ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: carrom,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              carrom = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'C',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Carrom    ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: tt,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              tt = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'T',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Table Tennis ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                    ])),
            Padding(
                padding: EdgeInsets.all(7),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: basketBall,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              basketBall = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'B',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Basketball',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: tugOfWar,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              tugOfWar = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'T',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Tug of War',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                      Transform(
                        transform: new Matrix4.identity()..scale(1.0),
                        child: ChoiceChip(
                          selectedColor: Colors.grey,
                          selected: khokho,
                          onSelected: (bool val) {
                            setState(() {
                              print(val);
                              khokho = val;
                            });
                          },
                          avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                'K',
                                style: GoogleFonts.crimsonText(
                                  color: Colors.white,
                                ),
                              )),
                          label: Text(
                            'Kho Kho      ',
                            style: GoogleFonts.crimsonText(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.all(3),
                          shadowColor: Colors.white,
                        ),
                      ),
                    ])),
            female
                ? Container(
                    color: Colors.black,
                  )
                : Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Transform(
                            transform: new Matrix4.identity()..scale(1.0),
                            child: ChoiceChip(
                              selectedColor: Colors.grey,
                              selected: cricket,
                              onSelected: (bool val) {
                                setState(() {
                                  female ? val = false : val = true;
                                  print(val);
                                  chess = val;
                                });
                              },
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    'C',
                                    style: GoogleFonts.crimsonText(
                                      color: Colors.white,
                                    ),
                                  )),
                              label: Text(
                                'Cricket   ',
                                style: GoogleFonts.crimsonText(
                                    color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              labelPadding: EdgeInsets.all(3),
                              shadowColor: Colors.white,
                            ),
                          ),
                          Transform(
                            transform: new Matrix4.identity()..scale(1.0),
                            child: ChoiceChip(
                              selectedColor: Colors.grey,
                              selected: kabaddi,
                              onSelected: (bool val) {
                                setState(() {
                                  print(val);
                                  kabaddi = val;
                                });
                              },
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    'K',
                                    style: GoogleFonts.crimsonText(
                                      color: Colors.white,
                                    ),
                                  )),
                              label: Text(
                                'Kabaddi   ',
                                style: GoogleFonts.crimsonText(
                                    color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              labelPadding: EdgeInsets.all(3),
                              shadowColor: Colors.white,
                            ),
                          ),
                          Transform(
                            transform: new Matrix4.identity()..scale(1.0),
                            child: ChoiceChip(
                              selectedColor: Colors.grey,
                              selected: powerlift,
                              onSelected: (bool val) {
                                setState(() {
                                  print(val);
                                  powerlift = val;
                                });
                              },
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    'P',
                                    style: GoogleFonts.crimsonText(
                                      color: Colors.white,
                                    ),
                                  )),
                              label: Text(
                                'Power Lifting',
                                style: GoogleFonts.crimsonText(
                                    color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              labelPadding: EdgeInsets.all(3),
                              shadowColor: Colors.white,
                            ),
                          ),
                        ])),
            female
                ? Container(
                    color: Colors.black,
                  )
                : Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Transform(
                            transform: new Matrix4.identity()..scale(1.0),
                            child: ChoiceChip(
                              selectedColor: Colors.grey,
                              selected: football,
                              onSelected: (bool val) {
                                setState(() {
                                  print(val);
                                  football = val;
                                });
                              },
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    'F',
                                    style: GoogleFonts.crimsonText(
                                      color: Colors.white,
                                    ),
                                  )),
                              label: Text(
                                'Football  ',
                                style: GoogleFonts.crimsonText(
                                    color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              labelPadding: EdgeInsets.all(3),
                              shadowColor: Colors.white,
                            ),
                          ),
                          Transform(
                            transform: new Matrix4.identity()..scale(1.0),
                            child: ChoiceChip(
                              selectedColor: Colors.grey,
                              selected: pool,
                              onSelected: (bool val) {
                                setState(() {
                                  print(val);
                                  pool = val;
                                });
                              },
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    'P',
                                    style: GoogleFonts.crimsonText(
                                      color: Colors.white,
                                    ),
                                  )),
                              label: Text(
                                'Pool      ',
                                style: GoogleFonts.crimsonText(
                                    color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              labelPadding: EdgeInsets.all(3),
                              shadowColor: Colors.white,
                            ),
                          ),
                          Transform(
                            transform: new Matrix4.identity()..scale(1.0),
                            child: ChoiceChip(
                              selectedColor: Colors.grey,
                              selected: obstacle,
                              onSelected: (bool val) {
                                setState(() {
                                  print(val);
                                  obstacle = val;
                                });
                              },
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    'O',
                                    style: GoogleFonts.crimsonText(
                                      color: Colors.white,
                                    ),
                                  )),
                              label: Text(
                                'Obstacle Race',
                                style: GoogleFonts.crimsonText(
                                    color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                              labelPadding: EdgeInsets.all(3),
                              shadowColor: Colors.white,
                            ),
                          ),
                        ])),
                        SizedBox(height:10),
            Padding(
                child: Container(
                  height:50,
                  width: 365,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Register",
                              style: GoogleFonts.crimsonText(
                                color: Colors.black,
                                //    fontWeight: FontWeight.bold,
                                fontSize: 20,

                                letterSpacing: 1,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                padding: EdgeInsets.all(10)),
            SizedBox(height: 15)
          ],
        )),
      ),
    ));
  }
}
