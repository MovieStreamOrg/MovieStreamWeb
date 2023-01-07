import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import views 1.0
Frame{
    anchors.fill: parent
    leftPadding: 30
    rightPadding: 30
    id: root
    background:Rectangle{
        color:"#FFFFFF"
    }
    ColumnLayout{
        width: parent.width
        RowLayout{
            id: headerRow
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: 60
            Rectangle{
                Layout.fillWidth: true
                Layout.fillHeight: true
                RowLayout{
                    anchors.verticalCenter: parent.verticalCenter
                    AppText{
                        id:categoryText
                        text:"All Genre"
                        font.weight: Font.Bold
                    }
                    FontAwesome{
                        resourceName:"caret-down"
                        fontType : FontAwesome.FontType.Solid
                        color:"#00263D"
                        Layout.preferredWidth: 15
                        Layout.preferredHeight: 20
                    }
                    Rectangle{
                        Layout.preferredWidth: 50

                    }
                    AppText{
                        id: yearText
                        text:"All Time"
                        font.weight: Font.Bold
                    }
                    FontAwesome{
                        resourceName:"caret-down"
                        fontType : FontAwesome.FontType.Solid
                        color:"#00263D"
                        Layout.preferredWidth: 15
                        Layout.preferredHeight: 20
                    }
                }
            }
            Rectangle{
                Layout.fillWidth: true
                Layout.fillHeight: true
                AppTextInput{
                     width: 400
                     height: 48
                     anchors.verticalCenter: parent.verticalCenter

                     placeholderText:"Search Series or Movies"
                     Component.onCompleted: {
                         iconRight.visible = true
                         iconRight.resourceName="magnifying-glass"
                         iconRight.fontType = FontAwesome.FontType.Solid
                     }
                }

            }
            Rectangle{
                Layout.fillWidth: true
                Layout.fillHeight: true


            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: 1
            color: "#e8e8e8"
        }
        Flickable{
           Layout.fillWidth: true
           Layout.preferredHeight:  root.height - 61
            clip:true
           contentHeight: videoColumn.height
           ColumnLayout{
               id: videoColumn
               width: parent.width
               spacing: 20
                Flickable{
                    Layout.fillWidth: true
                    Layout.preferredHeight: 250
                    contentWidth: videoRowTop.width + 20
                    clip:true
                    RowLayout{
                        id: videoRowTop
                        spacing: 20
                        anchors.centerIn: parent
                       VideoItemTop{

                       }
                       VideoItemTop{

                       }
                       VideoItemTop{

                       }
                       VideoItemTop{

                       }
                    }
                }

                RowLayout{
                    Layout.fillWidth: true
                    spacing: 20
                    Rectangle{
                        Layout.fillWidth: true
                        Layout.preferredHeight:videoListing.height + 10
                        color:"#00000000"
                        ColumnLayout{
                            width: parent.width
                            id: videoListing
                            spacing: 10
                            AppText{
                                text:"Today's Trending"
                                font.bold: true
                            }

                            Flickable{
                               Layout.preferredWidth: parent.width
                               Layout.preferredHeight:  250
                               clip:true
                               contentWidth: trendingRow.width + 20
                               RowLayout{
                                   id: trendingRow
                                   spacing: 20
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                               }
                            }
                            AppText{
                                text:"Asian"
                                font.bold: true
                            }

                            Flickable{
                               Layout.preferredWidth: parent.width
                               Layout.preferredHeight:  250
                               clip:true
                               contentWidth: asianRow.width + 20
                               RowLayout{
                                   id: asianRow
                                   spacing: 20
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                               }
                            }

                            AppText{
                                text:"Western"
                                font.bold: true
                            }

                            Flickable{
                               Layout.preferredWidth: parent.width
                               Layout.preferredHeight:  250
                               clip:true
                               contentWidth: westernRow.width + 20
                               RowLayout{
                                   id: westernRow
                                   spacing: 20
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                               }
                            }

                            AppText{
                                text:"European"
                                font.bold: true
                            }

                            Flickable{
                               Layout.preferredWidth: parent.width
                               Layout.preferredHeight:  250
                               clip:true
                               contentWidth: europeanRow.width + 20
                               RowLayout{
                                   id: europeanRow
                                   spacing: 20
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                               }
                            }

                            AppText{
                                text:"Anime"
                                font.bold: true
                            }

                            Flickable{
                               Layout.preferredWidth: parent.width
                               Layout.preferredHeight:  250
                               clip:true
                               contentWidth: animeRow.width + 20
                               RowLayout{
                                   id: animeRow
                                   spacing: 20
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                                   VideoItem{

                                   }
                               }
                            }

                        }

                    }


                    ColumnLayout{
                        Layout.preferredWidth: 350
                        anchors.top: parent.top
                        spacing: 10
                        AppText{
                            text:"What's new"
                            font.bold: true
                        }

                    }

                }

           }


        }


    }

    /*
    ColumnLayout{
        width:parent.width
        height:parent.height
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: 80
            IconFont.FontAwesome{
                id: fontawesome
            }

            Rectangle{
                width: 450
                height:50
                id: rootRect
                color:"#000000"
                radius:10
                clip:true
                border.color: "#d8d8d8"
                border.width: 1
                RowLayout{
                    width: parent.width
                    height:parent.height
                    clip:true
                    CustomView.AppTextInput{
                        Layout.preferredWidth: 380
                        Layout.preferredHeight: 48

                        textHint: "Search"

                        id:search
                        borderColor: "#00000000"


                    }
                    CustomView.AppText{
                        Layout.preferredWidth:40
                        Layout.preferredHeight: 40

                        font.weight: Font.Bold
                        selectFont: {
                            return selectFont.fontAwesomeSolid.name
                        }
                        text: fontawesome.search
                    }
                }

            }



        }
        Flickable{
            Layout.fillHeight: true
            Layout.fillWidth: true
            flickableDirection: Flickable.VerticalFlick
            clip:true
            ColumnLayout{
                width: {
                    console.log(parent.width)
                    return parent.width
                }

                spacing:20
                CustomView.AppText{
                    font.pixelSize: 24
                    font.weight: Font.Bold
                    text:'New Releases'
                    color:"#27AAE1"
                }
                Rectangle{
                    Layout.fillWidth: true
                    Layout.preferredHeight: 240
                    clip:true
                    Flickable{
                        width:parent.width
                        height:parent.height

                        flickableDirection:  Flickable.HorizontalFlick
                        contentWidth: videoItems.width + 30
                        RowLayout{
                            spacing: 15
                            id: videoItems
                            CustomView.VideoItem{
                                   width: 150
                                   height:200
                               }
                            CustomView.VideoItem{
                                   width: 150
                                   height:200
                               }
                            CustomView.VideoItem{
                                   width: 150
                                   height:200
                               }
                            CustomView.VideoItem{
                                   width: 150
                                   height:200
                               }
                        }
                    }
                }
                CustomView.AppText{
                    font.pixelSize: 24
                    font.weight:  Font.Bold
                    text:"Currently watched"
                    color:"#27AAE1"
                }
                Rectangle{
                    Layout.fillWidth: true
                    Layout.preferredHeight: 350
                    CustomView.AlertBox{
                        width: 350
                        height:80
                        anchors.centerIn: parent
                        alertText:"Currently no item available"
                        alertType: 'warning'

                    }
                }
            }
        }
    }
    */


}
