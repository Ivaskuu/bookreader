import 'package:flutter/material.dart';

class ReadBookPage extends StatefulWidget
{
  @override
  _ReadBookPageState createState() => new _ReadBookPageState();
}

class _ReadBookPageState extends State<ReadBookPage>
{
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
      appBar: new PreferredSize
      (
        preferredSize: new Size.fromHeight(60.0),
        child: new SizedBox.expand
        (
          child: new Stack
          (
            alignment: Alignment.centerLeft,
            children: <Widget>
            [
              new SizedBox.expand
              (
                child: new Material
                (
                  color: new Color(0xFF0018C8),
                ),
              ),
              new SizedBox.fromSize
              (
                size: new Size.fromWidth(MediaQuery.of(context).size.width * readPerc),
                child: new Material
                (
                  color: new Color(0xFF001880),
                ),
              )
            ],
          )
        ),
      ),
      body: new CustomScrollView
      (
        slivers: <Widget>
        [
          new SliverAppBar
          (
            expandedHeight: 200.0,
          ),
          new SliverList
          (
            delegate: new SliverChildListDelegate
            (
              <Widget>
              [
                new SizedBox.expand(
                  child: new ListView
                  (
                    controller: controller,
                    children: <Widget>
                    [
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                      new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
                    ],
                  ),
                )
              ]
            ),
          )
        ],
      )

      // new ListView
      // (
      //   controller: controller,
      //   children: <Widget>
      //   [
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //     new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur facilisis massa, nec volutpat arcu pharetra a. Nam auctor nisi nec metus consequat pulvinar. Aenean vitae sagittis eros, eget hendrerit orci. Pellentesque eleifend lacus elementum sapien lacinia, et molestie ante gravida. Suspendisse congue porttitor elementum. Aenean congue ullamcorper justo, non pellentesque nibh malesuada et. Fusce turpis quam, accumsan eget ligula eu, ullamcorper tempor odio. Duis sit amet augue vulputate, luctus mauris quis, fermentum leo. Donec id pharetra sem. Aliquam at congue arcu. Praesent sit amet euismod lectus, et venenatis tellus.'),
      //   ],
      // ),
    );
  }
}