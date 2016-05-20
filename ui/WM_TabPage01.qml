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

/* TabPage01 */
Page {
       id: tabPage01
        objectName: "TabPage01"
        title: i18n.tr("Tab Page01")

        // Title
        Column {
            spacing: units.gu(1)
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
            id:label31
            objectName: "WM_Label31"
            text: i18n.tr("* TAB PAGE01 *")
            }
        }

        /* Main */
        Column {
            spacing: units.gu(1)
            anchors.centerIn: parent

        WM_Shape01 {
                   id: shape20
                   objectName: "WM_Shape20"
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: i18n.tr("Hello TabPage01")
               }

        Button {
            id: button20
            objectName: "WM_Button20"
            width: parent.width
            text: i18n.tr("Tap me!")
            onClicked: {
                button20.text = i18n.tr("Taped!")
            }
        }

       }

    }
