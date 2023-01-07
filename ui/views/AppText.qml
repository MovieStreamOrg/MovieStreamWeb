import QtQuick 2.15
import views 1.0
Text{
    FontCollection{
        id: fontCollection
    }

    property FontCollection selectFont:fontCollection
    font.family: (selectFont.usedFont !== null) ?selectFont.usedFont : "Arial"
    color:"#24292e"
    font.pointSize: 12

}
