<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Please Log In" />--%>
<%--    </jsp:include>--%>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="flex min-h-full items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
    <div class="w-full max-w-md space-y-8">
        <div>
            <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Sign in to your account</h2>
        </div>
        <form class="mt-8 space-y-6" action="#" method="POST">
            <input type="hidden" name="remember" value="true">
            <div class="-space-y-px rounded-md shadow-sm">
                <div>
                    <label for="username" class="sr-only">Username</label>
                    <input id="username" name="username" type="username" required class="relative block w-full rounded-t-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:z-10 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Username">
                </div>
                <div>
                    <label for="password" class="sr-only">Password</label>
                    <input id="password" name="password" type="password" autocomplete="current-password" required class="relative block w-full rounded-b-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:z-10 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Password">
                </div>
            </div>
            <div>
                <button type="submit" class="group relative flex w-full justify-center rounded-md bg-indigo-600 py-2 px-3 text-sm font-semibold text-white hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">
          <span class="absolute inset-y-0 left-0 flex items-center pl-3">
            <svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
              <path fill-rule="evenodd" d="M10 1a4.5 4.5 0 00-4.5 4.5V9H5a2 2 0 00-2 2v6a2 2 0 002 2h10a2 2 0 002-2v-6a2 2 0 00-2-2h-.5V5.5A4.5 4.5 0 0010 1zm3 8V5.5a3 3 0 10-6 0V9h6z" clip-rule="evenodd" />
            </svg>
          </span>
                    Sign in
                </button>
            </div>
        </form>
    </div>
</div>

<%--<div class="flex min-h-full items-center justify-center py-12 px-4 sm:px-6 lg:px-8">--%>
<%--    <div class="w-full max-w-md space-y-8">--%>
<%--            <h1>Please Log In</h1>--%>
<%--            <form action="/login" method="POST" class="mt-8 space-y-6">--%>
<%--                <div class="-space-y-px rounded-md shadow-sm">--%>
<%--                    <div>--%>
<%--                        <label class="sr-only" for="username">Username</label>--%>
<%--                        <input class="sr-only" id="username" name="username" class="form-control" type="text">--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <label for="password">Password</label>--%>
<%--                        <input  placeholder="Password"  id="password" name="password" class="form-control" type="password">--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        --%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <input type="submit" class="btn btn-primary btn-block" value="Log In">--%>
<%--            </form>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
</html>
