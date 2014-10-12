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

    //获取表格的最后一行来得到最终的成绩

    //获取牌局的单价

    //计算金额

    //将4个金额组合成一行插入到表格的最后一行


}