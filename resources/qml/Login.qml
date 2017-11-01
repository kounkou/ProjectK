/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE Login.qml
///
/// DESCRIPTION
/// Login.qml will provide us with the Login qml controller
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

LoginForm {

    property bool connectionStatus: true

    connection.onClicked: {
        // Using invokable method here to authentify
        // connect(login.text, password.text)

        connectionStatus ? stateManager.state = "NORMAL" : stateManager.state = "LOGIN"
    }
}
