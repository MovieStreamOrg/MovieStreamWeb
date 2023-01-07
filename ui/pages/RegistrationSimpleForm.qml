import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/ui/views" as CustomView
ColumnLayout{
    spacing:5
    width: parent.width
    signal signup(type:int, message:string)
    signal signupCancel()
    height:{
        var myHeight= 0;
        for(var x =0; x < children.length; x++){
            myHeight+= children[x].height
            myHeight+=(spacing);


        }
        console.log(spacing);
        return myHeight;

    }
    clip:true

    CustomView.AppText{
        text: "NEW MEMBER REGISTRATION"
        font.pixelSize: 20
        font.weight: Font.ExtraBold
        font.family: "Arial"
        color:"#27AAE1"
        topPadding: 20

    }
   CustomView.AppTextInput{
        topMargin:10
        Layout.fillWidth: true
        height:48
        textHint:"Username"
        radius: 10
   }
   CustomView.AppTextInput{
        topMargin: 10
        Layout.fillWidth: true
        height:48
        isPassword: true
        textHint:"Password"
        radius: 10
   }
   CustomView.AppTextInput{
       topMargin: 10

       Layout.fillWidth: true
       height:48
       isPassword: true
       textHint:"Confirm Password"
       radius: 10
  }
   CustomView.AppTextInput{
       topMargin: 10

        Layout.fillWidth: true
        height:48
        textHint:"Email Address"
        radius: 10
   }
   RowLayout{
       anchors.right: parent.right
       Layout.fillHeight:true
       CustomView.AppButton{
            text:"Cancel"
            anchors.verticalCenter: parent.verticalCenter
            Layout.preferredWidth : 150
            Layout.preferredHeight:48
            typeButton:"secondary"
            onClick: signupCancel()

       }
       CustomView.AppButton{
            text:"Continue"
            anchors.verticalCenter: parent.verticalCenter
            Layout.preferredWidth : 150
            Layout.preferredHeight:48
            onClick:signup(0,"success")
       }
   }

}
