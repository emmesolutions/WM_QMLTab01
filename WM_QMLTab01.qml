import QtQuick 2.0
import Ubuntu.Components 0.1
import "components"
import "ui"

/*!
    \brief MainView with Tabs element.
           First Tab has a single Label and
           second Tab has a single ToolbarAction.
*/

MainView {
    id: mainView
    objectName: "mainView"
    applicationName: "com.ubuntu.developer..WM_QMLTab01"

    automaticOrientation: true

    width: units.gu(100)
    height: units.gu(75)

    // Tabs:
    Tabs {
        id: tabs

        Tab01 {
            objectName: "Tab01"
        }

        Tab02 {
            objectName: "Tab02"
        }

        Tab03 {
            objectName: "Tab03"
        }
    }

}
