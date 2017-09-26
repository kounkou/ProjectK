/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE MainPage.qml
///
/// DESCRIPTION
/// MainPage.ui.qml is the first page of the application displaying
/// the different items. This is the full UI file
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

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

        // spacing: 2
        // snapMode: ListView.SnapToItem
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
        // width: window.width - 20
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
