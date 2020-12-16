<?php include("includes/header.php");
  if(isset($_POST['search-button'])) {
    $search = MySQLi_real_escape_string($db, $_POST['search']);
    $sql = "SELECT * FROM posts WHERE title LIKE '%$search%' OR date LIKE '%$search%' OR body LIKE '%$search%' OR author LIKE '%$search%' OR keywords LIKE '%$search%'";
    $result = MySQLi_query($db, $sql);
    $queryResult = MySQLi_num_rows($result);
  }
  ?>

  <div class="row">
    <div class="col-md-8">
      <?php if($queryResult > 0) { while($row = MySQLi_fetch_assoc($result)) { 
        echo "Twoje wyszukiwania " .$queryResult. " ! ";?>
        <h3 class="pb-4 mb-4 font-italic border-bottom"></h3>
          <article class="blog-post">
            <h2 class="blog-post-title"><?php echo $row['title'];?></h2>
            <p class="blog-post-meta"><?php echo $row['date'];?> napisany przez <?php echo $row['author'];?></a></p>
            <?php $body = $row['body']; echo substr($body, 0, 400) . "..."; ?>
            <a href="single.php?post=<?php echo $row['id']?>" class="btn btn-primary">Czytaj dalej</a>
          </article>
      <?php } } else { echo "Brak wyników wyszukiwania!"; } ?>
    </div>

    <?php include("includes/sidebar.php");?>
    <?php include("includes/footer.php");?>
