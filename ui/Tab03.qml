import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import "../components"

/* Tab03 */
Tab {
    id: tab03
    title: i18n.tr("Tab03")

        PageStack {
            id: pageStack
            Component.onCompleted: push(tab03_Page30)

        /* Tab03 Default Page */
        Page {
                id: tab03_Page30
                title: i18n.tr("Tab03 Page30")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label30
                    objectName: "WM_Label30"
                    text: i18n.tr("* TAB03 PAGE30 *")
                    }
                }

                // Main
                Column {
                    spacing: units.gu(2)
                    anchors.centerIn: parent

                 WM_Shape03 {
                        id: shape03
                        objectName: "WM_Shape03"

                        anchors.horizontalCenter: parent.horizontalCenter

                        text: i18n.tr("Hello Tab03")
                    }

                    ListItem.Standard {
                        text: i18n.tr("Page 01")
                        onClicked: pageStack.push(tab03_Page31, {color: UbuntuColors.orange})
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
                    id: page_Tools30

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

        /* Tab03 Page31 */
        Page {
                id: tab03_Page31
                title: i18n.tr("Tab03 Page31")
                visible: false

                // Title
                Column {
                    spacing: units.gu(1)
                    anchors.horizontalCenter: parent.horizontalCenter

                    Label {
                    id:label31
                    objectName: "WM_Label31"
                    text: i18n.tr("* TAB03 PAGE31 *")
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
