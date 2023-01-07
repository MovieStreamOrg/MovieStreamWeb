import QtQuick 2.15

import Qt5Compat.GraphicalEffects
Item {
    enum FontType{
        Brands,
        Regular,
        Solid
    }
    id: root
    property string color
    property string resourceName
    property var fontType: FontAwesome.FontType.Regular
    Image{
        anchors.centerIn: parent
        id: icon
        width: parent.width
        height: parent.height
        source:{
            if(resourceName === "") return ;
            console.log(resourceName)
            console.log(fontType)
            switch(fontType){

            case FontAwesome.FontType.Brands:
                return "qrc:/assets/svgs/brands/"+resourceName+".svg"
            case FontAwesome.FontType.Regular:
                return "qrc:/assets/svgs/regular/"+resourceName+".svg"
            case FontAwesome.FontType.Solid:
                return "qrc:/assets/svgs/solid/"+resourceName+".svg"
            }
        }
        antialiasing: true
        visible: false

    }
    ColorOverlay{
        anchors.fill: icon
        source : icon
        color: root.color
        antialiasing: true
    }
}
