import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import "qrc:/ui/views" as CustomViews
import "qrc:/ui/views/iconfont" as IconFont
Frame{
    property string alertType:'info'
     readonly property string borderColor:{
        if(alertyType === "info"){
            return "#b6effb";
        }else if(alertType == "success"){
            return "#badbcc";
        }else if(alertType == "error"){
            return "#f5c2c7";
        }else if(alertType == "warning"){
            return "#ffecb5";
        }
    }
    readonly property string backgroundColor:{
        if(alertType === "info"){
            return "#cff4fc";
        }else if(alertType == "success"){
            return "#d1e7dd";
        }else if(alertType == "error"){
            return "#f8d7da";
        }else if(alertType == "warning"){
            return "#fff3cd";
        }
    }
    readonly property string textColor:{
        if(alertType === "info"){
            return "#055160";
        }else if(alertType == 'success'){
            return "#0f5132";
        }else if(alertType == "error"){
            return "#842029";
        }else if(alertType == "warning"){
            return "#664d03";
        }
    }

    readonly property string iconText:{
        if(alertType === "info"){
            return fontawesome.info
        }else if(alertType == 'success'){
            return fontawesome.success
        }else if(alertType == "error"){
            return fontawesome.error
        }else if(alertType == "warning"){
            return fontawesome.warning
        }
    }
    property string alertText
    id:root
    padding: 20
    background:Rectangle{
        radius: 10
        color:backgroundColor

        border.width: 1
        border.color:  borderColor
    }

    IconFont.FontAwesome{
        id: fontawesome
    }

    RowLayout{
        anchors.fill: parent
        Rectangle{
            Layout.preferredWidth: 40
            Layout.preferredHeight: parent.height
            color:"#00000000"
            CustomViews.AppText{
                  selectFont: {
                      return selectFont.fontAwesomeSolid.name
                  }
                  anchors.centerIn: parent
                  font.weight: Font.Bold
                  text:iconText
                  color:textColor
            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color:"#00000000"
            CustomViews.AppText{
                anchors.verticalCenter: parent.verticalCenter
                 color: textColor
                 text:root.alertText
            }
        }
    }


}
