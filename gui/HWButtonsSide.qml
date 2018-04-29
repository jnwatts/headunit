import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

Rectangle {
    signal dialPressed()
    signal dialValueChanged(int value)
    signal buttonPressed(int index)
    property var buttons: ["0", "1", "2"]
    property string dialImage: ""

    anchors.fill: parent
    color: "lightgray"

    ColumnLayout {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -50
        Button { text: buttons[0]; onPressed: buttonPressed(0) }
        Button { text: buttons[1]; onPressed: buttonPressed(1) }
        Button { text: buttons[2]; onPressed: buttonPressed(2) }
    }

    Dial {
        anchors.bottom: parent.bottom
        height: parent.width
        width: parent.width
        stepSize: 5
        snapMode: Dial.SnapAlways
        from: 0
        to: 100
        onValueChanged: {
            dialValueChanged(Math.round(value));
        }
        RoundButton {
            width: parent.width < parent.height ? parent.width * 0.40 : parent.height * 0.40
            height: width
            anchors.centerIn: parent
            radius: width*0.5
            background:
            Image {
                source: dialImage
                anchors.fill: parent
            }
            onPressed: {
                dialPressed();
            }
        }
    }
}
