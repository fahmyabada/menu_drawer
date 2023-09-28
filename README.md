# Flutter menu drawer 

[![pub package](https://img.shields.io/badge/pub-1.0.3-blue)](https://github.com/fahmyabada/menu_drawer)

A Flutter package with custom implementation of Menu Drawer 

<img src="https://github.com/fahmyabada/menu_drawer/raw/master/screenshot_1.png" alt="screenshot" width="250" height="481"/>


To start using this package, add `menu_drawer` dependency to your `pubspec.yaml`

```yaml
dependencies:
  menu_drawer: '<latest_release>'
```

# Features

- control header menu
- add many items (all control leading - all control name - press)
- add power by
- add versions

# how to use

```
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Menu(
        item: [
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text(
              'Support',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            leading: const Icon(
              Icons.support,
              color: Colors.grey,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text(
              'About',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            leading: const Icon(
              Icons.abc_outlined,
              color: Colors.grey,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        titleDrawerHeader: "mohamed fahmy",
        width: 320.0,
        colorDrawerHeader: Colors.blue,
        heightDrawerHeader: 70.0,
        widthDrawerHeader: 70.0,
        urlImageDrawerHeader:
        "https://www.escapeauthority.com/wp-content/uploads/2116/11/No-image-found.jpg",
        spaceDrawerHeader: 15.0,
        colorTitleDrawerHeader: Colors.white,
        fontSizeTitleDrawerHeader: 20.0,
        subTitleDrawerHeader: "",
        colorSubTitleDrawerHeader: Colors.white,
        fontSizeSubTitleDrawerHeader: 20.0,
        namePoweredBy: 'PoweredBy',
        colorPoweredBy: Colors.blue,
        fontSizePoweredBy: 17.0,
        heightNameImagePoweredBy: 5,
        pressImagePoweredBy: () {
          print('pressImagePoweredBy');
        },
        urlImagePoweredBy: "assets/logoCompany.png",
        heightImagePoweredBy: 40.0,
        widthImagePoweredBy: 150.0,
        heightImageVersion: 10.0,
        nameVersion: 'Version',
        valueVersion: "1.0",
        colorVersion: Colors.blue,
        fontSizeVersion: 17.0,
      ),
    );
  }
```

License
----

BSD 3-clause License
