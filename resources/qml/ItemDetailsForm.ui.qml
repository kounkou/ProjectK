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

        Item {
            id: description

            height: window.height / 4
            width : window.width - 10
            anchors.horizontalCenter: parent.horizontalCenter

            // color: "grey"

            Column {
                spacing: 10

                // A title
                Text {
                    id: title
                    text: "Description"
                    font.pointSize: 20
                }

                // Description
                Text {
                    id: messageBox
                    width: description.width
                    text: "I would like to put text inside a bubble, and I want that my bubble be equal to the text width, but if the text length is too long, I would like the text to wrap automatically and be equal to the parent width.This code works but the text is not wrapping if text is too long:"
                    wrapMode: "WordWrap"
                    font.pointSize: 14
                    opacity: 0.7
                }
            }
        }

        Item {
            id: images

            height: window.height / 2
            width : window.width - 10
            anchors.horizontalCenter: parent.horizontalCenter

            Row {
                spacing: 5
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                Column {
                    spacing: 5

                    Image {
                        id: imageItemView1
                        source: stateManager.currentImage
                        sourceSize.width : window.width  / 2.2
                        sourceSize.height: parent.height
                    }
                    Image {
                        id: imageItemView2
                        source: stateManager.currentImage
                        sourceSize.width : window.width  / 2.2
                        sourceSize.height: parent.height
                    }
                }
                Column {
                    spacing: 5

                    Image {
                        id: imageItemView3
                        source: stateManager.currentImage
                        sourceSize.width : window.width  / 2.2
                        sourceSize.height: parent.height
                    }
                    Image {
                        id: imageItemView4
                        source: stateManager.currentImage
                        sourceSize.width : window.width  / 2.2
                        sourceSize.height: parent.height
                    }
                }
            }
        }

        Item {
            id: actions

            height: childrenRect.height
            width : window.width  - 10
            anchors.horizontalCenter: parent.horizontalCenter

            Row {
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    id: goBack
                    Image {
                        opacity: 0.7;
                        anchors.centerIn: parent;
                        width : settingsButton.width / 2;
                        height: settingsButton.height / 2;
                        fillMode: Image.PreserveAspectFit;
                        source: "qrc:/images/back.png";
                    }
                }
            }
        }
    }
}
