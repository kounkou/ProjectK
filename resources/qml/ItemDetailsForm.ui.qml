import QtQuick 2.4
import QtQuick.Controls 2.1

Rectangle {
    height: 400
    width : 400

    property alias goBack: goBack

    Button {
        id: goBack
        text: qsTr("go back")
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            margins: 10
        }
    }

    Rectangle {
        id: details

        anchors {
            bottom: goBack.top
            top: parent.top
            left: parent.left
            right: parent.right
            margins: 10
        }

        Image {
            id: objectImg
            anchors.fill: parent
            anchors.centerIn: parent
            source: stateManager.currentImage
            fillMode: Image.PreserveAspectFit

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
        }
    }
}
