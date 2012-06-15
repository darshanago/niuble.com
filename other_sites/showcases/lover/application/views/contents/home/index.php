<div id="postArea">
    <ul id="typeSelector" class="clearfix">
        <?php foreach($types as $type):?>
            <li>
                <p class="type" style="<?php echo $type->style->container?>">
                    <?php echo $type->name?>
                <p>
            </li>
        <?php endforeach;?>
    </ul>
    <div id="textArea">
        <input type="text" name="message" id="send_message"/>
    </div>
    <div class="clearfix">
        <input type="submit" value="post" id="submit_post"/>
    </div>
</div>
