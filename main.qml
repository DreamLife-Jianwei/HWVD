import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:root
    visible: true
    width: 480
    height: 480
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"
    Image {
        id: back
        source: "qrc:/image/Image/back.png"
    }
    Image {
        id: mPeople
        x:186
        y:213
        width: 108
        height: 120
        source: "qrc:/people/Image/human (2).jpg"
    }
    onSceneGraphInitialized:
    {
        mTimer.start();
    }
    property string peopleurl :  "qrc:/people/Image/human ("
    property int peopleindex : 2;
    Timer
    {
        id:mTimer
        repeat: true
        interval: 25

        onTriggered:
        {
            peopleindex = peopleindex + 1
            if(peopleindex === 61)
            {
                peopleindex = 2
            }
            mPeople.source = peopleurl + peopleindex + ").jpg"
            mTime.text = Qt.formatDateTime(new Date(),"hh:mm")
            mTimess.text = Qt.formatDateTime(new Date(),"ss")
        }
    }
    Text {
        id: mTime
        y:120
        x:90
        text: Qt.formatDateTime(new Date(),"hh:mm")
        font.family: "DigifaceWide"
        font.letterSpacing: -5
        font.weight: Font.Light
        font.pointSize: 60
    }

    Text {
        id: mTimess
        anchors.bottom: mTime.bottom
        anchors.bottomMargin: 10
        anchors.left: mTime.right
        anchors.leftMargin: 5
        text: Qt.formatDateTime(new Date(),"ss")
        font.family: "DigifaceWide"
        font.letterSpacing: -2
        font.weight: Font.Light
        font.pointSize: 26
    }
    Text {
        id: mYear
        x:340
        y:285
        text: Qt.formatDateTime(new Date(),"dddd\r\nMM-dd")
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 15
    }

    Text {
        id: mHeart
        x:118
        y:326
        text:"93"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 18
    }

    Text {
        id: mHeartHL
        x:75
        y:300
        text:"66-123"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 14
    }


    Text {
        id: mHFoot
        x:340
        y:328
        text:"8869"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 18
    }




    Text {
        id: mSleep
        x:180
        y:368
        font.bold: true
        font.wordSpacing: 10
        font.letterSpacing: 1
        text:"8h36m"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 18
    }


    Text {
        id: mDistance
        x:200
        y:410
        font.bold: true
        font.wordSpacing: 10
        font.letterSpacing: 1
        text:"9.36Km"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 18
    }


    Text {
        id: mAir
        x:215
        y:50
        font.bold: true
        text:"空气优质"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 12
    }

    Text {
        id: mWeather
        anchors.left: mAir.left
        anchors.top: mAir.bottom
        anchors.topMargin: 5
        font.bold: true
        text:"晴天"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 12
    }

    Image {
        id: mWeatherpic
        x:318
        y:75
        width: 40
        height: 40
        source: "qrc:/image/Image/other2.png"
    }



    Text {
        id: mTemperatureH
        x:260
        y:72
        font.bold: true
        text:"26℃"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 12
    }
    Text {
        id: mTemperatureL
        x:260
        y:95
        font.bold: true
        text:"17℃"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 12
    }

    Text {
        id: mTemperatureCurrent
        anchors.left: mWeather.left
        anchors.bottom: mTemperatureL.bottom
        font.bold: true
        text:"22℃"
        font.family: "黑体"
        font.weight: Font.Light
        font.pointSize: 12
    }


    Text {
        id: mRocket
        x:120
        y:85
        font.bold: true
        text:"88%"
        font.family: "黑体"
        font.weight: Font.Normal
        font.pointSize: 20
    }


    MouseArea
    {
        anchors.fill: parent

        property int m_x : 0;
        property int m_y : 0;

        onPressed:
        {
            m_x = mouse.x;
            m_y = mouse.y;
        }

        onPositionChanged:
        {
            /*
              实现窗口拖船，移动
             */
            root.x = root.x + mouse.x - m_x
            root.y = root.y + mouse.y - m_y
        }

    }
}
