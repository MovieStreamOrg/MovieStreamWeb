import QtQuick 2.15
import QtQuick.Controls
import views 1.0
Item{
    property double leftRadius
    property double rightRadius
    property string color
    property bool isActive
    property string text
    signal linkClicked(myItem:Item)
    id:root
    Frame{
        id:itemFrame
        padding:0
        rightPadding:10
        leftPadding:20
        topPadding: 10
        bottomPadding: 10
        anchors.centerIn: parent
        height:parent.height
        width:parent.width -(60)
        background:Rectangle{
            color:{

             console.log(root.isActive)
             return   (root.isActive) ?  root.color: "#00000000"
            }
        }
        AppText{
            width: parent.width
            height:parent.height
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            text:  {
                if(root.isActive){
                    return "<a href='#' style='text-decoration:none; color:#24292e;'>"+root.text+"</a>";
                }else{
                    return "<a href='#' style='text-decoration:none; color:#00263D;'>"+root.text+"</a>";

                }
            }
            onLinkActivated: {

                root.linkClicked(root)
            }
            font.pixelSize: 18

            color: (root.isActive) ? "#24292e":"#00263D"
        }


    }
    Rectangle{
        anchors.left: parent.left
        height:parent.height
        width: 40
        visible:root.isActive
        color: root.color
        radius: leftRadius
    }


    Rectangle{
        anchors.right: parent.right
        width:40
        height:parent.height
        color: root.color
        radius: rightRadius
        visible: root.isActive
    }


}
