## AWS Cloud Basic Tasks

This directory contains screenshots of completed **Cloud&DevOps Fundamentals Autumn 2022 AWS Cloud Basic** course.

Tasks 1..6 did not require screenshots and therefore do not have them.

In task 7 I've used t2.micro. I've tried to use CentOS, but Amazon informed me that "AMI image deployment is delayed... probably for an hour or so", so I was forced to fall back to Amazon Linux.

In task 13 I did not terminate the LightSail, as I still use it as a CNAME-hoster for subdomain "www.plibnik.pp.ua" of my domain "plibnik.pp.ua" that was registered in Task 12.
This subdomain links to the static web-site referred to in Task 18.

When detaching the disk in Task 11, I've performed forced detach intentionally, to try it on an instance that will be scrapped anyway.
Naturally, as a best practice I would umount the volume first!

All the screenshots for tasks 7..18 are located in the [following directory](https://github.com/plibnik/EPAM_homework_assignments/tree/main/AWS_Homework).

There are TWO links to the web-sites: [this is a simple Lightsail demo static site](http://plibnik.pp.ua/) left after Task 12.

And this [is a link to the website with my own photo, the name of the educational program (EPAM Cloud&DevOps Fundamentals Autumn 2022), the list of AWS services I've used] (http://www.plibnik.pp.ua/). This "www" subdomain is implemented with CNAME on Lightsail DNS from Task 12.