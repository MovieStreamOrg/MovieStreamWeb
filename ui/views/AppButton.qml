import QtQuick 2.15
import QtQuick.Controls
Button{
    readonly property string normalColor: "#27AAE1"
    readonly property string secondaryColor:"#00263D"
    readonly property string errorColor:"#880000"
    property string typeButton:"primary"
    signal click()
    topPadding:5
    bottomPadding:5
    leftPadding:10
    rightPadding:10
    font.family: "Arial"
    font.pixelSize: 16
    palette.buttonText: "#FFFFFF"
    background:Rectangle{
        width:parent.width
        height:parent.height
        radius : 8
        color:{
            if(typeButton === "primary"){
                return normalColor;
            }else if(typeButton ==="secondary"){
                return secondaryColor;
            }else if(typeButton == "error"){
                return errorColor;
            }else{
                return normalColor;
            }
        }

    }
    onClicked: click()

}
