import QtQuick 2.15
import QtQuick.Controls 2.15
import views 1.0
Frame{
    implicitWidth: 350
    implicitHeight: 200
    background:Rectangle{
        color:"#FFFFFF"
        radius: 10
        border.color: "#00263D"
    }


    AppText{
        text: "Sample Title"
        font.bold:  true
        font.pointSize: 16
        anchors{
            bottom:parent.bottom
            left:parent.left

        }
    }
}
