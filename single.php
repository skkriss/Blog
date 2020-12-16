<?php include("includes/header.php");
  if(isset($_GET['post'])) {
    $id = MySQLi_real_escape_string($db, $_GET['post']);
    $query = "SELECT * FROM posts WHERE id='$id'";
  }
  $posts = $db->query($query);
?>

  <div class="row">
    <div class="col-md-8"><br>

    <?php if($posts->num_rows > 0){ while($row = $posts->fetch_assoc()) { ?>
      <h3 class="pb-4 mb-4 font-italic border-bottom"></h3>
      <article class="blog-post">
        <h2 class="blog-post-title"><?php echo $row['title'];?></h2>
        <p class="blog-post-meta"><?php echo $row['date'];?> napisany przez <?php echo $row['author'];?></a></p>
        <?php echo $row['body'];?>
      </article><!-- /.blog-post -->
      <?php } } ?>

      <blockquote class="blog-post-title" >Komentarz:</blockquote>
      <div class="comment-area">
        <form>
        <div class="form-group">
            <input type="text" name="name" class="form-control" id="exampleInputEmail1" placeholder="Imię">
        </div><br>
        <div class="form-group">
            <input type="text" name="website" class="form-control" id="exampleInputEmail1" placeholder="Strona (opcjonalnie)">
        </div><br>
        <div class="form-group">
            <textarea cols="60" rows="10" name="comment" class="form-control" placeholder="Wiadomość"></textarea>
        </div><br>
        <button type="submit" name="post_comment" class="btn btn-primary">Publikuj</button><br><br>
        </form><br><br><hr>

        <div class="comment">
            <div class="comment-head">
            <a href="#">Mariusz</a>
            <img width="50" height="50" scr="img/first.png"/>
            </div>
            To komentarz!
        </div>

        <div class="comment">
            <div class="comment-head">
            <a href="#">Krzysiek</a>
            <img width="50" height="50" scr="img/second.png"/>
            </div>
            To kolejny komentarz!
        </div>

      </div>
    </div>

<?php include("includes/sidebar.php");?>
<?php include("includes/footer.php");?>
