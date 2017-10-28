/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE MainPage.qml
///
/// DESCRIPTION
/// MainPage.qml is the first page of the application displaying
/// the different items. The form page represent the controller part
/// of the qml page
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

import QtQuick 2.4

Item {
    id: statesManager

    // initial state for the statemanager
    state: "SPLASH"

    property string currentImage: ""
    property string currentName : ""
    property string currentBrief: ""

    // This is the files loader
    Loader {
        id: loader
        anchors.fill: parent
        visible: source != ""
    }

    // This is my connection
    Connections {
        target: loader.source != "" ? loader.item : null
    }

    states: [
        State {
            name: "SPLASH"
            PropertyChanges {
                target: loader
                source: "Splash.qml"
            }
        },
        State {
            name: "NORMAL"
            PropertyChanges {
                target: loader
                source: "ItemsNormal.qml"
            }
        },
        State {
            name: "DETAIL"
            PropertyChanges {
                target: loader
                source: "ItemDetails.qml"
            }
        }
    ]
}
