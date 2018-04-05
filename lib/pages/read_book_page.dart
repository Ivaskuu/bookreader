import 'package:flutter/material.dart';

class ReadBookPage extends StatefulWidget
{
  @override
  _ReadBookPageState createState() => new _ReadBookPageState();
}

class _ReadBookPageState extends State<ReadBookPage> with SingleTickerProviderStateMixin
{
  AnimationController animationController;
  ScrollController scrollController;
  Animation<Color> colorTween1;
  Animation<Color> colorTween2;

  final double statusBarSize = 24.0;
  final double imageSize = 264.0;

  double readPerc = 0.0;

  @override
  void initState()
  {
    super.initState();

    // Create the appbar colors animations
    animationController = new AnimationController(duration: new Duration(milliseconds: 500), vsync: this);
    animationController.addListener(() => setState(() {}));

    colorTween1 = new ColorTween
    (
      begin: Colors.black12,
      end: new Color(0xFF0018C8)
    ).animate(new CurvedAnimation
    (
      parent: animationController,
      curve: Curves.easeIn
    ));
    colorTween2 = new ColorTween
    (
      begin: Colors.transparent,
      end: new Color(0xFF001880)
    ).animate(new CurvedAnimation
    (
      parent: animationController,
      curve: Curves.easeIn
    ));

    scrollController = new ScrollController();
    scrollController.addListener(()
    {
      setState(() => readPerc = scrollController.offset / scrollController.position.maxScrollExtent);

      // Change the appbar colors
      if(scrollController.offset > imageSize - statusBarSize)
      {
        if(animationController.status == AnimationStatus.dismissed) animationController.forward();
      }
      else if(animationController.status == AnimationStatus.completed) animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      body: new Hero
      (
        tag: 'Material',
        child: new Material
        (
          color: Colors.white,
          child: new Stack // I need to use a stack because otherwise the appbar blocks the content even if transparent
          (
            children: <Widget>
            [
              /// Image and text
              new ListView
              (
                padding: new EdgeInsets.all(0.0),
                controller: scrollController,
                children: <Widget>
                [
                  new SizedBox.fromSize
                  (
                    size: new Size.fromHeight(imageSize),
                    child: new Hero
                    (
                      tag: 'Image',
                      child: new Image.asset('res/img1.png', fit: BoxFit.cover),
                    ),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(vertical: 12.0),
                    child: new Text('INVISION PRESENTS', textAlign: TextAlign.center, style: new TextStyle(fontSize: 11.0, color: Colors.black, fontWeight: FontWeight.w700)),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(horizontal: 32.0),
                    child: new Hero
                    (
                      tag: 'Title',
                      child: new Text('Principles of Product Design', textAlign: TextAlign.center, style: new TextStyle(fontSize: 40.0, color: Colors.black, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.only(top: 12.0, bottom: 24.0),
                    child: new Text('By Aaron Walter', textAlign: TextAlign.center, style: new TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w700)),
                  ),
                  new Container
                  (
                    margin: new EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0),
                    child: new Text
                    (
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in dignissim ligula. Sed mattis leo tortor, nec ornare elit dapibus sed. Phasellus sit amet massa id massa fermentum condimentum et vitae urna. Nunc enim elit, porttitor eu dictum non, commodo at diam. Sed et tortor quam. Integer ac molestie diam. Aenean nec elit venenatis, imperdiet purus et, finibus arcu. In ut turpis pellentesque, tempus dui tempor, aliquam diam. Mauris ut odio vitae nulla maximus tempor a id lorem. Curabitur sem quam, sollicitudin non consequat et, gravida a diam. Proin feugiat mollis ipsum eu aliquam. Duis bibendum enim at diam blandit porta nec a est. Curabitur eget mauris in tellus ornare pharetra non nec odio.\n\nNulla hendrerit molestie blandit. Integer rhoncus neque vitae libero semper, a interdum quam ultricies. Phasellus porta dui non lectus dignissim vulputate. Proin non mauris accumsan, blandit ante vitae, iaculis turpis. Praesent dolor mi, tincidunt in tortor non, consectetur mollis dui. Aliquam id nunc in ex porta ornare. Phasellus et tristique ligula, dignissim consectetur mauris. In condimentum egestas ex vel auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse finibus libero eu cursus suscipit. Praesent ut neque in diam venenatis mattis pharetra id sem. Nulla justo nibh, dictum eu posuere non, rutrum sit amet diam. Nullam aliquam sapien eget augue suscipit eleifend. Etiam semper erat non quam convallis maximus vel ut tortor. Curabitur ligula ex, fermentum sit amet dolor ac, elementum fringilla nibh.\n\nFusce porta bibendum erat, id molestie quam ultrices eu. Sed imperdiet nibh et vehicula facilisis. Nam vel ultrices magna. Integer vitae est maximus, feugiat nisl non, tempus velit. Phasellus placerat tortor eu nulla suscipit, nec ullamcorper turpis eleifend. Sed posuere, enim et pretium ultricies, risus velit pharetra augue, at convallis nulla eros eget nulla. Ut et metus vitae turpis feugiat aliquam eu vel odio. Pellentesque sed ultricies neque, nec tincidunt mi.\n\nSed eu tortor ut lectus tempus iaculis. Curabitur nec tincidunt dolor, laoreet ultricies ipsum. Pellentesque mi odio, luctus vel turpis sit amet, congue placerat orci. Vestibulum magna libero, venenatis vel congue eget, egestas nec urna. Cras bibendum scelerisque leo, a pellentesque velit cursus sed. Nulla laoreet eros sit amet nunc lobortis posuere. Sed placerat malesuada porta. Phasellus neque lorem, auctor vitae euismod a, molestie in risus. Integer in nisi sagittis, blandit eros sit amet, finibus elit. Praesent mollis velit massa, eget consectetur sem maximus a. Cras vel euismod nunc.\n\nMauris rutrum ac turpis et maximus. Aenean molestie leo orci, sed volutpat magna bibendum ac. Nullam dignissim metus vel laoreet tempor. Sed pharetra nulla at odio dapibus porta. Vestibulum vitae ligula id purus egestas congue et quis dolor. Vivamus sit amet mi molestie, fermentum metus ut, condimentum neque. Maecenas quis felis in est convallis elementum in commodo nibh. Vestibulum sodales viverra quam, quis vulputate orci imperdiet nec. Pellentesque mi eros, ullamcorper ac tortor sed, rutrum pretium dolor. Fusce sollicitudin congue vestibulum.',
                      style: new TextStyle(fontSize: 16.0)
                    ),
                  ),
                ],
              ),
              /// Appbar
              new Align
              (
                alignment: Alignment.topCenter,
                child: new SizedBox.fromSize
                (
                  size: new Size.fromHeight(90.0),
                  child: new Stack
                  (
                    alignment: Alignment.centerLeft,
                    children: <Widget>
                    [
                      new SizedBox.expand // If the user scrolled over the image
                      (
                        child: new Material
                        (
                          color: colorTween1.value,
                        ),
                      ),
                      new SizedBox.fromSize // TODO: Animate the reveal
                      (
                        size: new Size.fromWidth(MediaQuery.of(context).size.width * readPerc),
                        child: new Material
                        (
                          color: colorTween2.value,
                        ),
                      ),
                      new Align
                      (
                        alignment: Alignment.center,
                        child: new SizedBox.expand
                        (
                          child: new Material // So we see the ripple when clicked on the iconbutton
                          (
                            color: Colors.transparent,
                            child: new Container
                            (
                              margin: new EdgeInsets.only(top: 24.0), // For the status bar
                              child: new Row
                              (
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  new IconButton
                                  (
                                    onPressed: () => Navigator.of(context).pop(),
                                    icon: new Icon(Icons.arrow_back, color: Colors.white),
                                  ),
                                  new Hero
                                  (
                                    tag: 'Logo',
                                    child: new Icon(Icons.account_circle, color: Colors.white, size: 48.0)
                                  ),
                                  new IconButton
                                  (
                                    onPressed: () => Navigator.of(context).pop(),
                                    icon: new Icon(Icons.format_align_right, color: Colors.white),
                                  ),
                                ],
                              )
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}