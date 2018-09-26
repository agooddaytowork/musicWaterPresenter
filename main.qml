import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //    Repeater{
    //        model: 9

    ComboBox{
        id: highlightComboBox
        model: 10
        anchors.top: parent.top
        anchors.right: parent.right

    }

    Rectangle{
        width: 500
        height: 500
        color: "grey"
        Repeater{
            model: 9

            MusicPresenterGroup{
                id: theGroup
                property int groupIndex: index
                groupID: index
                anchors.top: parent.top
                anchors.left: parent.left
                scale: 1

                Connections{
                    target: highlightComboBox
                    onCurrentIndexChanged:
                    {
                        if(highlightComboBox.currentIndex == 9 || highlightComboBox.currentIndex == theGroup.groupIndex)
                        {
                            theGroup.visible = true
                        }
                        else
                        {
                            theGroup.visible = false
                        }
                    }
                }
            }
        }
    }




//    Repeater{
//        model: 3
//        MusicPresenterGroup{
//            groupID: index+6
//            anchors.top: parent.top
//            anchors.left: parent.left
//        }
//    }
    //    MusicPresenterGroup{
    //        id: presenterGroup
    //        groupID: 5
    //        anchors.top: parent.top
    //        anchors.left: parent.left
    //    }

//    Row
//    {
//        anchors.right: parent.right
//        anchors.top:parent.top
//        height: 30
//        Row
//        {
//            Label{
//                text: "p1"
//            }
//            TextField{
//                width: 50
//             id: p1TextField
//            }
//        }
//        Row
//        {
//            Label{
//                text: "p2"
//            }
//            TextField{
//                width: 50
//             id: p2TextField
//            }
//        }
//        Row
//        {
//            Label{
//                text: "p3"
//            }
//            TextField{
//                width: 50
//             id: p3TextField
//            }
//        }
//        Row
//        {
//            Label{
//                text: "p4"
//            }
//            TextField{
//                width: 50
//             id: p4TextField
//            }
//        }

//    }

//    Row
//    {
//        anchors.right: parent.right
//        height: parent.height - 30
//        anchors.topMargin: 30
//        anchors.top: parent.top
//        Slider {
//            orientation: Qt.Vertical
//            value: presenterGroup.group6P1
//            from: 1.0
//            to: 5.0
//            height: parent.height

//            onValueChanged:
//            {
//                presenterGroup.group6P1 = value
//                p1TextField.text = value
//            }

//        }
//        Slider {
//            orientation: Qt.Vertical
//            value: presenterGroup.group6P2
//            from: 0
//            to: Math.PI
//            height: parent.height

//            onValueChanged:
//            {
//                presenterGroup.group6P2 = value
//                p2TextField.text = value
//            }

//        }
//        Slider {
//            orientation: Qt.Vertical
//            value: presenterGroup.group6P3
//            from: 0
//            to: 10
//            height: parent.height

//            onValueChanged:
//            {
//                presenterGroup.group6P3 = value
//                p3TextField.text = value
//            }

//        }
//        Slider {
//            orientation: Qt.Vertical
//            value: presenterGroup.group6P4
//            from: 0
//            to: Math.PI
//            height: parent.height

//            onValueChanged:
//            {
//                presenterGroup.group6P4 = value
//                p4TextField.text = value
//            }

//        }
//    }




    //    }



}
