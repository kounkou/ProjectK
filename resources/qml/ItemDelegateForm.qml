/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE ItemDelegateForm.ui.qml
///
/// DESCRIPTION
/// It will provide us with the ItemDelegate qml view
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

Pane {

    id: itemModelDelegate

    // This property holds the item image
    property alias objectImg : objectImg
    property alias imageArea : imageArea
    property alias itemPrice : itemPrice

    Image {
        id: objectImg
        anchors.fill: parent
        anchors.centerIn: parent
        source: picture
        fillMode: Image.PreserveAspectCrop
        asynchronous: true

        BusyIndicator {
            id: loadIndicator
            anchors.centerIn: parent
            running: objectImg.status === Image.Loading ||
                     objectImg.status === Image.Error
        }

        MouseArea {
            id: imageArea
            anchors.fill: parent
        }

        Rectangle {
            id: priceEl
            anchors {
                bottom: parent.bottom
                right: parent.right
                bottomMargin: 5
                rightMargin: 5
            }
            height: itemPrice.height + 10
            width : itemPrice.width  + 10
            radius: 10

            // The text makes no sense if the image isn't loaded
            // so we tet the running state before setting the price
            Text {
                id: itemPrice
                anchors.centerIn: parent
                text: loadIndicator.running ? "" : price
                smooth: true
                font.pointSize: 15
                color: "grey"
                font.bold: true
            }
        }
    }
}
