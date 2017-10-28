/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE Splash.ui.qml
///
/// DESCRIPTION
/// This is the splashscreen
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
    id: splash

    width : window.width
    height: window.height
    color : "#212121"

    Column {
        spacing: 10

        anchors.centerIn: parent

        Text {
            id: splashTextTitle
            text: qsTr("ProjectK")
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 30
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: splashTextNewline
            text: qsTr("we are connecting the dots")
            font.pointSize: 10
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
