<?php include("includes/header.php");
  if(isset($_GET['category'])) {
    $category = MySQLi_real_escape_string($db, $_GET['category']);
    $query = "SELECT * FROM posts WHERE category='$category'";
  } else { $query="SELECT * FROM posts"; }
  $posts = $db->query($query);
?>

  <div class="row">
    <div class="col-md-8">
      <?php if($posts->num_rows > 0){ while($row = $posts->fetch_assoc()) { ?>
      <h3 class="pb-4 mb-4 font-italic border-bottom"></h3>
      <article class="blog-post">
        <h2 class="blog-post-title"><?php echo $row['title'];?></h2>
        <p class="blog-post-meta"><?php echo $row['date'];?> napisany przez <?php echo $row['author'];?></a></p>
        <?php $body = $row['body']; echo substr($body, 0, 400) . "..."; ?>
        <a href="single.php?post=<?php echo $row['id']?>" class="btn btn-primary">Czytaj dalej</a>
      </article><!-- /.blog-post -->
      <?php } } ?>
    </div>

    <?php include("includes/sidebar.php");?>
    <?php include("includes/footer.php");?>
