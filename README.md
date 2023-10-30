<h1>Filler Co. API</h1>
This API supports the questions and answers module for Filler Co. https://github.com/filler-co/FILLER
<h2>Application Overview</h2>
<h3>Description</h3>
 This application is a redesigned and improved version of Filler.co’s, an online retail storefront, API built with Node.js and express with a Postgres database.
 <h3>Development Process</h3>
 
   <h4>API & Databse Development</h4>
  After receiving hundreds of gigabytes of CSV client data from Filler.Co, I structured the Postgres schema to efficiently display and link data. Once data was loaded into their respective tables the API design began. I used Node.js and express to construct an efficient API that connected the new and improved database to Filler Co’s React based frontend using complex queries and logical & easy-to-use endpoints.
   <h4>Testing, Optimization, & Results</h4>
   Testing was done using k6 locally and loader.io post deployment. Prior to deployment the API boasted 900 requests per second with 150 ms of latency. After deployment using an AWS t.2 micro instance latency hovered around 300ms with 200 RPS. Finally after horizontal scaling the application using NGINX and deploying a second AWS micro instance, the API was able to reach 1500 RPS with < 50ms latency. This exceed the requirements originally set forth by Filler Co. by 40%

 <h3>Future Improvements</h3>
 In the future I would like to improve performance through vertical scaling by using a more powerful AWS server, and additionally refactoring some db queries to fetch data more efficiently.



<h2>Tech Stack</h2>
<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=nodejs,express,postgres,aws,nginx" />
  </a>
</p>
