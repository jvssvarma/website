## Click here to see the stack for this space. [![StackShare](http://img.shields.io/badge/tech-stack-0690fa.svg?style=flat)](http://stackshare.io/jvssvarma/my-tools)


###Planning my application

	1. What am I building?
	   I am building a informational or learning website. A place where one can write articles on using ruby GEMS in RAILS application
		 and also basic guides to get started with rails.

	2. Who am I building it for?
	   We are building it for ourselves, but also the community. Sharing what we learn and help others learn.

	3. What features do I want?
		- articles
			- Create / Edit / Destroy
			- Markdown
			- Syntax highlighting
			- Comments (Disqus)
			- Vote like/dislike (acts_as_votable)
			- Images
		- guides
			- Create / Edit / Destroy
			- Suggestions as Comments (Disqus)
		- Contact & Newsletter Sign up
			- Contact form
			- Sendgrid
		- About Page (optional)
		- User/Admin access (Devise)

#User Stories
	As Admin,
	- I want ability to create, edit, delete articles and guides.
	- I want articles to be in a proper markdown format separating code and text.
	- I want the ability to highlight the syntax of code blocks.
	- I want to show my work as examples to visitors or potential employers.
	- I want visitors to contact me on through form on my site.
	- I want visitors to be able to leave comments on my guides or articles.

	As User,
	- I want ability to read, comment & share articles.
	- I want to contact the admin directly.


#Modeling data
	- articles Model
		title:string
		content:text
		images

	- guides Model
		title:string
		description:text
		helpful_links: text
		references: text

#Pages in the application
	- Home/Index
	- articles#show
	- articles#index
	- guides#index
	- guides#show
	- About (optional)
	- Contact
	- Newsletter
