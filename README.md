#Special MileStone for DevOps
In the special milestone, we integrate a code review component by using ReviewBoard in the pipeline. The overview is shown as below:
<img src="pics/overall.png"/>
##Continuous Integration Pipeline
The pipeline is composed of XX parts:
* A developer makes changes to a develop branch
* The changes is built and tested in Jenkins
* If the change passes the test, it will be pushed into the production branch; otherwise, it is declined
* The changes is also reviewed by code reviewers

###Jenkins Configuration

###Rspec & Cucumber

####Rspec

####Cucumber
Cucumber is a flagship Behavior Driven Development (BDD) tool. Behavior Driven Development (BDD) is a rising methodology to test and check your code. In BDD, whatever developers write must go into Given-When-Then steps, and thus covers all possible test cases and can be easily modified to accommodate more. 

Executing a Cucumber test scenario requires two files. Feature file contains high level description of the test scenario in simple language. Step definition file contains the actual code to execute the test scenario in the Features file.

An example feature file:

	Feature: Home Dashboard 
  
		Scenario: Jobseeker Login
			Given I'm on the home page
			When I go to Job Seeker Login
			Then I should see Emails and Password are required to log in as a job seeker

An example step file:

	Given /^I'm on the home page$/ do
		visit ('/')
	end
	When /^I go to Job Seeker Login$/ do
  		visit ('/users/sign_in')
	end
	Then /^I should see Emails and Password are required to log in as a job seeker$/ do
		page.should have_content("Job Seeker Log in")
		page.should have_content("Email")
		page.should have_content("Password")
		page.should have_content("Log in")
	end

####Test Coverage 
SimpleCov

###Static Analysis Tool

####

###Code Review
#### ReviewBoard
Review Board is a tool for reviewing source code, documentation and other text-based files. It offers a powerful web-based interface with broad browser support for managing review requests and reviewing code, as well as command line tools to simplify the review request submission process.

In this project, we config ReviewBoard to support post-commit review. Post-commit review is where the code is reviewed after going into the codebase. The code is committed to the repository and, at some point later, the code is reviewed. Any fixes that need to be made are then committed again later.

##### Add Repositories

Click the Add link next to the Repositories entry in the database section or the Administrator Dashboard. Fill in:

	Name: DireWolf
	Hosting service: GitHub
	Account: Jessexu20
	Repository type: Git
	Repository plan: Public
	Repository name: DireWolf
