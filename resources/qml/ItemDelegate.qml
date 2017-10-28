/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE ItemDelegate.qml
///
/// DESCRIPTION
/// ItemDelegate.qml will provide us with the ItemDelegate qml controller
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

ItemDelegateForm {

    // my little timer to refresh images
    Timer {
        interval: 5000
        repeat: true
        running: true
        onTriggered: {
            objectImg.source = "";
            objectImg.source = picture;
        }
    }

    // my image callback to proceed for further details
    imageArea.onClicked: {
        stateManager.state        = "DETAIL";
        stateManager.currentImage = picture;
        stateManager.currentName  = name;
        stateManager.currentBrief = description;
    }
}
