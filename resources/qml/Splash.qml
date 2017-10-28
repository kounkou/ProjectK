import QtQuick 2.4

SplashForm {
    Timer {
        interval   : 10000;
        running    : true;
        repeat     : false
        onTriggered: stateManager.state = "NORMAL"
    }
}
