// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
// FILE ParametersPageForm.qml
//
// DESCRIPTION
// This page is the parameter page for the application
//
//
// DESIGN DOCUMENTS
// none
//
// DATE          BY                         Issue #      REMARKS
// 23-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
//
////////////////////////////////////////////////////////////////////////////////

import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Item {
    Component {
        id: itemModelDelegate

        Rectangle {
            height: list.height / 2
            width: list.width
            border.color: "lightgrey"
            color: "white"
            clip: true

            Image {
                id: objectImg
                height: list.height / 2
                width: list.width + 100
                anchors.fill: parent;
                source: pictures
                fillMode: Image.PreserveAspectFit

                BusyIndicator {
                    anchors.centerIn: parent
                    running: objectImg.status === Image.Loading ||
                             objectImg.status === Image.Error
                }
            }

            // my little timer to refresh images
            Timer {
                interval: 5000
                repeat: true
                running: true
                onTriggered: {
                    objectImg.source = "";
                    objectImg.source = pictures
                }
            }
        }
    }

    Rectangle {
        id: list
        height: parent.height - 30
        width: parent.width
        border.color: "white"
        color: "white"
        clip: true
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter

        ListView {
            width: 180;
            height: parent.height - 30
            spacing: 2
            model: FactureModel {}
            delegate: itemModelDelegate
        }
    }
}
