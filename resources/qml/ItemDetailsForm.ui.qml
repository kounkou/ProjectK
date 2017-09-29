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

        color: "grey"
        anchors {
            bottom: goBack.top
            top: parent.top
            left: parent.left
            right: parent.right
            margins: 10
        }
    }
}
