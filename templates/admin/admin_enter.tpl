<form action="<?=URL?>admin" method="post">
    <?php if($_POST['enter']):?>
        <h2 style="color: red;"><?=$Errors?></h2>
    <?php endif;?>
    <label>login</label>
    <input type="text" name="login"/><br/>
    <label>password</label>
    <input type="text" name="password"/>
    <button type="submit" name="enter" value="enter">enter </button>
</form>