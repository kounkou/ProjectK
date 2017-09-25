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
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.1

Item {

    Search {
        height: 30
        width: list.width / 1.3
        anchors.top: list.top
        anchors.topMargin: 10
        anchors.horizontalCenter: list.horizontalCenter
    }

    /*
    Popup {
        id: popup
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        width: parent.width - 40
        height: parent.height / 2
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside
    }
    */

    Component {
        id: itemModelDelegate

        Rectangle {
            height: list.height / 3
            width: list.width
            border.color: "lightgrey"
            color: "white"
            clip: true

            Image {
                id: objectImg
                height: list.height / 3
                width: list.width + 100
                anchors.fill: parent;
                source: picture
                fillMode: Image.PreserveAspectCrop

                BusyIndicator {
                    anchors.centerIn: parent
                    running: objectImg.status === Image.Loading ||
                             objectImg.status === Image.Error
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        popup.open();
                    }
                }
            }

            // my little timer to refresh images
            Timer {
                interval: 5000
                repeat: true
                running: true
                onTriggered: {
                    objectImg.source = "";
                    objectImg.source = 





                }
            }

            Rectangle {
                id: priceEl
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: 5
                anchors.rightMargin: 5
                height: 30
                width: parent.width / 4
                radius: 10

                Text {
                    anchors.centerIn: parent
                    text: price
                    smooth: true
                    font.pointSize: 15
                    color: "grey"
                    font.bold: true
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
        anchors.top: search.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter

        ListView {
            id: listviewElt
            width: 180;
            height: parent.height - 30
            spacing: 2
            model: filterModel
            delegate: itemModelDelegate
        }
    }
}
