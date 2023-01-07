import QtQuick
import QtQuick.Layouts
import views 1.0
import QtQuick.Controls
ColumnLayout{
    spacing: 5
    width:parent.width
    signal login(res:int , message:string)
    signal signup();


   AppText{
        text: "MEMBER'S LOGIN"
        font.pixelSize: 20
        font.weight: Font.ExtraBold
        font.family: "Arial"
        color:"#27AAE1"
        topPadding: 20

    }
   AppTextInput{
        topMargin:10
        Layout.fillWidth: true
        height:48
        textHint:"Username"
        radius: 10
   }
   AppTextInput{
        topMargin: 10
        Layout.fillWidth: true
        height:48
        isPassword: true
        textHint:"Password"
        radius: 10
   }
   Frame{

       Layout.fillWidth:true
       Layout.preferredHeight: 96
       background:Rectangle{
           width:parent.width
           height:parent.height
           color: "#00000000"
       }
       CustomView.AppButton{
           anchors.centerIn: parent
           text: "Login"
           width:180
           height:48
           onClicked: login(0,'success')
       }
   }
   Rectangle{
       Layout.fillWidth:  true
       Layout.preferredHeight: 1
       color: "#a8d8d8"

   }
   AppText{
       Layout.fillWidth: true
       horizontalAlignment: Text.AlignHCenter
       text:  "Or login with"
   }
   Rectangle{
       Layout.fillWidth: true
       height: 96
       RowLayout{

           spacing: 30
           anchors.centerIn: parent
           CustomView.AppText{
               Component.onCompleted: {
                   selectFont.usedFont = selectFont.fontAwesomeBrand.name
               }
                text:fontawesome.facebook
                font.pixelSize: 30
                color:"#2962ff"
           }
           CustomView.AppText{
                Component.onCompleted: {
                    selectFont.usedFont = selectFont.fontAwesomeBrand.name

                }
                text:fontawesome.google
                font.pixelSize: 30
                color: "#008800"
           }
           CustomView.AppText{
               Component.onCompleted: {
                   selectFont.usedFont = selectFont.fontAwesomeBrand.name

               }
               text:fontawesome.apple
               font.pixelSize: 35
               color:"#222222"
           }

       }
   }
   Rectangle{
       Layout.fillHeight: true
       Layout.fillWidth: true

       CustomView.AppText{
            anchors.bottom: parent.bottom
            textFormat:"RichText"
            text:"New to moviestream? <a href='#signup'>Click here</a>"
            onLinkActivated: signup();
       }
   }





}
