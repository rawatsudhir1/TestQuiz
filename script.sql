Create Database [quizdb]
GOs
USE [quizdb]
GO

/****** Object:  Table [dbo].[quiz]    Script Date: 31/10/2019 6:16:27 pm ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz](
	[quizID] [int] NULL,
	[question] [varchar](max) NULL,
	[option1] [varchar](255) NULL,
	[option2] [varchar](255) NULL,
	[option3] [varchar](255) NULL,
	[option4] [varchar](255) NULL,
	[correctanswer] [varchar](255) NULL,
	[Area] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userreport]    Script Date: 31/10/2019 6:16:27 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userreport](
	[reportid] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [varchar](max) NULL,
	[finalscore] [decimal](18, 2) NULL,
	[starttime] [datetime] NULL,
	[finishtime] [datetime] NULL,
	[totaltimetaken] [time](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (1, N'Select Devops Tools', N'Docker', N'Jenkin', N'Puppet', N'All', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (2, N'Devops Benefits ?', N'Increase deployment frequency', N'Lower failure rate of new releases', N'Faster mean time to recovery', N'All', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (3, N'What is full form of Devops', N'Development and Operations', N'Deployment Operations', N'Development Cycle', N'Devlopment and Deployment', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (4, N'Where the first conference named devopsdays was held in ?', N'New Zealand', N'Ghent, Belgium', N'Africa', N'Singapore', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (5, N'Azure Devops is ?', N'IaaS', N'PaaS', N'SaaS', N'None', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (6, N'When is the first conference named devopsdays was held', N'2009', N'2006', N'2008', N'2005', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (7, N'Founder of DORA (DevOps Research and Assessment) ?', N'Nicole Forsgren', N'Jez Humble', N'Gene Kim', N'All', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (8, N'When DORA (DevOps Research and Assessment) Founded? ', N'2012', N'2015', N'2013', N'2014', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (9, N'When Microsoft renamed Visual Studio Team Services (VSTS) to Azure DevOps Services', N'Sep 2018', N'Nov 2018', N'Sep 2017', N'Nov 2017', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (10, N'VSTS Feature Build & release is _______ in Azure Devops', N'Azure Repos', N'Azure Test Plans', N'Azure Pipelines', N'Azure Artifacts', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (11, N'VSTS Feature Code is _______ in Azure Devops', N'Azure Pipelines', N'Azure Boards', N'Azure Test Plans', N'Azure Repos', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (12, N'VSTS Feature Work	 is _______ in Azure Devops', N'Azure Artifacts', N'Azure Boards', N'Azure Repos', N'Azure Pipelines', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (13, N'VSTS Feature Test is _______ in Azure Devops', N'Azure Test Plans', N'Azure Boards', N'Azure Repos', N'Azure Pipelines', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (14, N'VSTS Feature Test Packages (extension) is _______ in Azure Devops', N'Azure Test Plans', N'Azure Artifacts', N'Azure Boards', N'Azure Repos', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (15, N'Can I use visualstudio.com to access Azure DevOps Services?', N'No', N'Sometime', N'Yes', N'Migrate First', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (16, N'In Git command line, how to Update a remote', N'git remote update url', N'git remote add name url', N'git remote update-url name url', N'git remote set-url name url', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (17, N'How to delete the Git repo and history, but keep the current version of the files', N'Delete the hidden .git folder', N'Delete the folder containing your repo', N'git delete repo ', N'Not applicable', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (18, N'In Git command line, How to create a repo in a new folder', N'git add foldername', N'git clone foldername', N'git init foldername', N'git commit foldername', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (19, N'Which one is distributed source control in Azure DevOps', N'Git', N'Team Foundation Version Control', N'Both', N'None', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (20, N'_____ Used to visualize and manage the flow of work as it moves from beginning, to in-progress, to done.', N'Sprint backlogs', N'Task board', N'Kanban', N'Product backlog', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (21, N'______ Used during daily Scrum meetings to review work that''s completed, remaining, or blocked.', N'Sprint backlogs', N'Task board', N'Kanban', N'Product backlog', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (22, N'_________ enable you to complete tasks on other services when events happen within your project hosted on Azure DevOps.', N'Service Hook', N'Event Trigger', N'Event Hook', N'Service Trigger', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (23, N'_____ doesn''t support integration with SQL Server Analysis Services to support reporting.', N'Azure DevOps Server', N'Azure DevOps Services', N'Both', N'None', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (24, N'With Azure DevOps Services, you authenticate with', N'Microsoft Account', N'Azure AD', N'None', N'Both', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (25, N'When you''re starting out with Azure DevOps, begin with _________ organization', N'None', N'One', N'Two', N'Three', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (26, N'A ____ is a unit that supports many team-configurable tools, which help you plan and manage work, and make collaboration easier.', N'Project', N'Organization', N'Team', N'Module', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (27, N'A project in Azure DevOps contains the following set of feature(s)', N'Boards and backlogs for agile planning', N'Pipelines for CI/CD', N'None', N'Both', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (28, N'Recommendation is to use a ______ repo within a trusted organization', N'Forked', N'Shared', N'Neither', N'Either', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (29, N'Use ____ repo, when you''re working with vendor teams that shouldn''t have direct access to update the main repository', N'Forked', N'Shared', N'Neither', N'Either', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (30, N'_______, Stakeholders can respond to feedback requests for user stories and features created in Azure DevOps', N'Microsoft Feedback Client', N'Azure Test Plans', N'Test & Feedback extension', N'None', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (40, N'A ____ is a container for a number of projects in Azure DevOps', N'Organization', N'Collection', N'Artifact', N'Repo', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (41, N'Git command to create a new commit', N'git submit -c "message"', N'git -new commit "message"', N'git commit -m "message"', N'git commit -s -m "message"', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (42, N'Git command to stage a specific file change', N'git create filemname', N'git stage filename', N'git stage -f filename', N'git add filename', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (43, N'Git command to delete a file', N'git rm filename', N'git delete filename', N'git remove filename -c', N'git -r filename -commit', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (44, N'Git command to Tag a commit', N'git -t tagname -m "desc"', N'git tag -a tagname -m "desc"', N'git -tag tagname commit', N'git tag -commit -m "desc"', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (45, N'Git command to Compare the current contents of a single file and the contents in the last commit', N'git diff filename', N'git diff -HEAD filename', N'git diff HEAD filename', N'git diff -H filename', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (46, N'Git command to compare changes between two branches', N'git -diff branch1 branch2', N'git -d branch1 branch2', N'git diff -s branch1 -d branch2', N'git diff branch1 branch2', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (47, N'____ are user-configurable interactive signboards that provide real-time information.', N'Dashboards', N'Collections', N'Extensions', N'Favorites', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (48, N'____ are artifacts that you define to run concurrent builds or deploy concurrent releases.', N'Plans', N'Pipelines', N'Notifications', N'Process', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (49, N'____  a source control folder or container you configure to help you track file changes in.', N'Queries', N'Taskboard', N'Repositories', N'Projects', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (50, N'To delete manual test results after a specific number of days, set the retention limit at the ____', N'Organization Level', N'Repository Level', N'Plan Level', N'Project Level', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (31, N'Git command to create a new branch?', N'git branch branchname', N'git create branchname', N'git checkout branchname', N'git new branchname', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (32, N'To include mathematical notation, surround the mathematical notation with a ____ sign', N'@', N'$', N'*', N'%', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (33, N'Git command to delete untracked files', N'git delete -f', N'git remove -f', N'git clean -f', N'git clean -hard', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (34, N'How to use emojis to add character and react to comments in the request?', N'-smile-', N':)', N'=smile=', N':smile:', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (35, N'Git command to revert all changes and roll back to the most recent commit', N'git reset --hard HEAD', N'git replace --hard HEAD', N'git reset hard HEAD', N'git reset --fixed HEAD', N'A', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (36, N'Git command to merge a branch into the current branch', N'git merge -l branchname -r branchname', N'git merge branchname', N'git merge -local branchname', N'git local -merge branchname', N'B', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (37, N'Git command to merge updates from a remote repo into your local repo', N'git remote branchname', N'git pull -r branchname', N'git pull remote branchname', N'git remote -p branchname', N'C', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (38, N'Git command to create and switch to a new branch?', N'git create branchname -switch', N'git -create branchname switch branchname', N'git new branchname -switch', N'git checkout -b branchname', N'D', N'devops')
INSERT [dbo].[quiz] ([quizID], [question], [option1], [option2], [option3], [option4], [correctanswer], [Area]) VALUES (39, N'Git command to delete a remote branch', N'git push origin --delete branchname', N'git delete branchname -remote', N'git -remote delete branchname', N'git -delete -remote branchname', N'A', N'devops')
