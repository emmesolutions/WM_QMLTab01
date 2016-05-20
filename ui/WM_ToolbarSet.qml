/*
 * Copyright (C) 2013 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Authored by: Raúl Yeguas <neokore@gmail.com>
 *              Martin Borho <martin@borho.net>
 */
import QtQuick 2.0
import Ubuntu.Components 0.1
import "../components"

/* Toolbar Settings */
Page {
       id: toolbarSet
        objectName: "ToolbarSet"
        title: i18n.tr("Toolbar Settings")

        // Title
        Column {
            spacing: units.gu(1)
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
            id:label30
            objectName: "WM_Label30"
            text: i18n.tr("* TOOLBAR SETTINGS *")
            }
        }

        /* Main */
        Column {
            spacing: units.gu(1)
            anchors.centerIn: parent

        WM_Shape01 {
                   id: shape10
                   objectName: "WM_Shape01"
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: i18n.tr("Hello Settings")
               }

        Button {
            id: button10
            objectName: "WM_Button10"
            width: parent.width
            text: i18n.tr("Tap me!")
            onClicked: {
                button10.text = i18n.tr("Taped!")
            }
        }

       }

    }
