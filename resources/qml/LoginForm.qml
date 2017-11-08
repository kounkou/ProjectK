/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE LoginForm.ui.qml
///
/// DESCRIPTION
/// Login screen
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
    id: loginScreen

    property alias connection: connection
    property alias login     : login
    property alias password  : password
    property alias messageVis: connectionMessage.visible

    Text {
        id: loginTitle
        text: "Login"
        font.pointSize: 20
        horizontalAlignment: TextField.AlignHCenter

        anchors {
            top: parent.top
            margins: parent.height / 4
            horizontalCenter: parent.horizontalCenter
        }
    }

    Column {

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: loginTitle.bottom
        anchors.topMargin: 20
        width: window.width / 2
        spacing: 10

        TextField {
            id: login
            width : parent.width
            placeholderText: "login"
            font.pointSize: 12
            horizontalAlignment: TextField.AlignHCenter
        }

        TextField {
            id: password
            width : parent.width
            echoMode: TextInput.Password
            placeholderText: "password"
            font.pointSize: 12
            horizontalAlignment: TextField.AlignHCenter
        }               

        Button {
            id: connection
            text: qsTr("Connexion")
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: connectionMessage
            width: parent.width
            height: message.height
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: message
                anchors.centerIn: parent
                text: "Login incorrect, please try again"
                color: "red"
                font.bold: true
                font.pointSize: 12
            }
        }
    }
}
