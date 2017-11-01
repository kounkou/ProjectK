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

    Column {

        anchors.centerIn: parent

        TextField {
            id: login
            width : parent.width
            placeholderText: "login"
            font.pixelSize: 12
        }

        TextField {
            id: password
            width : parent.width
            echoMode: TextInput.Password
            placeholderText: "password"
            font.pixelSize: 12
        }

        Button {
            id: connection
            text: qsTr("Connexion")
            font.pointSize: 10
        }
    }
}
