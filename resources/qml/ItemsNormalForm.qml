import QtQuick 2.4

Rectangle {

    id: listOfItems

    ListView {
        id: listviewElt
        anchors.fill: parent
        anchors {
            topMargin: 50
            top : search.bottom
        }

        headerPositioning: ListView.PullBackHeader

        model: filterModel
        delegate: ItemDelegate {
            width : window.width
            height: window.height/3
        }
    }

    // Using header inside the listview causes some
    // QML issue when searching inside the model
    // so I keep that here for now
    Search {
        id: search

        height: window.height/16
        anchors {
            left: parent.left
            leftMargin: 40
            right: parent.right
            rightMargin: 40
            top : parent.top
            topMargin: 10
        }
    }
}
