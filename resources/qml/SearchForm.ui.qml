/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE SearchForm.ui.qml
///
/// DESCRIPTION
/// It is the User interface part of the search bar
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

import QtQuick 2.4
import QtQuick.Controls 2.1

Rectangle {
    id: search

    property alias inputSearch: input
    property alias clearSearch: clearArea
    property alias inputText  : input

    border.color: "lightgrey"
    radius: 10
    clip: true

    Text {
        id: hint
        anchors {
            fill: parent;
            leftMargin: 14;
        }
        verticalAlignment: Text.AlignVCenter
        text: "search..."
        font.pixelSize: 18
        color: "#707070"
        opacity: input.displayText.length ? 0 : 1
    }

    Text {
        id: prefix
        anchors { left: parent.left; leftMargin: 14; verticalCenter: parent.verticalCenter }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 18
        color: "#707070"
        opacity: !hint.opacity
    }

    TextInput {
        id: input
        focus: true
        anchors { left: prefix.right; right: parent.right; top: parent.top; bottom: parent.bottom }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 18
        color: "#707070"
        validator: RegExpValidator { regExp: /^[0-9A-Za-z ]{0,23}$/ }
    }

    Image {
        id: clear
        source: "qrc:/images/clear.png"
        width: 20
        height: 20
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.verticalCenter: parent.verticalCenter
        visible: input.text.length > 0 ? true : false
        opacity: 0.7

        MouseArea {
            id: clearArea
            anchors {
                fill: parent;
            }
        }
    }
}
