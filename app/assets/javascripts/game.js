$(document).bind("mobileinit", function() {
    // disable ajax nav
    $.mobile.ajaxEnabled=false
});

function check_before_submit_game()
{
    if ( !(  $.trim($('#game_player1').val()).length
        && $.trim($('#game_player2').val()).length
        && $.trim($('#game_player3').val()).length
        && $.trim($('#game_player4').val()).length
        && $.trim($('#game_chipCount').val()).length
        && $.trim($('#game_price').val()).length) ){
        alert("所有字段都不能为空");
        return false;
    }

    var pattern = new RegExp("^[0-9]+$");
    if (!(    pattern.test($('#game_chipCount').val())
           && pattern.test($('#game_price').val())
        )) {
        alert("牌数和每张牌单价必须为整数");
        return false;
    }

    return true;
}

function account()
{
    //alert("account");
    $('#account_row').css('display','');
}

function account2()
{
    //判断已经计算过金额
    if ($('tr:last > td').html() === '金额'){
        alert('已经结算过了');
        return;
    }

    //获取表格的最后一行来得到最终的成绩
    var grades = $('tr:last > td').map( function (i, item) {return $(item).html()} );

    //获取牌局的单价
    var price = 5;

    //计算金额
    grades[0] = '金额';
    for(var i = 1; i < 5; i++){
        grades[i] = parseInt(grades[i]) * 5;
    }
    console.log(grades);
    //将4个金额组合成一行插入到表格的最后一行
    var new_row = $('<tr>')[0];
    grades.each( function(i, item) { new_row.appendChild($('<td>').html(item)[0]) });
    console.log(new_row);

    $('#game')[0].appendChild(new_row);
}

$('#account_link').on('click', function(){
    alert("account");
    $('#account_row').show();
});