<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <h1>Welcome to 99cats.com, <%= @user.name %>!</h1>
    <p>
      You have successfully signed up to 99cats.com.
      Your username is: <%= @user.login %>.<br />
    </p>
    <p>
      To log in to the site, just follow this link: <%= @url %>.
    </p>
    <p>Thanks for joining and have a great day!</p>
  </body>
</html>