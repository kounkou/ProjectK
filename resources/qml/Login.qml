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

    // This part will delegate the login to C++ and react with UI when login fails
    connection.onClicked: {
        // Using invokable method here to authentify
        connectionStatus = model.loginUser(login.text, password.text)
        console.log("connection status : " + connectionStatus)
        if (connectionStatus) {
            stateManager.state = "NORMAL"
        } else {
            messageVis = true
            stateManager.state = "LOGIN"
        }
    }
}
