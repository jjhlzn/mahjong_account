function check_before_submit()
{
    var pattern = new RegExp("^(-|\\+)?[0-9]+$");
    if ( ! ( pattern.test($('#round_player1Win').val())
        && pattern.test($('#round_player2Win').val())
        && pattern.test($('#round_player3Win').val())
        && pattern.test($('#round_player4Win').val()) ) ) {
        alert("牌数必须是数字");
        return false;
    }

    var player1Win = parseInt( $('#round_player1Win').val() );
    var player2Win = parseInt( $('#round_player2Win').val() );
    var player3Win = parseInt( $('#round_player3Win').val() );
    var player4Win = parseInt( $('#round_player4Win').val() );

    if (player1Win + player2Win + player3Win + player4Win > 0) {
        alert("赢的牌数多了");
        return false;
    } else if (player1Win + player2Win + player3Win + player4Win < 0){
        alert("输的牌数多了");
        return false;
    }

    return true;
}