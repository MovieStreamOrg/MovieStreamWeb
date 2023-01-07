import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import views 1.0
Rectangle{
    anchors.fill: parent
    color:"#9Fd0d0"
    Frame{
         padding:20
         width: parent.width
         height:parent.height
         background: Rectangle{
             width:parent.width
             height:parent.height
             color:"#00000000"
         }

         RowLayout{
             width: parent.width
             height:parent.height
             spacing:0
             Frame{
                 Layout.preferredWidth: 250
                 Layout.fillHeight: true
                 padding:0
                 topPadding:20
                 bottomPadding:20

                 background:Rectangle{
                     color:"#00000000"


                 }

                 ColumnLayout{
                     width: parent.width
                     id:mainNav
                     property var linkChanged: function(item) {
                        for(var i=0; i< children.length; i++){
                            if(children[i] instanceof Navigation){
                                if(children[i].isActive){
                                    children[i].isActive=false;
                                }
                            }

                        }
                        item.isActive=true;
                     }
                      Rectangle{
                         anchors.horizontalCenter: parent.horizontalCenter
                          Layout.preferredWidth: 100
                          Layout.preferredHeight: 100
                          radius:10
                          color:"#d8d8d8"
                      }


                      AppText{
                           Layout.fillWidth: true
                           color:"#00263D"
                           text:"Account Name"
                           horizontalAlignment:  "AlignHCenter"
                           font.weight: Font.Bold

                      }
                      AppText{
                          Layout.fillWidth: true
                          color:"#00263D"
                          text:"username@email.com"
                          font.pixelSize: 12
                          horizontalAlignment:  "AlignHCenter"
                      }
                      Rectangle{
                          Layout.fillWidth: true
                          Layout.preferredHeight:  50
                          color:"#00000000"
                      }

                      Navigation{
                          Layout.fillWidth: true
                          leftRadius:10
                          color:"#FFFFFF"
                          Layout.preferredHeight: 30
                          isActive:true
                          text:"Explore"
                          onLinkClicked:(item)=>mainNav.linkChanged(item)

                      }
                      Rectangle{
                          Layout.fillWidth: true
                          Layout.preferredHeight:  10
                          color:"#00000000"
                      }
                      Navigation{
                          Layout.fillWidth: true
                          leftRadius:10
                          color:"#FFFFFF"
                          Layout.preferredHeight: 30
                          isActive:false
                          text:"TV show"
                          onLinkClicked:(item)=>mainNav.linkChanged(item)


                      }


                      Rectangle{
                          Layout.fillWidth: true
                          Layout.preferredHeight:  10
                          color:"#00000000"
                      }
                      Navigation{
                          Layout.fillWidth: true
                          leftRadius:10
                          color:"#FFFFFF"
                          Layout.preferredHeight: 30
                          isActive:false
                          text:"Movies"
                          onLinkClicked:(item)=>mainNav.linkChanged(item)


                      }
                      Rectangle{
                          Layout.fillWidth: true
                          Layout.preferredHeight:  10
                          color:"#00000000"
                      }
                      Navigation{
                          Layout.fillWidth: true
                          leftRadius:10
                          color:"#FFFFFF"
                          Layout.preferredHeight: 30
                          isActive:false
                          text:"Settings"
                          onLinkClicked:(item)=>mainNav.linkChanged(item)


                      }
                      Rectangle{
                          Layout.fillWidth: true
                          Layout.preferredHeight:  10
                          color:"#00000000"
                      }

                      Navigation{
                          Layout.fillWidth: true
                          leftRadius:10
                          color:"#FFFFFF"
                          Layout.preferredHeight: 30
                          isActive:false
                          text:"Admin"
                          onLinkClicked:(item)=>mainNav.linkChanged(item)
                      }
                      Rectangle{
                          Layout.fillWidth: true
                          Layout.preferredHeight:  10
                          color:"#00000000"
                      }
                      Navigation{
                          Layout.fillWidth: true
                          leftRadius:10
                          color:"#FFFFFF"
                          Layout.preferredHeight: 30
                          isActive:false
                          text:"Logout"
                          onLinkClicked:(item)=>mainNav.linkChanged(item)


                      }

                 }
             }
             Frame{
                 Layout.fillHeight: true
                 Layout.fillWidth: true
                 padding:20
                 clip:true
                 background:Rectangle{
                        width: parent.width
                        height:parent.height
                        radius:10
                 }
                 StackView{
                     id:mainStack
                     width:parent.width
                     height:parent.height
                     initialItem:"qrc:/pages/Explore.qml"
                 }
             }
         }
    }



}
