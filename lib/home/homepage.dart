import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

      final List<ChartData> chartData = [
            ChartData('David', 25),
            ChartData('Steve', 38),
            ChartData('Jack', 34),
            ChartData('Others', 52),
      ];
       class ChartData {
    ChartData(this.x, this.y, [this.color]);
    final String x;
    final double y;
    final Color color;
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      var path = Path();
      path.lineTo(0,size.height-80);
      path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-80);
      path.lineTo(size.width,0);
      path.close();
      return path;
    }

    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}


class _Home extends State <Home>  with SingleTickerProviderStateMixin {
   AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
  }

  Animatable<Color> background = TweenSequence<Color>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Color.fromRGBO(128, 0, 0, 1),
        end: Colors.white,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.white,
        end: Colors.blue,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.blue,
        end: Color.fromRGBO(128, 0, 0, 1),
      ),
    ),
  ]);
  @override
  Widget build(BuildContext context) {
     
    // TODO: implement build
    return AnimatedBuilder(
      
      animation: _controller,
       builder: (context, child){
        return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
               child: 
              Container(
               
                
                  height: 400,
                  width: double.infinity,
             decoration: BoxDecoration(
               color:  background
                    .evaluate(AlwaysStoppedAnimation(_controller.value)),
               image: DecorationImage(image: AssetImage('assets/sakshamm.png'),
               fit: BoxFit.fill
               )
             ),
                  
                ),
              ),
              SizedBox(height:10),
                   Padding(
                        padding: EdgeInsets.all(5),
                        child: Center(
                            child: Text(
                          'MEDAL TALLY 2020',
                          style: GoogleFonts.crimsonText(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                 SizedBox(height:20),
                 Center(
                child: Container(
                  width: 400,
                  height: 500,
                    child: SfCircularChart(
                      backgroundColor: Colors.black,
                        series: <CircularSeries>[
                            RadialBarSeries<ChartData, String>(
                              trackColor: Colors.black,
                           strokeColor:  Colors.black,
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                                // Radius of the radial bar
                                radius: '50%',
                                dataLabelSettings: DataLabelSettings(
                                    // Renders the data label
                                    isVisible: true,
                                    color: Colors.white
                                )
                            )
                        ]
                    )
                )
            )
                                  
          ]
        ),
      )
    );
       }
    );
  }
}
