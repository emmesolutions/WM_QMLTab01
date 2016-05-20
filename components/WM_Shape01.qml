import QtQuick 2.0
import Ubuntu.Components 0.1

UbuntuShape {
    width: units.gu(40)
    height: units.gu(10)

    property alias text : myText.text

    Label {
        id: myText
        anchors.centerIn: parent
    }
}
