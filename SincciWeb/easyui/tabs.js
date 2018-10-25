/*
Author��ׯ���
Date��2012.3.22 22��31
*/
 
 
/*
* view(url) ��layout�д�ҳ��
*/
function view(url) {
    $('#iframe').attr('src', url);
}

/*
*���ѡ�����
*/
function addTab(title, url) {

    // �ж�title���� ����9���ֵ�..���档
    if (title.length > 9) {
        title = title.substring(0, 9) + "..";
    }


    //���ж��Ƿ���ڱ���Ϊtitle��ѡ�
    var tab = $('#tt').tabs('exists', title);
    if (tab) {
        //�����ڣ���ֱ�Ӵ�
        $('#tt').tabs('select', title);


    } else {
        //���򴴽�
        $('#tt').tabs('add', {
            iconCls: "icon-tabtitle",
            title: title,
            content: createTabContent(url) , //"<iframe width='100%' height='100%'  id='iframe' frameborder='0' scrolling='auto'  src='" + url + "'></iframe>",
            closable: true

        });
    }

}


/* ���ɱ�ǩ���� */
function createTabContent(url) {
    return '<iframe style="width:100%;height:100%;"   id="iframe" scrolling="auto" frameborder="0" src="' + url + '"></iframe>';
}


/*
*����title,ѡ��Accordion��Ӧ�����
*/
function selectAccordion(title) {
    //   $("#accordionPanel").accordion({ animate: false });
    $('#accordionPanel').accordion('select', title);


}



//    /*
//    *�����������ڴ�С�ı�,���ı�ҳ��layout��С
//    */
//    $(function () {
//        $(window).resize(function () {
//            $('#cc').layout('resize');
//        });
//    });


$(function () {
    $("#btn").click(function (e) {
        $('#menu').menu('show', {
            left: e.pageX,
            top: e.pageY
        });
    });
});

  

/* ���½ǵ�����ʾ��   */
function show(title, msg, timeout, showType) {
    $.messager.show({
        title: title,          //��ʾ����
        msg: msg,              //��ʾ����
        timeout: timeout,      // ����0��Ϣ���ڽ������Զ��رա�5000����5��
        showType: showType     //null,slide,fade,show  ��ͬ����Ч��
    });
}

/* ���½ǵ�����ʾ�� ���� */

/**/

//    function TDOverOROut(iname) {
//        document.getElementById(iname).className = "table_none";
//    }
//    function TDOverORIn(iname) {
//        document.getElementById(iname).className = "table_body";
//    }

/**/




$(function () {

    //ˢ��
    $("#m-refresh").click(function () {
        var currTab = $('#tt').tabs('getSelected'); //��ȡѡ�еı�ǩ��
        //  alert(currTab);
        var url = $(currTab.panel('options').content).attr('src'); //��ȡ��ѡ������ݱ�ǩ��iframe���� src ����
        // alert(url);
        /* �������øñ�ǩ */
        $('#tt').tabs('update', {
            tab: currTab,
            options: {
                content: createTabContent(url)   //createTabContent(url)
            }
        })
    });

    //�ر�����
    $("#m-closeall").click(function () {
        $(".tabs li").each(function (i, n) {
            var title = $(n).text();
            $('#tt').tabs('close', title);
        });
    });

    //����ǰ֮��ر�����
    $("#m-closeother").click(function () {
        var currTab = $('#tt').tabs('getSelected');
        currTitle = currTab.panel('options').title;

        $(".tabs li").each(function (i, n) {
            var title = $(n).text();

            if (currTitle != title) {
                $('#tt').tabs('close', title);
            }
        });
    });

    //�رյ�ǰ
    $("#m-close").click(function () {
        var currTab = $('#tt').tabs('getSelected');
        currTitle = currTab.panel('options').title;
        $('#tt').tabs('close', currTitle);
    });
});



$(function () {
    /*Ϊѡ����Ҽ�*/
    $(".tabs li").live('contextmenu', function (e) {

        /* ѡ�е�ǰ�����¼���ѡ� */
        var subtitle = $(this).text();
        $('#tt').tabs('select', subtitle);

        //��ʾ��ݲ˵�
        $('#menu').menu('show', {
            left: e.pageX,
            top: e.pageY
        });

        return false;
    });
});
     