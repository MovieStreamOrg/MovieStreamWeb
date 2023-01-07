import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Layouts
import "qrc:/ui/views" as CustomView
import "qrc:/ui/views/iconfont" as IconFont
Frame{
    IconFont.FontAwesome{
        id:fontawesome
    }

    anchors.fill: parent
    id: homeFrame
    signal newPageRequest(pageFile:string)
    background:Rectangle{
        width:homeFrame.width
        height:homeFrame.height
        Image{
                width:parent.width*1.2
                height:parent.height*1.2
                source: "qrc:/assets/images/movieposter.jpg"
                transform: Rotation{ origin.x:-1000; origin.y:850; angle:-5}
                fillMode: Image.PreserveAspectCrop
                id:frameBg
                smooth: true
                visible:false

            }
            FastBlur{
                anchors.fill: frameBg
                source: frameBg
                radius:15
            }
    }
    padding:0

    Rectangle{
        width:parent.width
        height:parent.height
        color:"#50000000"
        Frame{
            anchors.centerIn: parent
            width:500
            height:700
            clip:true
            background: Rectangle{
                width: parent.width
                height: parent.height
                color:"#FFFFFF"
                radius: 4
            }
            ColumnLayout{
                width: parent.width
                Rectangle{
                    Layout.fillWidth: true
                    width:parent.width
                    height:200
                    id:parentRect
                    Image{
                        anchors.horizontalCenter: parent.horizontalCenter
                            width: 240
                            height:parent.height
                            fillMode: Image.PreserveAspectFit
                            source: "qrc:/assets/images/film.svg"
                        }

                }
                CustomView.AppText{
                    text:"MOVIE STREAM"

                    font.family: font.Helvetica
                    font.weight: Font.ExtraBold
                    Layout.fillWidth :true
                    font.pixelSize: 24
                    horizontalAlignment:  Text.AlignHCenter
                    font.letterSpacing: 2.4
                    font.pointSize: 24
                    font.wordSpacing: 10
                }
                CustomView.AppText{
                    text: "Enjoy thousand of movies and tv shows on the go"
                    wrapMode: "WordWrap"
                    Layout.fillWidth: true
                    horizontalAlignment: "AlignHCenter"

                }
                Loader{
                    Layout.fillWidth: true
                    id:mainStack

                    function onLogin(err,message){
                        newPageRequest("qrc:/ui/pages/Dashboard.qml")
                    }
                    function onSignupContinue(err, message){
                        console.log(message);
                    }
                    function onCancel(){
                        mainStack.source = "qrc:/ui/pages/LoginForm.qml"
                        mainStack.item.signup.connect(onSignup)

                    }

                    function onSignup(){
                        mainStack.source= "qrc:/ui/pages/RegistrationSimpleForm.qml"
                        mainStack.item.signup.connect(onSignupContinue)
                        mainStack.item.signupCancel.connect(onCancel)


                    }

                    Component.onCompleted: {

                        mainStack.source = "qrc:/ui/pages/LoginForm.qml"
                        mainStack.item.signup.connect(onSignup)
                        mainStack.item.login.connect(onLogin)

                    }

                }
            }


        }

    }
}
