# Radcircle Peak
__This section should contain the purpose / intent of Radcircle Peak__

## Development Notes

### 5/25/14 - AUSTIN
- Installed devise- have not done anything with it yet
- Created a basic blogging system
  - only create, read, seee all posts
  - take a look at the model to see all the parts, for simplicity and quick testing, 
    I did not deal with all parts of the form.  changing

### 6/2/14
- Added Show and edit functionality on Posts
	
### 6/8/2014
- Returned to commit a somewhat working user class:
  - Built on devise User, has ability to create posts. The user is prompted at 
    sign up to provide an email, prname ("profile name"), and password. All posts 
    made by said will be automatically attributed to said user.
  - Built a comment system, again utilizing the devise user system:
	  - Allow for general comments to be amde on a post, which belongs to said post.
		- The comments are not being saved, however, more work is necessary to bring this 
      up and running.
	- Installed an Admin account => not much has been done
		- need to better define the roles and differences between users, authors 
      (i imagine this will be some simple extension of users), and then admins
  	- need a signout button
	- NOTES:
		There is of course much left to do, but the basics of the blog system is about 
    complete. Need to discuss further the roles of accounts and get a clear 
    understanding of what functionality we want to provide on each level (including 
    a visitor with no account).


### 6/22/2014
- Rome notes before launching prealpha:
  - The purpose of launching the prealpha is to learn how to deploy to a server, 
    so i am less worried about the complete-ness of the code we lauch and more 
    worried about learning from the process, so i will limit the number of things 
    a user may have access too for this small launch
  - I cannot get "therubyracer" gem to work and cannot, therefore, do any test on 
    this code... at least for tonight (22:33 Central time)
  - Features of the prealpha:
    - Visiting the front page to see the posts from our engineers eagerly working at the launch
    - A user clicks into a post and sees the necessary information only
      - I will be temporarily disabling some parts of the show.html.erb
      - posts in order to make for a cleaner experience for the engineering blog 
        (just commenting it out)
    - The user can choose to comment on a post made by us
    - That is the extent of the user experience
    - An author can log in to make a post
    - An admin can log in to delete posts

### 6/2/14 - mo [testing branch]
- this lets us work on the code if we all have branches.. we can work on code 
  and then submit pull requests and then pull the code into the codebase.

### 6.2.14 - mo testing again master instead of branch
