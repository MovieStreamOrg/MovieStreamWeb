import QtQuick 2.15

Item {
    id: fonts
        readonly property FontLoader fontAwesomeRegular: FontLoader{
            source:"qrc:/assets/fonts/fa-regular-400.ttf"
        }
        readonly property FontLoader fontAwesomeSolid: FontLoader{
            source: "qrc:/assets/fonts/fa-solid-900.ttf"
        }
        readonly property FontLoader fontAwesomeBrand: FontLoader{
            source: "qrc:/assets/fonts/fa-brands-400.ttf"
        }
        readonly property FontLoader fontv4Compat: FontLoader{
            source: "qrc:/assets/fonts/fa-v4compatibility.ttf"
        }
        readonly property FontLoader heleveticaNueMedium: FontLoader{
        source:"qrc:/assets/fonts/HelevitcaNueueMedium.ttf"
    }
    readonly property FontLoader helveticaNeu:FontLoader{
        source :"qrc:/assets/fonts/HelveticaNeue.ttf"
    }
    readonly property FontLoader helveticaNeuBd:FontLoader{
        source :"qrc:/assets/fonts/HelveticaNeueBd.ttf"
    }

     property string usedFont
}
