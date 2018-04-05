import 'package:flutter/material.dart';

class ReadBookPage extends StatefulWidget
{
  @override
  _ReadBookPageState createState() => new _ReadBookPageState();
}

class _ReadBookPageState extends State<ReadBookPage>
{
  final double statusBarSize = 24.0;
  final double imageSize = 264.0;

  double readPerc = 0.0;
  ScrollController controller;

  @override
  void initState()
  {
    super.initState();
    
    controller = new ScrollController();
    controller.addListener(() => setState(() => readPerc = controller.offset / controller.position.maxScrollExtent));
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      backgroundColor: Colors.white,
      body: new Stack // I need to use a stack because otherwise the appbar blocks the content even if transparent
      (
        children: <Widget>
        [
          new ListView
          (
            padding: new EdgeInsets.all(0.0),
            controller: controller,
            children: <Widget>
            [
              new SizedBox.fromSize
              (
                size: new Size.fromHeight(imageSize),
                child: new Image.asset('res/img1.png', fit: BoxFit.cover),
              ),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
              new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
            ],
          ),
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
                  (controller.hasClients ? controller.offset : 0.0) > imageSize - statusBarSize ? new SizedBox.expand // If the user scrolled over the image
                  (
                    child: new Material
                    (
                      color: new Color(0xFF0018C8),
                    ),
                  ) : new SizedBox.expand
                  (
                    child: new Material
                    (
                      color: Colors.black12,
                    ),
                  ),
                  (controller.hasClients ? controller.offset : 0.0) > imageSize - statusBarSize ? new SizedBox.fromSize // TODO: Animate the reveal
                  (
                    size: new Size.fromWidth(MediaQuery.of(context).size.width * readPerc),
                    child: new Material
                    (
                      color: new Color(0xFF001880),
                    ),
                  ) : new SizedBox.expand
                  (
                    child: new Material
                    (
                      color: Colors.black12,
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
                              new Icon(Icons.wallpaper, color: Colors.white, size: 48.0),
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
    );
  }
}