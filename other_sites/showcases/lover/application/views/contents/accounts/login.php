<form method="post">
    <p><?php echo isset($error)?$error:''?></p>
    Username: <input type="text" name="username" value="<?php echo $username?>">
    Password: <input type="password" name="password" value="">
    <input type="submit" name="submit" value="Submit"/>
</form>
