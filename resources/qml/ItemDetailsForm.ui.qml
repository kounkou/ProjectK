import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Pane {
    property alias goBack: goBack


    ColumnLayout {
        spacing: 10

        anchors {
            horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: imageItem
            source: stateManager.currentImage
            sourceSize.width : window.width  / 2
            sourceSize.height: window.height / 2

            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            width : window.width  - 20
            height: childrenRect.height
            radius: 5
            clip: true

            Text {
                id: descriptionText
                text: stateManager.currentBrief
                anchors.centerIn: parent
            }

            anchors.bottom: goBack.top
        }

        Button {
            id: goBack
            Image {
                id: settings;
                opacity: 0.7;
                anchors.centerIn: parent;
                width : settingsButton.width / 2;
                height: settingsButton.height / 2;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/images/back.png";
            }

            anchors.bottom: page.bottom
        }
    }
}
