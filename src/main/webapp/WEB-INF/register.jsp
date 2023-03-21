<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%--    <jsp:include page="partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Register For Our Site!" />--%>
<%--    </jsp:include>--%>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .toast {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 9999;
            display: none;
        }
    </style>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
<%--    <div class="flex min-h-full items-center justify-center py-12 px-4 sm:px-6 lg:px-8">--%>
<%--        <div class="w-full max-w-md space-y-8">--%>
<%--            <div>--%>
<%--                <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Register</h2>--%>
<%--            </div>--%>
<%--            <form class="mt-8 space-y-6" action="#" method="POST">--%>
<%--                <input type="hidden" name="remember" value="true">--%>
<%--                <div class="-space-y-px rounded-md shadow-sm">--%>
<%--                    <div>--%>
<%--                        <label for="username" class="sr-only">Username</label>--%>
<%--                        <input id="username" name="username" type="text" required class="relative block w-full rounded-t-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:z-10 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Username">--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <label for="email" class="sr-only">Email</label>--%>
<%--                        <input id="email" name="email" type="email" required class="relative block w-full rounded-t-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:z-10 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Email">--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <label for="password" class="sr-only">Password</label>--%>
<%--                        <input id="password" name="password" type="password" required class="relative block w-full rounded-t-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:z-10 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Password">--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <label for="confirm_password" class="sr-only">Confirm Password</label>--%>
<%--                        <input id="confirm_password" name="confirm_password" type="password" autocomplete="current-password" required class="relative block w-full rounded-b-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:z-10 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Confirm Password">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <button type="submit" class="group relative flex w-full justify-center rounded-md bg-indigo-600 py-2 px-3 text-sm font-semibold text-white hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">--%>
<%--          <span class="absolute inset-y-0 left-0 flex items-center pl-3">--%>
<%--            <svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">--%>
<%--              <path fill-rule="evenodd" d="M10 1a4.5 4.5 0 00-4.5 4.5V9H5a2 2 0 00-2 2v6a2 2 0 002 2h10a2 2 0 002-2v-6a2 2 0 00-2-2h-.5V5.5A4.5 4.5 0 0010 1zm3 8V5.5a3 3 0 10-6 0V9h6z" clip-rule="evenodd" />--%>
<%--            </svg>--%>
<%--          </span>--%>
<%--                      Register--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="md:grid md:grid-cols-3 md:gap-6">--%>
<%--        <div class="mt-10 sm:mt-0">--%>
<%--            <div class="md:grid md:grid-cols-3 md:gap-6">--%>
<%--                <div class="md:col-span-1">--%>
<%--                    <div class="px-4 sm:px-0">--%>
<%--                        <h3 class="text-base font-semibold leading-6 text-gray-900">Personal Information</h3>--%>
<%--                        <p class="mt-1 text-sm text-gray-600">Use a permanent address where you can receive mail.</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="mt-5 md:col-span-2 md:mt-0">--%>
<%--                    <form action="#" method="POST">--%>
<%--                        <div class="overflow-hidden shadow sm:rounded-md">--%>
<%--                            <div class="bg-white px-4 py-5 sm:p-6">--%>
<%--                                <div class="grid grid-cols-6 gap-6">--%>
<%--                                    <div class="col-span-6 sm:col-span-3">--%>
<%--                                        <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">First name</label>--%>
<%--                                        <input type="text" name="first-name" id="first-name" autocomplete="given-name" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6 sm:col-span-3">--%>
<%--                                        <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">Last name</label>--%>
<%--                                        <input type="text" name="last-name" id="last-name" autocomplete="family-name" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6 sm:col-span-4">--%>
<%--                                        <label for="email-address" class="block text-sm font-medium leading-6 text-gray-900">Email address</label>--%>
<%--                                        <input type="text" name="email-address" id="email-address" autocomplete="email" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6 sm:col-span-3">--%>
<%--                                        <label for="country" class="block text-sm font-medium leading-6 text-gray-900">Country</label>--%>
<%--                                        <select id="country" name="country" autocomplete="country-name" class="mt-2 block w-full rounded-md border-0 bg-white py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                            <option>United States</option>--%>
<%--                                            <option>Canada</option>--%>
<%--                                            <option>Mexico</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6">--%>
<%--                                        <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Street address</label>--%>
<%--                                        <input type="text" name="street-address" id="street-address" autocomplete="street-address" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6 sm:col-span-6 lg:col-span-2">--%>
<%--                                        <label for="city" class="block text-sm font-medium leading-6 text-gray-900">City</label>--%>
<%--                                        <input type="text" name="city" id="city" autocomplete="address-level2" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6 sm:col-span-3 lg:col-span-2">--%>
<%--                                        <label for="region" class="block text-sm font-medium leading-6 text-gray-900">State / Province</label>--%>
<%--                                        <input type="text" name="region" id="region" autocomplete="address-level1" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>

<%--                                    <div class="col-span-6 sm:col-span-3 lg:col-span-2">--%>
<%--                                        <label for="postal-code" class="block text-sm font-medium leading-6 text-gray-900">ZIP / Postal code</label>--%>
<%--                                        <input type="text" name="postal-code" id="postal-code" autocomplete="postal-code" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">--%>
<%--                                <button type="submit" class="inline-flex justify-center rounded-md bg-indigo-600 py-2 px-3 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500">Save</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>


    <div class="hidden sm:block" aria-hidden="true">
        <div class="py-5">
            <div class="border-t border-gray-200"></div>
        </div>
    </div>

    <div class="mt-10 sm:mt-0">
        <div class="md:grid md:grid-cols-3 md:gap-6">
            <div class="md:col-span-1">
                <div class="px-4 sm:px-0">
                    <h3 class="text-base font-semibold leading-6 text-gray-900">Profile Information</h3>
                    <p class="mt-1 text-sm text-gray-600">Sign up to start adding ads to our amazing app.</p>
                </div>
            </div>
            <div class="mt-5 md:col-span-2 md:mt-0">
                <form action="#" method="POST">
                    <div class="overflow-hidden shadow sm:rounded-md">
                        <div class="bg-white px-4 py-5 sm:p-6">
                            <div class="grid grid-cols-6 gap-6">
                                <div class="col-span-6 sm:col-span-3">
                                    <label for="username" class="block text-sm font-medium leading-6 text-gray-900">Username</label>
                                    <input type="text" name="username" id="username" autocomplete="username" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                </div>

                                <div class="col-span-6 sm:col-span-3">
                                    <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email address</label>
                                    <input type="text" name="email" id="email" autocomplete="email" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                </div>

                                <div class="col-span-6 sm:col-span-6 lg:col-span-3">
                                    <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Password</label>
                                    <input type="text" name="password" id="password" autocomplete="password" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                </div>


                                <div class="col-span-6 sm:col-span-6 lg:col-span-3">
                                    <label for="confirm_password" class="block text-sm font-medium leading-6 text-gray-900">Confirm Password</label>
                                    <input type="text" name="confirm_password" id="confirm_password" autocomplete="confirm_password" class="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                </div>

                            </div>
                        </div>
                        <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
                            <button type="submit" class="inline-flex justify-center rounded-md bg-indigo-600 py-2 px-3 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>




    <script>

<%--        This will be the function that will show the toast --%>
        function showToast() {
            document.getElementById('toast').style.display = 'block';
        }
<%--       This will be the function that will close the toast --%>
        function closeToast() {
            document.getElementById('toast').style.display = 'none';
        }

        <c:if test="${not empty error}">
        // Automatically show the toast when there is an error
        showToast();
        </c:if>
    </script>

</body>
</html>
