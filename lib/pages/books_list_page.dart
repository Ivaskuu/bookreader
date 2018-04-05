import 'package:flutter/material.dart';
import 'read_book_page.dart';

class BooksListPage extends StatefulWidget
{
  @override
  _BooksListPageState createState() => new _BooksListPageState();
}

class _BooksListPageState extends State<BooksListPage>
{
  static final List<Color> colorsByPage = [ new Color(0xFF0018C8), new Color(0xFFDD1829) ];
  Color backgroundColor = colorsByPage[0];

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      backgroundColor: backgroundColor,
      body: new SizedBox.expand
      (
        child: new Column
        (
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [
            new Container
            (
              margin: new EdgeInsets.only(top: 64.0, bottom: 32.0),
              child: new Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  new Hero
                  (
                    tag: 'Logo',
                    child: new Icon(Icons.account_circle, color: Colors.white, size: 64.0)
                  ),
                  new Padding(padding: new EdgeInsets.only(bottom: 16.0)),
                  new Text('Discover. Learn. Elevate.', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 26.0))
                ],
              ),
            ),
            new Expanded
            (
              child: new SizedBox.expand
              (
                child: new Hero
                (
                  tag: 'Material',
                  child: new Material
                  (
                    color: Colors.white,
                    borderRadius: new BorderRadius.only
                    (
                      topLeft: new Radius.circular(32.0),
                      topRight: new Radius.circular(32.0),
                    ),
                    elevation: 24.0,
                    child: new Container
                    (
                      margin: new EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
                      child: new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>
                        [
                          /// Tabs
                          new Container
                          (
                            margin: new EdgeInsets.only(bottom: 16.0),
                            child: new Row
                            (
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                new Text('BOOKS', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16.0)),
                                new Text('PODCAST', style: new TextStyle(color: Colors.black38, fontWeight: FontWeight.w600, fontSize: 16.0)),
                                new Text('WORKSHOPS', style: new TextStyle(color: Colors.black38, fontWeight: FontWeight.w600, fontSize: 16.0)),
                              ],
                            ),
                          ),
                          /// PageView
                          new Expanded
                          (
                            child: new PageView
                            (
                              onPageChanged: (int page)
                              {
                                setState(() => backgroundColor = colorsByPage[page]);
                              },
                              children: <Widget>
                              [
                                new SizedBox.expand
                                (
                                  child: new Padding
                                  (
                                    padding: new EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 32.0),
                                    child: new Material
                                    (
                                      color: Colors.white,
                                      elevation: 10.0,
                                      borderRadius: new BorderRadius.circular(8.0),
                                      child: new Column
                                      (
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>
                                        [
                                          new Hero
                                          (
                                            tag: 'Image',
                                            child: new Image.asset('res/img1.png')
                                          ),
                                          new Padding
                                          (
                                            padding: new EdgeInsets.all(16.0),
                                            child: new Column
                                            (
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>
                                              [
                                                new Column
                                                (
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>
                                                  [
                                                    new Hero
                                                    (
                                                      tag: 'Title',
                                                      child: new Text('Principles of Product Design', style: new TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w600)),
                                                    ),
                                                    new Text('By Aaron Walter', style: new TextStyle(fontSize: 16.0)),
                                                  ],
                                                ),
                                                new Padding
                                                (
                                                  padding: new EdgeInsets.only(top: 48.0),
                                                  child: new Material
                                                  (
                                                    color: colorsByPage[0],
                                                    borderRadius: new BorderRadius.circular(64.0),
                                                    child: new InkWell
                                                    (
                                                      onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ReadBookPage())),
                                                      child: new Container
                                                      (
                                                        margin: new EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0),
                                                        child: new Text('READ BOOK', style: new TextStyle(fontWeight: FontWeight.w300, color: Colors.white)),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox.expand
                                (
                                  child: new Padding
                                  (
                                    padding: new EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 32.0),
                                    child: new Material
                                    (
                                      color: Colors.white,
                                      elevation: 10.0,
                                      borderRadius: new BorderRadius.circular(8.0),
                                      child: new Column
                                      (
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>
                                        [
                                          new Hero
                                          (
                                            tag: 'Image',
                                            child: new Image.asset('res/img1.png')
                                          ),
                                          new Padding
                                          (
                                            padding: new EdgeInsets.all(16.0),
                                            child: new Column
                                            (
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>
                                              [
                                                new Column
                                                (
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>
                                                  [
                                                    new Hero
                                                    (
                                                      tag: 'Title',
                                                      child: new Text('Principles of Product Design', style: new TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w600)),
                                                    ),
                                                    new Text('By Aaron Walter', style: new TextStyle(fontSize: 16.0)),
                                                  ],
                                                ),
                                                new Padding
                                                (
                                                  padding: new EdgeInsets.only(top: 48.0),
                                                  child: new Material
                                                  (
                                                    color: colorsByPage[1],
                                                    borderRadius: new BorderRadius.circular(64.0),
                                                    child: new InkWell
                                                    (
                                                      onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ReadBookPage())),
                                                      child: new Container
                                                      (
                                                        margin: new EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0),
                                                        child: new Text('READ BOOK', style: new TextStyle(fontWeight: FontWeight.w300, color: Colors.white)),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}