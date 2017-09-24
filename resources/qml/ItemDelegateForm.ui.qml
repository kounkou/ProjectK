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

Rectangle {

    id: itemModelDelegate

    // This property holds the item image
    property alias objectImg : objectImg
    property alias imageArea : imageArea

    Image {
        id: objectImg
        anchors.fill: parent
        anchors.centerIn: parent
        source: picture
        fillMode: Image.PreserveAspectCrop

        BusyIndicator {
            anchors.centerIn: parent
            running: objectImg.status === Image.Loading ||
                     objectImg.status === Image.Error
        }

        MouseArea {
            id: imageArea
            anchors.fill: parent
        }
    }
}
