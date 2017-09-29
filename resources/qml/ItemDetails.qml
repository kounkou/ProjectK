import QtQuick 2.4

ItemDetailsForm {

    // This is the call back to go back to previous screen
    goBack.onClicked: {
        stateManager.state = "NORMAL"
    }
}
