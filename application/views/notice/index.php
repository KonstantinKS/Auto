<section class="notice col-xs-12 col-md-12">

	<div id="notice" class="ma5slider anim-vertical loop-mode hidden-navs hidden-dots">
        <div class="slides">
        	
            <?php array_unshift($notice, array_pop($notice)); ?>
			
			<?php foreach ($notice as $k=>$n) : ?>
            	<div>
                	<h3><?php echo $n['name']; ?></h3>
                    <p class="text"><?php echo $n['text']; ?></p>
                    <p class="counter">Просмотров - <?php echo $n['counter']; ?></p>
                    <p class="date"><?php echo $n['date']; ?></p>
                </div>
            <?php endforeach; ?>
           
        </div>
    </div>
   
</section>


