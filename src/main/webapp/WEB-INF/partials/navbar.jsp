<nav class="navbar navbar-default">
    <div class="container-fluid">
<%--        To dynamically render what the navbar display will depend on wether there is a session with the user object if there is not we will show login/register if there is we will show profile/logout--%>
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
