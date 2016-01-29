<?php if($_POST['enter']):?>
    <h1 style="text-danger"><?=$Errors?></h1>
<?php endif;?>
<div class="row">
    <div class="sign-in">
        <form class="form-horizontal" action="<?=URL?>admin" method="post">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Login</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="login" name="login">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="password" name="password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="form-control btn btn-default" name="enter" value="enter">Sign in</button>
                </div>
            </div>
        </form>
    </div>
</div>