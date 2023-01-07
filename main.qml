import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Loader{
        id: mainLoader
        width: parent.width
        height:parent.height
        function onPageRequest(pageFile){
            mainLoader.source= pageFile
        }

        Component.onCompleted: {
            mainLoader.source = "qrc:/pages/Dashboard.qml" //"qrc:/ui/pages/LoginCheckPoint.qml"
            //mainLoader.item.newPageRequest.connect(onPageRequest)
        }



    }


}
