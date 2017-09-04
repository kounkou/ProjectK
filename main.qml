import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 380
    height: 620
    title: qsTr("")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        MainPage      {}
        HistoricPage  {}
        ParameterPage {}
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            id: homeButton;
            Image {
                id: home;
                opacity: 0.7;
                anchors.centerIn: parent;
                width: historicButton.width - 20;
                height: historicButton.height - 20;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/resources/home.png";
            }
        }
        TabButton {
            id: historicButton
            Image {
                id: historic;
                opacity: 0.7;
                anchors.centerIn: parent;
                width: historicButton.width - 20;
                height: historicButton.height - 20;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/resources/history.png";
            }
        }
        TabButton {
            id: settingsButton
            Image {
                id: settings;
                opacity: 0.7;
                anchors.centerIn: parent;
                width: settingsButton.width - 20;
                height: settingsButton.height - 20;
                fillMode: Image.PreserveAspectFit;
                source: "qrc:/resources/settings.png";
            }
        }
    }
}
