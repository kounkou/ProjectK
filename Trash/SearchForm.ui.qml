import QtQuick 2.4

Rectangle {
    id: search

    property alias inputSearch: input
    property alias clearSearch: clearArea

    border.color: "lightgrey"
    color: "lightgrey"
    radius: 15
    clip: true

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
    }

    Image {
        id: clear
        source: "qrc:/clear.png"
        width: 20
        height: 20
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.verticalCenter: parent.verticalCenter
        visible: input.text.length > 0 ? true : false
        opacity: 0.7

        MouseArea {
            id: clearArea
            anchors {
                fill: parent;
            }
        }
    }
}
