<h2>Create a news item</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('register/create_user') ?>

  <label for="username">Username</label> 
  <input type="input" name="username" /><br />

  <label for="password">Password</label>
  <input name="password" /><br />
  
  <input type="submit" name="submit" value="Create news user" /> 

</form>