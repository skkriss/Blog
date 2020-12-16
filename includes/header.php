<?php
    include("includes/config.php");
    include("includes/db.php");
    $query="SELECT * FROM categories";
    $categories = $db->query($query);
?>

<!doctype html>
  <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>BLOG</title>
      <!-- Bootstrap core CSS -->
      <link href="css/bootstrap.css" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="css/blog.css" rel="stylesheet">
    </head>

    <body>
      <div class="container">
        <header class="blog-header py-3">
          <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-0 text-center">
              <a class="blog-header-logo text-dark" href="index.php">BLOG</a>
            </div>
          </div>
        </header>

        <div class="nav-scroller py-1 mb-2">
          <nav class="nav d-flex justify-content-between">
            <?php if($categories->num_rows > 0) { while($row = $categories->fetch_assoc()) { ?>
            <a class="p-2 link-secondary" href="index.php?category=<?php echo $row['id']?>"><?php echo $row['text']?></a>
            <?php } } ?>
          </nav>
        </div>
      </div>

      <main class="container">
        <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
          <div class=" px-0">
            <h1 class="display-4 font-italic">Jeżeli szukasz wiedzy z rónych języków programowania...</h1>
            <p class="lead my-3">Nie mogłeś lepiej trafić! Rozwiąż swój problem, na podstawie naszych artykułów!</p>
          </div>
        </div>


