
import QtQuick 2.15
import QtQuick.Controls
import views 1.0
TextField{
   clip:true
   id: root
   signal iconLeftClicked()
   signal iconRightClicked()
   property FontAwesome iconLeft:FontAwesome{
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height :20
        color: "#888888"
        x: 8

   }

    property FontAwesome iconRight:FontAwesome{
       visible:false

       anchors.verticalCenter: parent.verticalCenter
       x: parent.width - 28
       color: "#888888"
       width : 20
       height: 20


   }
   Rectangle{
       width: 20
       height: parent.height
       anchors.verticalCenter: root.verticalCenter
       x: parent.width - 28
       color:"#00000000"
       visible : iconRight.visible
       MouseArea{
           anchors.fill: parent
           onPressed: iconRightClicked()
       }
       z:  1000

   }
   Rectangle{
       width: 20
       height: parent.height
       anchors.verticalCenter: root.verticalCenter
       x: 8
       color:"#00000000"
       visible : iconRight.visible

       MouseArea{
           anchors.fill: parent
           onPressed: iconLeftClicked()
           hoverEnabled: true

       }
       z: 1000

   }

   background: Rectangle{
      radius:10
      border.width: 1
      border.color: "#00263D"
      Component.onCompleted:{
          children.push(iconLeft)
          children.push(iconRight)
      }

   }
   placeholderTextColor:  "#888888"
   color:"black"
   verticalAlignment: TextInput.AlignVCenter
   font.pointSize: 14
   leftPadding: (iconLeft.visible ) ? iconLeft.width + 18: 8
   rightPadding: (iconRight.visible) ? iconRight.width + 18:8

    property var triggerIconLeftClick:function(){
        iconLeftClicked()
    }
   property var triggerIconRightClick:function(){
       iconRightClicked()
   }
}
