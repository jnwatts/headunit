import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    property int selectedSource: -1

    onSelectedSourceChanged: {
        console.log(selectedSource)
        switch (selectedSource) {
        case 0:
            sd.checked = true;
            break;
        case 1:
            bt.checked = true;
            break;
        case 2:
            aux.checked = true;
            break;
        }
    }

    ButtonGroup {
        id: mode
        buttons: modeButtons.children
    }

    RowLayout {
        id: modeButtons
        Button { id: sd; checkable: true; text: qsTr("SD Card") }
        Button { id: bt; checkable: true; text: qsTr("Bluetooth") }
        Button { id: aux; checkable: true; text: qsTr("AUX") }
    }
}
