/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE main.qml
///
/// DESCRIPTION
/// main.qml is intended to act as an aggregator to all others QML files.
/// This mean all others qml shall be constructed with pair
/// qml and ui.qml Systems
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

import QtQuick 2.7
import QtQuick.Controls 2.0

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 620
    title: qsTr("ProjectK")
    color: "transparent"

    SplashForm {
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        // This is the state manager instance
        // It will control all others instanciation
        ApplicationScreen {
            id: stateManager
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        visible: stateManager.state == "SPLASH" || stateManager.state == "LOGIN" ? false : true

        TabButton {
            id: homeButton;
            Image {
                id: home;
                opacity: 0.7;
                anchors.centerIn: parent;
                width: historicButton.width - 20;
                height: historicButton.height - 20;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/images/home.png";
            }
        }
        TabButton {
            id: historicButton
            Image {
                id: historic;
                opacity: 0.7;
                anchors.centerIn: parent;
                width: historicButton.width - 20;
                height: historicButton.height - 20;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/images/history.png";
            }
        }
        TabButton {
            id: settingsButton
            Image {
                id: settings;
                opacity: 0.7;
                anchors.centerIn: parent;
                width: settingsButton.width - 20;
                height: settingsButton.height - 20;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/images/settings.png";
            }
        }
    }
}
