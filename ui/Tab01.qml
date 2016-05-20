import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import "../components"

/* Tab01 */
Tab {
    id: tab01
    title: i18n.tr("Tab01")

        PageStack {
            id: pageStack
            Component.onCompleted: push(tab01_Page10)

        /* Tab01 Default Page */
        Page {
                id: tab01_Page10
                title: i18n.tr("Tab01 Page10")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label20
                    objectName: "WM_Label10"
                    text: i18n.tr("* TAB01 PAGE10 *")
                    }
                }

                // Main
                Column {
                    spacing: units.gu(2)
                    anchors.centerIn: parent

                 WM_Shape01 {
                        id: shape01
                        objectName: "WM_Shape01"

                        anchors.horizontalCenter: parent.horizontalCenter

                        text: i18n.tr("Hello Tab01")
                    }

                    ListItem.Standard {
                        text: i18n.tr("Page 01")
                        onClicked: pageStack.push(tab01_Page11, {color: UbuntuColors.orange})
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Page 02")
                        onClicked: pageStack.push(tab01_Page12)
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Page Settings")
                        onClicked: pageStack.push(Qt.resolvedUrl("WM_ToolbarSet.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Page Tab01")
                        onClicked: pageStack.push(Qt.resolvedUrl("WM_TabPage01.qml"))
                        progression: true
                    }
                }

                // ToolBar:
                tools: ToolbarItems {
                    id: page_Tools10

                    ToolbarButton {
                        objectName: "ToolBar_Settings"
                        action: Action {
                            id: settingsAction
                            iconSource: Qt.resolvedUrl("../resources/images/settings.png");
                            text: i18n.tr("Settings");
                            onTriggered: {
                                pageStack.push(Qt.resolvedUrl("WM_ToolbarSet.qml"));
                            }
                        }
                    }
                }

            }

        /* Tab01 Page11 */
        Page {
                id: tab01_Page11
                title: i18n.tr("Tab01 Page11")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label11
                    objectName: "WM_Label11"
                    text: i18n.tr("* TAB01 PAGE11 *")
                    }
                }

                // Main
                property alias color: rectangle.color
                Rectangle {
                    id: rectangle
                    anchors {
                        fill: parent
                        margins: units.gu(5)
                    }
                }

        }

        /* Tab01 Page12 */
        Page {
                id: tab01_Page12
                title: i18n.tr("Tab01 Page12")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label12
                    objectName: "WM_Label12"
                    text: i18n.tr("* TAB01 PAGE12 *")
                    }
                }

                // Main
                Column {
                    spacing: units.gu(2)
                    anchors.centerIn: parent

                 WM_Shape01 {
                        id: shape12
                        objectName: "WM_Shape12"
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: i18n.tr("Hello Tab01 Page12")
                    }
                }

            }

        }
}
