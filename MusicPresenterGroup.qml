import QtQuick 2.9

Item {

    id: root
    property int  groupID: 0
    property ListModel presenterModel: ListModel{}

    Component.onCompleted: {
        createGroup(root.groupID)
    }

    function createGroup(i)
    {
        switch(i)
        {
        case 0: createGroup_1()
            break
        case 1: createGroup_2()
            break
        case 2: createGroup_3()
            break
        case 3: createGroup_4()
            break
        case 4: createGroup_5()
            break
        case 5: createGroup_6()
            break
        case 6: createGroup_7()
            break
        case 7: createGroup_8()
            break
        case 8: createGroup_9()
            break

        }
    }

    function createGroup_1()
    {
        //        presenterModel.clear()
        presenterModel.append([
                                  {"presenterId":0,
                                      "xPos" : theFrame.edgePixelLength /2,
                                      "yPos" : theFrame.edgePixelLength/2}
                              ])
    }

    function createGroup_2()
    {
        for (var i = 0; i < 8; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(40,Math.PI / 4 * i),
                                      "yPos" : y_polarToCatersian(40,Math.PI / 4  * i)})
        }
    }

    function createGroup_3()
    {
        for (var i = 0; i < 16; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(80,Math.PI / 8 * i),
                                      "yPos" : y_polarToCatersian(80,Math.PI / 8  * i)})
        }
    }

    function createGroup_4()
    {
        for (var i = 0; i < 32; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(110,Math.PI / 16 * i),
                                      "yPos" : y_polarToCatersian(110,Math.PI / 16  * i)})
        }
    }

    function createGroup_5()
    {
        for (var i = 0; i < 12; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(150 ,Math.PI / 6 * i + (Math.PI /12)),
                                      "yPos" : y_polarToCatersian(150,Math.PI / 6 * i + (Math.PI /12))})
        }
    }

    function createGroup_6()
    {

    }

    function createGroup_7()
    {
        for (var i = 0; i < 16; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(180 ,Math.PI / 8 * i ),
                                      "yPos" : y_polarToCatersian(180,Math.PI / 8 * i )})
        }
    }

    function createGroup_8()
    {
        for (var i = 0; i < 8; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(220,Math.PI / 4 * i),
                                      "yPos" : y_polarToCatersian(220,Math.PI / 4  * i)})
        }
    }

    function createGroup_9()
    {
        for (var i = 0; i < 8; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(50,Math.PI / 4 * i),
                                      "yPos" : y_polarToCatersian(50,Math.PI / 4  * i)})
        }
        for ( i = 0; i < 16; i++)
        {
            presenterModel.append({"presenterId":i,
                                      "xPos" : x_polarToCatersian(90,Math.PI / 8 * i),
                                      "yPos" : y_polarToCatersian(90,Math.PI / 8  * i)})
        }
    }

    function x_polarToCatersian(r, angle)
    {

        return r * Math.cos(angle) + theFrame.edgePixelLength /2
    }

    function y_polarToCatersian(r, angle)
    {

        return r * Math.sin(angle) + theFrame.edgePixelLength /2
    }



    MusicPresensterFrame{

        id: theFrame

        Repeater{
            id: groupRepeater
            model: presenterModel

            delegate: MusicPresensterElement
            {
                presenterId: presenterId
                x: xPos
                y: yPos
            }
        }
    }

    ListModel{
        id: presenterGroupData

    }

}



