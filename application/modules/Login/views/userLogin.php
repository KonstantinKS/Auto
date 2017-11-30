<?php if(!empty($user_info)): ?>

    <div id="userWidget">
        <span>Привет, <?php echo $user_info; ?></span><br>        
        <button type="button" href="<?php echo base_url(); ?>user/logout" id="logout">Выйти</button>
    </div>
    
<?php else: ?>
    
    <?php echo validation_errors(); ?>
    <?php $attributes = array('role' => 'form', 'class' => 'login-form', 'id' => 'login-form'); ?>
    <?php echo form_open( '', $attributes) ?>
    	<div class="form-group">    
        	<input type="text" class="form-control" id="exampleInputlogin1" aria-describedby="emailHelp" name="login" placeholder="Ваш логин">    
      	</div>
      	<div class="form-group">    
        	<input type="password" class="form-control" id="exampleInputpass1" name="pass" placeholder="Ваш пароль">
      	</div>  
      	<button type="submit" class="btn btn-primary" id="signIn">Вход</button>
        <button type="submit" class="btn btn-primary" id="checkIn">Регистарация</button>
    <?php echo form_close(); ?>
    
<?php endif; ?>
    