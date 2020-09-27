<?php
require 'includes/header.php'
?>

<main>
<link rel="stylesheet" href="css/login.css">

    <div class="bg-cover">
        <div class="row">
            <div id="slides" class="carousel slide col-md-6 offset-md-3" data-ride="carousel" style="margin-top: 80px;">
                <ol class="carousel-indicators">
                    <li data-target="#slides" data-slide-to="0" class="active"></li>
                    <li data-target="#slides" data-slide-to="1"></li>
                    <li data-target="#slides" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/bracersDefense.jpeg" class="d-block mx-auto" alt="Bracers of Defense">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 style="color: black;">Bracers of Defense</h5>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/haversack.jpeg" class="d-block mx-auto" alt="Heward's Handy Haversack">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 style="color: black;">Heward's Handy Haversack</h5>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/periapt.jpeg" class="d-block mx-auto" alt="Periapt of Wound Closure">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 style="color: black;">Periapt of Wound Closure</h5>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#slides" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#slides" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="h-0 center-me">
            <div class="my-auto">
                <form class="form-signin" action="includes/login-helper.php" method="post" style="background: white;">
                    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                    <label for="inputEmail" class="sr-only">Username or Email address</label>
                    <input type="text" id="inputEmail" name="uname" class="form-control" placeholder="Username/Email" required
                        autofocus>
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" id="inputPassword" name="pwd" class="form-control" placeholder="Password" required>
                    <div class="checkbox mb-3">
                        <label>
                            <input type="checkbox" value="remember-me"> Remember me
                        </label>
                    </div>
                    <button class="btn btn-lg btn-success btn-block" name="login-submit" type="submit">Sign in</button>
                    <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>
                </form>
            </div>
        </div>
    </div>

</main>