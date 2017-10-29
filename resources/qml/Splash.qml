/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE Splash.qml
///
/// DESCRIPTION
/// Splash.qml is the Splashscreen part of the qml showed at boot
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

import QtQuick 2.4

SplashForm {

    // For now a dummy timer is used
    Timer {
        interval   : 10000;
        running    : true;
        repeat     : false
        onTriggered: stateManager.state = "NORMAL"
    }
}
