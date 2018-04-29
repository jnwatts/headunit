import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.VirtualKeyboard 2.3
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Window {
    // Debug signals, unused on real hardware
    signal powerPressed()
    signal volumeChanged(int value)
    signal buttonPressed(int side, int index)
    signal selectPressed()
    signal navigateChanged(int value)
    property string activeSource: "Standby.qml"
    readonly property var loader: toucharealoader

    visible: true
    id: window
    objectName: "mainwindow"
    minimumWidth: 800
    minimumHeight: 480

    function nativeDisplay() {
        return window.width > toucharea.width || window.height > toucharea.height
    }

    // Left buttons
    Loader {
        id: leftHWButtons
        anchors.right: toucharea.left
        anchors.top: toucharea.top
        anchors.bottom: toucharea.bottom
        width: 100
        visible: nativeDisplay()
        source: nativeDisplay() ? "HWButtonsSide.qml" : ""
        onLoaded: {
            item.buttons = ["FM", "AM", "SAT"]
            item.dialImage = "IEC5009_Standby_Symbol.svg"
        }
    }
    Connections {
        target: leftHWButtons.item
        onDialPressed: powerPressed()
        onDialValueChanged: volumeChanged(value)
        onButtonPressed: buttonPressed(0, index)
    }

    // Right buttons
    Loader {
        id: rightHWButtons
        anchors.left: toucharea.right
        anchors.top: toucharea.top
        anchors.bottom: toucharea.bottom
        width: 100
        visible: nativeDisplay()
        source: nativeDisplay() ? "HWButtonsSide.qml" : ""
        onLoaded: {
            item.buttons = ["MEDIA", "MUTE", "SETUP"]
        }
    }
    Connections {
        target: rightHWButtons.item
        onDialPressed: selectPressed()
        onDialValueChanged: navigateChanged(value)
        onButtonPressed: buttonPressed(1, index)
    }

    // Top buttons
    Loader {
        id: topHWButtons
        anchors.bottom: toucharea.top
        anchors.left: toucharea.left
        anchors.right: toucharea.right
        height: 80
        visible: nativeDisplay()
        source: nativeDisplay() ? "HWButtonsTop.qml" : ""
    }

    // Touch interface
    Rectangle {
        id: toucharea
        anchors.centerIn: parent
        width: 800
        height: 480
        color: "#000000"

        Loader {
            id: toucharealoader
            anchors.fill: parent
            anchors.margins: 10
            source: activeSource
        }

    }
}
