import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4

Item {
    Rectangle {
        id: search
        height: 30
        width: parent.width / 1.3
        border.color: "lightgrey"
        color: "lightgrey"
        radius: 15
        clip: true
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: hint
            anchors { fill: parent; leftMargin: 14 }
            verticalAlignment: Text.AlignVCenter
            text: "search..."
            font.pixelSize: 18
            color: "#707070"
            opacity: input.displayText.length ? 0 : 1
        }

        Text {
            id: prefix
            anchors { left: parent.left; leftMargin: 14; verticalCenter: parent.verticalCenter }
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 18
            color: "#707070"
            opacity: !hint.opacity
        }

        TextInput {
            id: input
            focus: true
            anchors { left: prefix.right; right: parent.right; top: parent.top; bottom: parent.bottom }
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 18
            color: "#707070"

            // applying the filter on the string
            onTextChanged: {
                filterModel.setFilterString(text);
            }
        }

        Image {
            source: "qrc:/clear.png"
            width: 20
            height: 20
            anchors.right: parent.right
            anchors.rightMargin: 12
            anchors.verticalCenter: parent.verticalCenter
            visible: input.text.length > 0 ? true : false
            opacity: 0.7

            MouseArea {
                anchors { fill: parent; margins: -10 }
                onClicked: {
                    console.log("clicked on the clear button")
                    input.text = "";
                }
            }
        }
    }

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
            }

            // my little timer to refresh images
            Timer {
                interval: 5000
                repeat: true
                running: true
                onTriggered: {
                    objectImg.source = "";
                    objectImg.source = picture
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
            width: 180;
            height: parent.height - 30
            spacing: 2
            model: filterModel
            delegate: itemModelDelegate
        }
    }
}
