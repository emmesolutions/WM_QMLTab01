import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import "../components"

/* Tab02 */
Tab {
    id: tab02
    title: i18n.tr("Tab02")

        PageStack {
            id: pageStack
            Component.onCompleted: push(tab02_Page20)

        /* Tab02 Default Page */
        Page {
                id: tab02_Page20
                title: i18n.tr("Tab02 Page20")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label20
                    objectName: "WM_Label20"
                    text: i18n.tr("* TAB02 PAGE20 *")
                    }
                }

                // Main
                Column {
                    spacing: units.gu(2)
                    anchors.centerIn: parent

                 WM_Shape02 {
                        id: shape02
                        objectName: "WM_Shape02"

                        anchors.horizontalCenter: parent.horizontalCenter

                        text: i18n.tr("Hello Tab02")
                    }

                    ListItem.Standard {
                        text: i18n.tr("Page 01")
                        onClicked: pageStack.push(tab02_Page21, {color: UbuntuColors.orange})
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Page Settings")
                        onClicked: pageStack.push(Qt.resolvedUrl("WM_ToolbarSet.qml"))
                        progression: true
                    }

                }

                // ToolBar:
                tools: ToolbarItems {
                    id: page_Tools20

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

        /* Tab02 Page21 */
        Page {
                id: tab02_Page21
                title: i18n.tr("Tab02 Page21")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label21
                    objectName: "WM_Label21"
                    text: i18n.tr("* TAB02 PAGE21 *")
                    }
                }

                property alias color: rectangle.color
                Rectangle {
                    id: rectangle
                    anchors {
                        fill: parent
                        margins: units.gu(5)
                    }
                }
            }

        }
}
