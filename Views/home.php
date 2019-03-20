<div class="container">
    <?php if (isset($_SESSION["id"])) {?>
        <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">lánynéz</h5>
                <p class="card-text">pornótext.</p>
            </div>
        </div>
    <?php } ?>
    <br>
    <div class="container">
        <div class="jumbotron">
            <h4 class="text-center">At the moment your are not logged in! <br> Please login to view the page content!</h4>
            <a type="button" id="login" name="login" href="#" onclick="render('regilogin.php')" class="btn btn-primary btn-lg btn-block">Login!</a>

        </div>
         </div>
</div>