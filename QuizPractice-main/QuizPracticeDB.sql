USE [master]
GO
/****** Object:  Database [QuizPractice]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE DATABASE [QuizPractice]
go
USE [QuizPractice]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[typeID] [int] NULL,
	[author] [int] NOT NULL,
	[time] [smalldatetime] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[status] [smallint] NOT NULL,
	[content] [text] NOT NULL,
	[modifier] [int] NULL,
	[description] [text] NULL,
	[image] [nvarchar](300) NULL,
 CONSTRAINT [PK_198] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NOT NULL,
	[s_id] [int] NOT NULL,
	[received_day] [smalldatetime] NOT NULL,
	[status] [smallint] NOT NULL,
	[result] [float] NOT NULL,
	[cer_image] [nvarchar](300) NULL,
	[description] [nvarchar](500) NULL,
	[content] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_370] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataByTime]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataByTime](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Scope] [varchar](20) NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NULL,
	[Week] [int] NULL,
	[Day] [int] NULL,
	[Total_User] [int] NOT NULL,
	[Total_Subject] [int] NOT NULL,
	[Total_Earning] [int] NOT NULL,
	[Total_Quizz] [int] NOT NULL,
	[Total_Registered] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[div]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[div](
	[div_id] [nvarchar](50) NOT NULL,
	[img] [nvarchar](300) NULL,
	[page_id] [int] NOT NULL,
	[content] [nvarchar](500) NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_261] PRIMARY KEY CLUSTERED 
(
	[div_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[exam_id] [int] NOT NULL,
	[u_id] [int] NOT NULL,
	[s_id] [int] NOT NULL,
	[level] [nvarchar](50) NULL,
	[created_date] [smalldatetime] NOT NULL,
	[number_of_question] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[pass_rate] [smallint] NOT NULL,
	[duration] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[l_id] [int] NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[no] [int] NOT NULL,
	[video] [nvarchar](300) NULL,
	[image] [nvarchar](300) NULL,
	[content] [text] NOT NULL,
	[description] [text] NULL,
	[status] [smallint] NOT NULL,
	[references] [nvarchar](500) NULL,
	[documents] [nvarchar](500) NULL,
	[topic_id] [int] NOT NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_414] PRIMARY KEY CLUSTERED 
(
	[l_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonTopic]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonTopic](
	[name] [nvarchar](500) NOT NULL,
	[s_id] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[topic_id] [int] IDENTITY(1,1) NOT NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_373] PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[h_id] [int] IDENTITY(1,1) NOT NULL,
	[time] [smalldatetime] NOT NULL,
	[OS] [nvarchar](50) NULL,
	[browser] [nvarchar](50) NULL,
	[u_id] [int] NOT NULL,
 CONSTRAINT [PK_183] PRIMARY KEY CLUSTERED 
(
	[h_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](30) NOT NULL,
	[Description] [nchar](225) NOT NULL,
	[Time] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[page_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[modyfier_id] [int] NOT NULL,
	[description] [nvarchar](500) NULL,
	[status] [smallint] NOT NULL,
	[createTime] [smalldatetime] NULL,
 CONSTRAINT [PK_202] PRIMARY KEY CLUSTERED 
(
	[page_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PricePackage]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricePackage](
	[price_id] [int] NOT NULL,
	[s_id] [int] NOT NULL,
	[price] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[currency_unit] [nvarchar](50) NOT NULL,
	[discount] [int] NULL,
	[description] [nvarchar](500) NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_369] PRIMARY KEY CLUSTERED 
(
	[price_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionBank]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionBank](
	[question] [nvarchar](500) NOT NULL,
	[level] [nvarchar](10) NOT NULL,
	[result] [nvarchar](1000) NOT NULL,
	[l_id] [int] NOT NULL,
	[image] [nvarchar](300) NULL,
	[description] [nvarchar](500) NULL,
	[b_id] [int] IDENTITY(1,1) NOT NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_438] PRIMARY KEY CLUSTERED 
(
	[b_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionChoices]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionChoices](
	[QuestionId] [int] NOT NULL,
	[Option] [nvarchar](1000) NOT NULL,
	[createdTime] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[q_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[required_time] [nvarchar](50) NULL,
	[taken_date] [smalldatetime] NOT NULL,
	[score] [float] NOT NULL,
	[status] [smallint] NOT NULL,
	[condition] [smallint] NOT NULL,
	[time] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_367] PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizTaken]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizTaken](
	[b_id] [int] NOT NULL,
	[q_id] [int] NOT NULL,
	[user_result] [nvarchar](500) NULL,
	[status] [smallint] NOT NULL,
	[taken_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_469] PRIMARY KEY CLUSTERED 
(
	[taken_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[name] [nvarchar](50) NOT NULL,
	[typeID] [int] NOT NULL,
	[instructor_id] [int] NOT NULL,
	[description] [nvarchar](500) NULL,
	[status] [smallint] NOT NULL,
	[image] [nvarchar](300) NULL,
	[organization] [nvarchar](50) NULL,
	[logo] [nvarchar](300) NOT NULL,
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_199] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectCategory]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectCategory](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [smallint] NOT NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_352] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectRegister]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectRegister](
	[regis_id] [int] IDENTITY(1,1) NOT NULL,
	[price_id] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[register_date] [smalldatetime] NOT NULL,
	[u_id] [int] NOT NULL,
 CONSTRAINT [PK_468] PRIMARY KEY CLUSTERED 
(
	[regis_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectType]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectType](
	[name] [nvarchar](50) NOT NULL,
	[cat_id] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[createdTime] [smalldatetime] NULL,
 CONSTRAINT [PK_357] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/7/2021 7:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[status] [smallint] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[birth] [smalldatetime] NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
	[phone] [nvarchar](20) NULL,
	[avatar] [nvarchar](300) NULL,
	[email] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[address] [nvarchar](100) NULL,
	[visa] [nvarchar](50) NULL,
	[paymentMethod] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[sign] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[school] [nvarchar](50) NULL,
	[createdTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_182] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (1, N'The Largely Untold Story Of How One Guy In California Keeps The World’s Computers On The Right Time Zone.', NULL, 2, CAST(N'2021-10-10T00:00:00' AS SmallDateTime), N'sharing', 1, N'I run a small YouTube channel.
And now and again, I record short videos documenting how to “do” certain things using Linux.
I make them as much for myself as for my 300-odd subscribers.
Because Linux, or rather doing things with it, tends to … you know … be quite complicated. And I can’t always remember how I got X to work three months later.
It’s nice to create documentation I can refer back to and it’s even better if others find it interesting as they occasionally tell me they do. But, for now at least, that’s about all there is to it.
Yesterday evening, I recorded a short video describing how to look up the time zone database (tzdb) to find the right way to denote the time zone on a certain world clock program (gworldclock). I wasn’t expecting that the video would give Netflix a run for its money. It hasn’t. But it has brought me into contact with a world so wonderfully weird that it could well the stuff of fiction. Thankfully it isn’t.
As most techies know, time zone setting is a fairly elementary feature of computing which most operating systems bake into their graphical user interfaces (GUI). Time zones are attached to locales. Setting a locale is often done on the basis of rough geolocation which users can manually override. Once set, users typically never need to change it unless they move countries. “Ah, I see Paul has been up to his usual tinkering” might be a clever excuse for being late to a Zoom meeting. But it would very seldom be a truthful one (Eggert, the world time zone coordinator, will be introduced later).
Linux, of course, tends to excel in letting users jump under the bonnet and denote changes themselves. That’s largely why I, and many, love it. So we get to see from a closer distance exactly how all this arcane technology works.', 2, N'Down the rabbit hole: my brief odyssey into the esoteric world of the tight-knit time zone data maintenance community who quietly keep the world’s computers from avoiding DST-related-meltdowns', N'https://resources.stuff.co.nz/content/dam/images/1/d/y/g/p/n/image.related.StuffLandscapeSixteenByNine.620x349.1dygvy.png/1473035461586.jpg')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (2, N'Effective Educational Software for Students', 6, 2, CAST(N'2021-10-03T00:00:00' AS SmallDateTime), N'learning', 1, N'Technology has impacted every sector, including the education sector. In recent times, there has been a growth in education software as well as sites that teach about different subject matters (Udemy, Coursera, etc).

Education software isn’t complex. It’s any computer software that is made with the intention of teaching or for the intention of educational software. Education software has its application on a broad range.

It can be free software for students, used to teach students or software made to assist certain target groups such as visually impaired students or software used for classroom management.

Now that we know what education software is, let’s have a look at the what is educational software.

Types of educational software
There are many different types of educational software, but for now, we shall focus on the software as a learning tool. With this in mind, here are the types of educational software:

Utility Software
Let’s start the list with utility software. This educational software is geared towards teachers that don’t have a good grasp of technology. The software is made easy to use and can assist a teacher with preparing quizzes, tests and can also act as a grade book if needed.

Authoring Systems
This software is used by teachers who want to create their own learning material for their students. Let’s face facts, some textbooks are not written in a manner that makes it easy for students to digest the material.

With an authoring system, a teacher can make multimedia content such as images, flash cards and more to simplify the content for the students to learn.', 2, N'Technology has impacted every sector, including the education sector. In recent times, there has been a growth in education software as well as sites that teach about different subject matters (Udemy, Coursera, etc).', N'https://content.thriveglobal.com/wp-content/uploads/2018/10/parents_teaching_kids_online.jpg')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (3, N'7 Key Points to Know for Developing a Multilingual Website', 4, 22, CAST(N'2020-08-14T00:00:00' AS SmallDateTime), N'sharing', 1, N'Appropriate the UI for Right-to-Left Languages
When designing a website for multilingual content, you should consider right-to-left (RTL) languages. Arabic languages will require you to appropriate your web design to accommodate their content. Users who prefer using their native Arabic languages on your website will be extremely happy with your foresight. On the other hand, left-to-right (LTR) speakers like those from the West will be none the wiser since pages in those languages won’t be affected.

2Culturally Neutral Multimedia is Important
Once you decide that your website will be multilingual, you should be mindful of your multimedia going forward. Choosing the right visuals and videos for your website can present a localization problem depending on your site’s purpose on the market. It might be a good idea to use stock photography with neutral images, lacking any culture-specific clothing or appearances. It’s very easy to drive away users with poorly chosen multimedia on a multilingual website, so take the time to curate yours thoroughly.

3Think About Font Compatibility Upfront
Font compatibility is an essential part of what makes web design for multilingual pages tricky. To avoid any practical issues, you should use Google Fonts and its alternatives to choose the fonts to use on your site. This will ensure that any font you choose does indeed display different alphabets and special characters properly. Based on W3, it’s best to use fonts with UTF-8 encoding from the moment you create original content in your CMS. Most importantly, drawing fonts from cloud resources will let you change them easily going forward.', 22, N'Developing a multilingual website is somewhat more complex than designing one solely in English for obvious reasons. However, with User Experience (UX) at the forefront of modern design trends, multilingual content has become a necessity for good SEO ranking and brand recognition.', N'https://th.bing.com/th/id/R.55c0601f814d7c4874472c03610f77b3?rik=n%2bup8ODeXneRXQ&pid=ImgRaw&r=0')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (4, N'Email Tracking in the Business Environment — Tool Capabilities', 8, 26, CAST(N'2021-09-30T00:00:00' AS SmallDateTime), N'other', 1, N'Internet marketing for B2B has several features: low traffic, high average check, long sales cycle, and prohibitive rates in contextual advertising. Therefore, Internet marketers working in B2B have to maintain the highest possible quality of statistics used for end-to-end analytics — otherwise, it is impossible to optimize traffic channels. Many of the specialists offer custom development for Zendesk using an individual approach. In most B2B topics, customer requests come in 4 ways:

calls — call tracking is used to track them;
applications — based on web forms on the site;
online chats — through the service class of the same name;
email — using email-tracking.
Moreover, if call tracking, web forms, and online chats are popular solutions, few marketers use email tracking for analytics of hits that come by email. In this article, we will tell why email tracking is needed and how a finished product differs from individual development.
What is email tracking and how does it work?
Email-tracking is a special technology that helps to track the requests of potential and current customers received by e-mail and link them to an online or offline traffic channel. A code is installed on the website that replaces the main email address of the site with a tracking email address: a unique one either for each user or for each traffic channel. With the help of email tracking, you can also track offline sources — for this, a dedicated email address is assigned to a specific traffic channel.', 26, N'Internet marketing for B2B has several features: low traffic, high average check, long sales cycle, and prohibitive rates in contextual advertising.', N'https://th.bing.com/th/id/R.f2c0265f12a36fbc378f15428168f943?rik=rJhjzNtV4rpUBQ&pid=ImgRaw&r=0')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (5, N'Must-Have Skills for a Competent Business Owner', 7, 25, CAST(N'2021-09-11T00:00:00' AS SmallDateTime), N'learning', 1, N'Striving your best to nurture and grow your skillset is essential in the world of business, as it can help define you as a forward-thinking, dedicated, and well-rounded professional. But what exactly are these skills? The list is incredibly long, and many of them complement each other, so perhaps the best way to move forward as a business owner is to identify which areas could benefit from a little improvement.

Sometimes, taking your skillset to the next level requires a great deal of self-motivation, determination, and commitment, but if you pride yourself on being a diligent business owner, this should be a breeze.

Here are some important skills worth nurturing in 2021, as you might find that improving on your personal traits is the catalyst that drives your business to new heights.

Contents [show]

A Thirst for Knowledge
Education is a wonderful tool, one that can enrich life in general, so seeking out new knowledge wherever possible should be high on the priority list. In many ways, learning never stops. Embracing this concept can help you make the most of the many fantastic resources at hand.

For the busiest business owners out there, returning to education might be easier than first expected, thanks in part to the world of online learning. For example, you can now take a great MBA online from the comfort of your home or place of business, or wherever has an internet connection.', 3, N'Striving your best to nurture and grow your skillset is essential in the world of business, as it can help define you as a forward-thinking, dedicated, and well-rounded professional. But what exactly are these skills? The list is incredibly long, and many of them complement each other, so perhaps the best way to move forward as a business owner is to identify which areas could benefit from a little improvement.

', N'https://www.newsforpublic.com/wp-content/uploads/2020/06/Small-Business-Owners.jpg')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (6, N'6 Smart Travel Packing Tips for Your Next Holiday', NULL, 5, CAST(N'2021-09-06T00:00:00' AS SmallDateTime), N'other', 0, N'As per the U.S. Travel Association, in 2019, travel spending averaged around USD 3.1 billion per day in the United States. To give you a better idea, it signifies that people spent USD 128 million an hour and USD 35,700 every second! Traveling is an essential part of everyone’s lives. When we travel, we make precious memories with friends and families.

But traveling also inculcates packing a colossal number of things into tiny little boxes and carrying them around with you. By packing smart – from installing the best roof box on your car to folding your clothes correctly – you can minimize any untoward inconveniences during trips.

Contents [show]

Make a packing list
Procrastinating the packing process is a common complaint among travelers, especially people who tend to forget small essential items like an electric charger, toothpaste, trimmer, etc. A clever psychological hack to start packing days earlier is by creating a list containing all the things you will need for the trip.

Creating a list of required items acts as a failsafe from over or under-packing. Another upside of doing this is that if you start early, you will be aware of all the things that you need to buy and have ample time on your hands to procure them.

Airline Baggage Policy
Speaking of over-packing, you should be aware of your airline’s baggage fee policy. You must do this before beginning the actual packing; otherwise, you may have to unpack everything at the last moment to adjust the weight and chuck out any prohibited items.

Most American airlines allow passengers to check-in at least one bag for international flights. But some air carriers charge a hefty sum for the same on domestic flights, which can cost you up to 100 bucks for a carry-on bag. The same rule applies if you are planning on flying with an air carrier in a foreign country. Make sure you learn their baggage policies as well.

Tip – To save space and reduce the weight of your baggage, you can consider wearing your heaviest clothes on the plane.', 5, N'As per the U.S. Travel Association, in 2019, travel spending averaged around USD 3.1 billion per day in the United States. To give you a better idea, it signifies that people spent USD 128 million an hour and USD 35,700 every second! Traveling is an essential part of everyone’s lives. When we travel, we make precious memories with friends and families.', N'https://th.bing.com/th/id/R.caca7513ea2a5dd5a5cfff23c5687c61?rik=hfqhcf3UruuWmg&pid=ImgRaw&r=0')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (7, N'The Importance of Music Education', 5, 1, CAST(N'2021-08-27T00:00:00' AS SmallDateTime), N'learning', 1, N'What if there was one activity that could benefit every student in every school across the nation? An activity that could improve grades and scores on standardized testing? An activity that would allow students to form lasting friendships? An activity that would help students become more disciplined and confident?

Fortunately, there is such an activity. Unfortunately, many schools will not make it a part of their curriculum, due to issues of funding and scheduling. This activity is something that everyone is aware of, but not everyone has a chance to participate in. This activity is music.

For years, music classes have been the ugly ducklings of school curriculums—the last courses to be added, the first courses to be cut. They have always taken second place to traditional academic classes. Music, however, has proved itself to be extremely beneficial time and time again, from the undeniable improvement in grades regarding traditional academic classes to the glowing remarks from music students everywhere. In an ever-changing world, the addition of music education in schools needs to be next on the academic agenda.  Music education should be a required component in all schools due to the proven academic, social, and personal benefits that it provides.

According to the No Child Left Behind Act, the following are defined as, “core academic subjects”: English, reading or language arts, mathematics, science, foreign languages, civics and government, economics, the arts [emphasis added], history, and geography (Benefits of the Study 1). Although music, being a part of the arts, is supposedly on the same level as other academic subjects, it is not being treated as such.

Music education greatly enhances students’ understanding and achievement in non-musical subjects. For example, a ten-year study, which tracked over 25,000 middle and high school students, showed that students in music classes receive higher scores on standardized tests than students with little to no musical involvement. The musical students scored, on average, sixty-three points higher on the verbal section and forty-four points higher on the math sections of the SATs than non-music students (Judson). When applying to colleges, these points could be the difference between an acceptance letter and a rejection letter.', 1, N'What if there was one activity that could benefit every student in every school across the nation? An activity that could improve grades and scores on standardized testing? An activity that would allow students to form lasting friendships? An activity that would help students become more disciplined and confident?', N'https://i.ytimg.com/vi/pIpROSkof1w/maxresdefault.jpg')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (8, N'Vietnamese project wins top prize at ‘Social Business Creation’ contest', 2, 4, CAST(N'2021-02-10T00:00:00' AS SmallDateTime), N'learning', 1, N'The global final round of the competition took place on October 2 with the competition of the top five SBC 2020 and the top five SBC 2021, which brought together 265 teams of 80 universities from 24 countries around the world.

Excellently overcoming their rivals, Vietnam’s Nanoneem project won the top prize (the Scotiabank Prize) and grabbed the title, thereby receiving a cash prize of CA$30,000 (US$23,770) and $4,200 (US$3,330) worth of scholarships from MOSAIC Summer School.

The project was developed by Dr. Duong Nguyen Hong Nhung, a lecturer in the biotechnology faculty of International University in Ho Chi Minh City, her students, and some other students from the Foreign Trade University in the same city.

Nanoneem introduces the application of nanotechnology to manufacturing safe plant protection drugs from herbs, toward clean and sustainable agriculture.

As a unique project that provides a potential business model benefiting the social community, Nanoneem was highly appreciated by the judges and always held the top positions through the last competition rounds.

The second prize went to the Argentinian team that presented a project on vocational training and job search for disadvantaged young people.', 3, N'The Social Business Creation (SBC) 2021 competition wrapped up in Canada with the first prize awarded to the Nanoneem project of two Vietnamese universities, its organizers announced on Sunday.', N'https://secure3.vncdn.vn/ttnew/r/2021/10/05/nanoneem-1633268210571417682431-1633408394.png')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (9, N'US SEC Approves Volt Equity’s ETF, Allowing Investors to Gain Exposure to Bitcoin', 7, 4, CAST(N'2020-04-15T00:00:00' AS SmallDateTime), N'other', 0, N'reviously, the SEC has approved the Volt crypto industry revolution and tech ETF on Tuesday, October 5.

According to SEC’s filing, the Volt Equity’s ETF aims to track so-called “Bitcoin Industry Revolution Companies”, which are defined as companies that hold a majority of their net assets in Bitcoin or derive a majority of their profit or revenue from Bitcoin-related activities like lending, mining, transacting, or manufacturing mining equipment.

Tad Pak, the founder and CEO of Volt Equity, talked about the development and said that the fund would offer investors easy access to firms with significant exposure to Bitcoin. In other words, the new “Volt Bitcoin Revolution ETF” service is set to allow investors to create a portfolio of “Bitcoin revolution companies” that hold a significant amount of the cryptocurrency on their balance sheets.

“I’m a strong believer in bitcoin and was really excited about launching an ETF that could take advantage of the coming bitcoin revolution. We can get exposure to Bitcoin without necessarily holding the coin, especially with options positions,” Pak noted.

Pak explained that the fund’s assets would consist of shares of about 30 companies, including Tesla, Square, Coinbase, PayPal, MicroStrategy, as well as Twitter, which recently made Bitcoin tipping as part of its operations, including Bitcoin mining firms like Bitfarms, Marathon Digital Holdings, which ahold Bitcoin in their corporate treasures, and other related companies.', 4, N'As investors are anxiously waiting for the US Securities and Exchange Commission (SEC) to approve a Bitcoin EFT, the regulator has taken a step closer in that direction by giving approval of a fund called the “Volt Bitcoin Revolution ETF.”', N'https://cryptonewstop.com/wp-content/uploads/2021/10/457679AF17FDFCF084130D02F280185B449AC25FEA64776617716EB483C70D0F-1024x538.jpg')
GO
INSERT [dbo].[Blog] ([blog_id], [title], [typeID], [author], [time], [type], [status], [content], [modifier], [description], [image]) VALUES (10, N'Vietnamese university to offer $1mn scholarships to international students', NULL, 22, CAST(N'2020-09-07T00:00:00' AS SmallDateTime), N'sharing', 1, N'A total of 170 scholarships worth $1 million will be granted to international students in the academic year 2021-22, said Prof. Dr. Su Dinh Thanh, the UEH’s principal.

These scholarships include 100 undergraduate scholarships, 50 scholarships for master’s degree and 20 fellowship scholarships.

They will be granted during the official training period of the academic year, including funding of 50 to 100 percent of the tuition and boarding costs depending on the type of partial, full or excellent scholarships.

Such scholarships will be given to foreign students who are admitted into training programs taught in Vietnamese or English at the UEH, but they are not exchange students or those nominated for training under treaties.

In addition, scholarship winners must be those who have yet to receive any scholarship in Vietnam.  

Foreign students do not need to prepare application for such scholarships, since the UEH will directly select qualified candidates from their enrollment documents and grant appropriate scholarships for them.

Excellent scholarships will be kept unchanged throughout the official study period, while full and partial scholarships will be subject to upgrade or downgrade depending on academic achievements of the beneficiaries of such scholarships, Dr. Thanh said.

“This policy aims to motivate students to strive for better schooling results to maintain their scholarship levels during their study at the school,” the principal added.

The UEH, established in 1976, has been detached from the Vietnam National University - Ho Chi Minh City since 2000 to operate under the administration of the Ministry of Education and Training.

As shown on its website, the university has been recognized in the Top 1000 Best Business Schools globally, and in 2020 it was ranked in the Top 5 National Universities by several prestigious international publications in Vietnam.', 22, N'Vietnam’s University of Economics Ho Chi Minh City (UEH) is considering awarding some US$1 million worth of scholarships to foreign students in the coming time, the school’s headmaster has said.', N'https://secure3.vncdn.vn/ttnew/r/2021/07/02/ueh-16251968390511608436167-1625219195.jpg')
GO
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[DataByTime] ON 
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (434, N'Overview', 2014, NULL, NULL, NULL, 909, 589, 838, 530, 812)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (435, N'Monthly', 2014, 4, NULL, NULL, 806, 790, 470, 944, 562)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (436, N'Weekly', 2014, 4, 2, NULL, 332, 325, 695, 805, 372)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (437, N'Daily', 2014, 4, 2, 10, 203, 929, 589, 125, 813)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (438, N'Overview', 2013, NULL, NULL, NULL, 183, 848, 80, 428, 573)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (439, N'Monthly', 2013, 3, NULL, NULL, 353, 497, 762, 536, 346)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (440, N'Weekly', 2013, 3, 2, NULL, 985, 469, 407, 725, 578)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (441, N'Daily', 2013, 3, 2, 20, 893, 913, 257, 557, 602)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (442, N'Overview', 2020, NULL, NULL, NULL, 230, 793, 604, 586, 569)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (443, N'Monthly', 2020, 1, NULL, NULL, 233, 904, 941, 895, 480)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (444, N'Weekly', 2020, 1, 2, NULL, 291, 84, 224, 401, 314)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (445, N'Daily', 2020, 1, 2, 29, 818, 149, 326, 86, 796)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (446, N'Overview', 2011, NULL, NULL, NULL, 296, 845, 546, 970, 662)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (447, N'Monthly', 2011, 10, NULL, NULL, 436, 693, 527, 566, 13)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (448, N'Weekly', 2011, 10, 2, NULL, 985, 850, 835, 514, 423)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (449, N'Daily', 2011, 10, 2, 2, 651, 261, 433, 938, 534)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (450, N'Overview', 2012, NULL, NULL, NULL, 489, 448, 805, 250, 394)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (451, N'Overview', 2012, NULL, NULL, NULL, 489, 448, 805, 250, 394)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (452, N'Monthly', 2012, 7, NULL, NULL, 317, 65, 946, 711, 274)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (453, N'Monthly', 2016, 12, NULL, NULL, 937, 692, 656, 924, 533)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (454, N'Weekly', 2016, 12, 2, NULL, 335, 311, 598, 47, 260)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (455, N'Overview', 2010, NULL, NULL, NULL, 518, 204, 551, 447, 810)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (456, N'Monthly', 2014, 5, NULL, NULL, 164, 354, 263, 569, 643)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (457, N'Weekly', 2014, 5, 2, NULL, 134, 123, 199, 370, 751)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (458, N'Daily', 2014, 5, 2, 26, 385, 256, 845, 578, 356)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (459, N'Daily', 2016, 12, 2, 26, 851, 508, 353, 166, 663)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (460, N'Monthly', 2010, 1, NULL, NULL, 202, 914, 151, 749, 781)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (461, N'Weekly', 2010, 1, 2, NULL, 451, 76, 8, 842, 32)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (462, N'Daily', 2010, 1, 2, 28, 700, 788, 197, 185, 555)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (463, N'Overview', 2017, NULL, NULL, NULL, 603, 906, 792, 320, 293)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (464, N'Monthly', 2017, 6, NULL, NULL, 327, 158, 808, 916, 101)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (465, N'Weekly', 2017, 6, 2, NULL, 276, 744, 551, 440, 471)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (466, N'Daily', 2017, 6, 2, 11, 176, 788, 748, 427, 260)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (467, N'Monthly', 2017, 4, NULL, NULL, 483, 243, 548, 841, 907)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (468, N'Weekly', 2017, 4, 2, NULL, 706, 320, 98, 506, 286)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (469, N'Daily', 2017, 4, 2, 25, 83, 460, 850, 587, 905)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (470, N'Overview', 2021, NULL, NULL, NULL, 154, 913, 431, 201, 515)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (471, N'Monthly', 2021, 8, NULL, NULL, 184, 871, 321, 356, 438)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (472, N'Weekly', 2021, 8, 2, NULL, 371, 242, 920, 643, 398)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (473, N'Daily', 2021, 8, 2, 14, 801, 954, 21, 468, 522)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (474, N'Overview', 2015, NULL, NULL, NULL, 169, 274, 616, 489, 913)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (475, N'Monthly', 2015, 11, NULL, NULL, 918, 585, 849, 564, 44)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (476, N'Weekly', 2015, 11, 2, NULL, 784, 455, 890, 37, 768)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (477, N'Daily', 2015, 11, 2, 9, 665, 601, 222, 562, 836)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (478, N'Monthly', 2013, 10, NULL, NULL, 754, 851, 114, 78, 797)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (479, N'Weekly', 2013, 10, 2, NULL, 880, 107, 765, 743, 927)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (480, N'Daily', 2013, 10, 2, 14, 747, 261, 955, 111, 10)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (481, N'Daily', 2015, 11, 2, 6, 384, 833, 914, 881, 688)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (482, N'Monthly', 2015, 7, NULL, NULL, 86, 328, 484, 495, 336)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (483, N'Weekly', 2015, 7, 2, NULL, 553, 973, 286, 623, 984)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (484, N'Daily', 2015, 7, 2, 6, 441, 774, 426, 450, 301)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (485, N'Monthly', 2013, 9, NULL, NULL, 82, 663, 378, 243, 105)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (486, N'Weekly', 2013, 9, 2, NULL, 582, 827, 754, 830, 816)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (487, N'Daily', 2013, 9, 2, 22, 156, 964, 2, 643, 835)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (488, N'Overview', 2016, NULL, NULL, NULL, 385, 453, 850, 675, 262)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (489, N'Monthly', 2016, 3, NULL, NULL, 17, 328, 19, 537, 755)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (490, N'Weekly', 2016, 3, 2, NULL, 692, 709, 967, 437, 641)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (491, N'Daily', 2016, 3, 2, 24, 777, 281, 271, 778, 733)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (492, N'Monthly', 2021, 10, NULL, NULL, 396, 49, 536, 425, 430)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (493, N'Weekly', 2021, 10, 2, NULL, 593, 441, 994, 288, 87)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (494, N'Daily', 2021, 10, 2, 9, 431, 970, 563, 295, 100)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (495, N'Overview', 2019, NULL, NULL, NULL, 689, 321, 176, 781, 3)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (496, N'Monthly', 2019, 6, NULL, NULL, 570, 450, 549, 978, 619)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (497, N'Weekly', 2019, 6, 2, NULL, 434, 460, 119, 368, 702)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (498, N'Daily', 2019, 6, 2, 14, 476, 278, 16, 63, 342)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (499, N'Monthly', 2020, 12, NULL, NULL, 426, 88, 568, 527, 380)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (500, N'Weekly', 2020, 12, 2, NULL, 783, 222, 543, 582, 58)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (501, N'Daily', 2020, 12, 2, 2, 103, 721, 893, 278, 103)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (502, N'Monthly', 2021, 11, NULL, NULL, 914, 338, 619, 750, 469)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (503, N'Weekly', 2021, 11, 2, NULL, 606, 8, 135, 596, 199)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (504, N'Daily', 2021, 11, 2, 27, 84, 239, 21, 199, 396)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (505, N'Monthly', 2020, 7, NULL, NULL, 15, 467, 836, 306, 369)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (506, N'Weekly', 2020, 7, 2, NULL, 480, 490, 2, 883, 88)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (507, N'Daily', 2020, 7, 2, 13, 521, 406, 242, 577, 310)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (508, N'Monthly', 2013, 8, NULL, NULL, 655, 315, 959, 352, 651)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (509, N'Weekly', 2013, 8, 2, NULL, 622, 201, 315, 966, 34)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (510, N'Daily', 2013, 8, 2, 15, 192, 228, 268, 909, 950)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (511, N'Monthly', 2013, 12, NULL, NULL, 452, 345, 232, 330, 357)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (512, N'Weekly', 2013, 12, 2, NULL, 599, 643, 919, 34, 478)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (513, N'Daily', 2013, 12, 2, 16, 25, 360, 164, 317, 177)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (514, N'Monthly', 2016, 11, NULL, NULL, 145, 707, 45, 669, 69)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (515, N'Weekly', 2016, 11, 2, NULL, 207, 112, 314, 821, 433)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (516, N'Daily', 2016, 11, 2, 3, 51, 86, 960, 752, 160)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (517, N'Daily', 2017, 6, 2, 26, 438, 163, 783, 504, 935)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (518, N'Daily', 2014, 5, 2, 18, 449, 542, 329, 949, 895)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (519, N'Overview', 2018, NULL, NULL, NULL, 168, 957, 833, 216, 566)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (520, N'Monthly', 2018, 7, NULL, NULL, 225, 687, 720, 545, 204)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (521, N'Weekly', 2018, 7, 2, NULL, 181, 501, 817, 738, 417)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (522, N'Daily', 2018, 7, 2, 26, 91, 552, 634, 652, 290)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (523, N'Monthly', 2017, 9, NULL, NULL, 787, 169, 584, 614, 776)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (524, N'Weekly', 2017, 9, 2, NULL, 447, 903, 34, 548, 385)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (525, N'Daily', 2017, 9, 2, 21, 920, 787, 53, 439, 202)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (526, N'Monthly', 2015, 3, NULL, NULL, 347, 528, 207, 903, 407)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (527, N'Weekly', 2015, 3, 2, NULL, 116, 362, 134, 465, 973)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (528, N'Daily', 2015, 3, 2, 9, 481, 494, 144, 937, 774)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (529, N'Monthly', 2013, 1, NULL, NULL, 364, 342, 669, 890, 213)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (530, N'Weekly', 2013, 1, 2, NULL, 635, 688, 910, 548, 297)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (531, N'Daily', 2013, 1, 2, 26, 959, 386, 682, 473, 162)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (532, N'Monthly', 2015, 4, NULL, NULL, 555, 87, 92, 351, 51)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (533, N'Weekly', 2015, 4, 2, NULL, 9, 887, 324, 473, 25)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (534, N'Daily', 2015, 4, 2, 21, 286, 670, 342, 924, 442)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (535, N'Monthly', 2020, 8, NULL, NULL, 502, 192, 319, 370, 940)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (536, N'Weekly', 2020, 8, 2, NULL, 47, 953, 694, 931, 319)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (537, N'Daily', 2020, 8, 2, 19, 522, 238, 889, 456, 243)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (538, N'Monthly', 2016, 5, NULL, NULL, 408, 155, 404, 458, 667)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (539, N'Weekly', 2016, 5, 2, NULL, 948, 987, 666, 150, 766)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (540, N'Daily', 2016, 5, 2, 31, 185, 384, 113, 212, 5)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (541, N'Monthly', 2019, 5, NULL, NULL, 68, 453, 826, 2, 603)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (542, N'Weekly', 2019, 5, 2, NULL, 865, 291, 441, 82, 64)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (543, N'Daily', 2019, 5, 2, 26, 300, 727, 660, 148, 448)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (544, N'Monthly', 2012, 10, NULL, NULL, 714, 793, 630, 677, 188)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (545, N'Weekly', 2012, 10, 2, NULL, 119, 994, 43, 599, 297)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (546, N'Daily', 2012, 10, 2, 17, 938, 889, 826, 704, 234)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (547, N'Monthly', 2013, 4, NULL, NULL, 428, 923, 515, 737, 616)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (548, N'Weekly', 2013, 4, 2, NULL, 532, 539, 268, 0, 23)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (549, N'Daily', 2013, 4, 2, 16, 706, 604, 688, 229, 522)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (550, N'Monthly', 2018, 8, NULL, NULL, 687, 219, 627, 197, 555)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (551, N'Weekly', 2018, 8, 2, NULL, 379, 390, 96, 848, 888)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (552, N'Daily', 2018, 8, 2, 2, 613, 431, 786, 364, 684)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (553, N'Daily', 2011, 10, 2, 26, 758, 635, 387, 87, 633)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (554, N'Monthly', 2019, 1, NULL, NULL, 762, 971, 770, 956, 583)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (555, N'Weekly', 2019, 1, 2, NULL, 830, 708, 295, 123, 149)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (556, N'Daily', 2019, 1, 2, 18, 911, 552, 52, 187, 234)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (557, N'Daily', 2013, 3, 2, 27, 265, 229, 7, 888, 217)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (558, N'Monthly', 2011, 11, NULL, NULL, 43, 798, 362, 577, 344)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (559, N'Weekly', 2011, 11, 2, NULL, 434, 791, 590, 272, 870)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (560, N'Daily', 2011, 11, 2, 21, 295, 624, 294, 212, 683)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (561, N'Monthly', 2018, 3, NULL, NULL, 730, 956, 408, 340, 755)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (562, N'Weekly', 2018, 3, 2, NULL, 694, 592, 319, 915, 766)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (563, N'Daily', 2018, 3, 2, 21, 928, 13, 109, 550, 613)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (564, N'Monthly', 2012, 8, NULL, NULL, 637, 742, 429, 58, 972)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (565, N'Weekly', 2012, 8, 2, NULL, 532, 720, 626, 356, 301)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (566, N'Daily', 2012, 8, 2, 22, 719, 106, 552, 599, 306)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (567, N'Monthly', 2010, 2, NULL, NULL, 922, 918, 410, 943, 992)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (568, N'Weekly', 2010, 2, 2, NULL, 384, 299, 850, 984, 413)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (569, N'Daily', 2010, 2, 2, 22, 928, 359, 930, 931, 431)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (570, N'Daily', 2013, 10, 2, 1, 984, 371, 987, 614, 483)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (571, N'Monthly', 2020, 4, NULL, NULL, 633, 62, 362, 600, 851)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (572, N'Weekly', 2020, 4, 2, NULL, 296, 89, 181, 392, 575)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (573, N'Daily', 2020, 4, 2, 18, 777, 578, 140, 235, 878)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (574, N'Monthly', 2020, 5, NULL, NULL, 784, 149, 394, 51, 120)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (575, N'Weekly', 2020, 5, 2, NULL, 560, 134, 713, 647, 992)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (576, N'Daily', 2020, 5, 2, 30, 257, 660, 811, 622, 892)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (577, N'Daily', 2020, 12, 2, 17, 446, 648, 69, 978, 509)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (578, N'Monthly', 2021, 2, NULL, NULL, 981, 551, 643, 815, 855)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (579, N'Weekly', 2021, 2, 2, NULL, 363, 386, 626, 801, 13)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (580, N'Daily', 2021, 2, 2, 18, 551, 790, 157, 53, 53)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (581, N'Monthly', 2014, 2, NULL, NULL, 464, 673, 323, 267, 793)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (582, N'Weekly', 2014, 2, 2, NULL, 360, 481, 641, 669, 279)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (583, N'Daily', 2014, 2, 2, 31, 858, 699, 951, 232, 179)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (584, N'Daily', 2013, 1, 2, 28, 430, 774, 545, 852, 136)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (585, N'Daily', 2013, 4, 2, 2, 52, 543, 822, 414, 965)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (586, N'Daily', 2018, 3, 2, 28, 326, 368, 504, 140, 576)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (587, N'Monthly', 2014, 7, NULL, NULL, 481, 326, 642, 297, 35)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (588, N'Weekly', 2014, 7, 2, NULL, 385, 968, 635, 73, 89)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (589, N'Daily', 2014, 7, 2, 8, 619, 668, 418, 672, 325)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (590, N'Monthly', 2017, 7, NULL, NULL, 935, 2, 268, 362, 387)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (591, N'Weekly', 2017, 7, 2, NULL, 604, 63, 393, 89, 281)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (592, N'Daily', 2017, 7, 2, 20, 190, 437, 462, 690, 693)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (593, N'Monthly', 2012, 2, NULL, NULL, 443, 491, 568, 364, 722)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (594, N'Weekly', 2012, 2, 2, NULL, 827, 768, 301, 892, 288)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (595, N'Daily', 2012, 2, 2, 17, 730, 827, 913, 435, 974)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (596, N'Monthly', 2017, 3, NULL, NULL, 849, 929, 202, 783, 80)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (597, N'Weekly', 2017, 3, 2, NULL, 150, 211, 521, 356, 596)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (598, N'Daily', 2017, 3, 2, 28, 285, 814, 409, 100, 862)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (599, N'Monthly', 2019, 3, NULL, NULL, 846, 887, 599, 252, 713)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (600, N'Weekly', 2019, 3, 2, NULL, 223, 0, 952, 95, 834)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (601, N'Daily', 2019, 3, 2, 5, 597, 373, 488, 358, 380)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (602, N'Daily', 2010, 1, 2, 12, 491, 344, 240, 243, 501)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (603, N'Daily', 2021, 11, 2, 29, 684, 189, 886, 852, 449)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (604, N'Monthly', 2011, 12, NULL, NULL, 492, 100, 527, 453, 476)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (605, N'Weekly', 2011, 12, 2, NULL, 799, 312, 285, 64, 658)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (606, N'Daily', 2011, 12, 2, 23, 932, 689, 54, 999, 757)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (607, N'Monthly', 2012, 6, NULL, NULL, 291, 706, 276, 371, 727)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (608, N'Weekly', 2012, 6, 2, NULL, 795, 105, 8, 684, 507)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (609, N'Daily', 2012, 6, 2, 27, 649, 668, 575, 131, 786)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (610, N'Daily', 2021, 10, 2, 25, 964, 367, 346, 266, 897)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (611, N'Daily', 2019, 6, 2, 12, 651, 629, 534, 140, 347)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (612, N'Monthly', 2011, 3, NULL, NULL, 918, 514, 669, 209, 548)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (613, N'Weekly', 2011, 3, 2, NULL, 238, 866, 568, 830, 533)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (614, N'Daily', 2011, 3, 2, 30, 790, 840, 210, 611, 438)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (615, N'Monthly', 2017, 5, NULL, NULL, 40, 757, 876, 398, 292)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (616, N'Weekly', 2017, 5, 2, NULL, 291, 290, 193, 706, 72)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (617, N'Daily', 2017, 5, 2, 14, 314, 950, 217, 832, 344)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (618, N'Monthly', 2013, 11, NULL, NULL, 235, 828, 387, 109, 947)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (619, N'Weekly', 2013, 11, 2, NULL, 603, 92, 681, 290, 179)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (620, N'Daily', 2013, 11, 2, 9, 159, 304, 185, 563, 924)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (621, N'Monthly', 2018, 2, NULL, NULL, 822, 950, 135, 726, 0)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (622, N'Weekly', 2018, 2, 2, NULL, 537, 337, 793, 253, 188)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (623, N'Daily', 2018, 2, 2, 10, 36, 513, 732, 713, 779)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (624, N'Daily', 2021, 8, 2, 12, 478, 863, 592, 408, 937)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (625, N'Monthly', 2019, 11, NULL, NULL, 658, 431, 242, 379, 98)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (626, N'Weekly', 2019, 11, 2, NULL, 782, 930, 128, 653, 105)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (627, N'Daily', 2019, 11, 2, 23, 637, 309, 890, 666, 115)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (628, N'Daily', 2019, 6, 2, 3, 302, 270, 680, 545, 919)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (629, N'Monthly', 2015, 2, NULL, NULL, 776, 715, 419, 522, 748)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (630, N'Weekly', 2015, 2, 2, NULL, 443, 895, 417, 854, 258)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (631, N'Daily', 2015, 2, 2, 24, 966, 957, 593, 153, 696)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (632, N'Monthly', 2016, 6, NULL, NULL, 678, 747, 817, 699, 276)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (633, N'Weekly', 2016, 6, 2, NULL, 367, 43, 525, 69, 828)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (634, N'Daily', 2016, 6, 2, 27, 982, 739, 31, 767, 757)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (635, N'Daily', 2013, 4, 2, 29, 407, 371, 641, 920, 3)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (636, N'Daily', 2020, 1, 2, 11, 338, 810, 798, 580, 267)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (637, N'Daily', 2011, 3, 2, 16, 211, 582, 923, 560, 681)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (638, N'Monthly', 2017, 12, NULL, NULL, 579, 157, 815, 918, 21)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (639, N'Weekly', 2017, 12, 2, NULL, 73, 204, 326, 403, 729)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (640, N'Daily', 2017, 12, 2, 13, 800, 537, 521, 659, 910)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (641, N'Monthly', 2012, 9, NULL, NULL, 648, 917, 68, 718, 507)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (642, N'Weekly', 2012, 9, 2, NULL, 77, 414, 150, 397, 271)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (643, N'Daily', 2012, 9, 2, 2, 839, 917, 930, 230, 288)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (644, N'Daily', 2018, 3, 2, 26, 812, 15, 914, 87, 929)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (645, N'Daily', 2019, 1, 2, 26, 171, 75, 261, 864, 280)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (646, N'Monthly', 2010, 4, NULL, NULL, 794, 273, 421, 623, 344)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (647, N'Weekly', 2010, 4, 2, NULL, 736, 952, 409, 307, 411)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (648, N'Daily', 2010, 4, 2, 16, 210, 24, 5, 30, 178)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (649, N'Monthly', 2019, 9, NULL, NULL, 786, 542, 444, 407, 945)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (650, N'Weekly', 2019, 9, 2, NULL, 576, 155, 548, 635, 542)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (651, N'Daily', 2019, 9, 2, 29, 767, 419, 139, 350, 219)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (652, N'Daily', 2012, 10, 2, 2, 126, 759, 159, 466, 896)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (653, N'Monthly', 2012, 5, NULL, NULL, 467, 790, 580, 635, 144)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (654, N'Weekly', 2012, 5, 2, NULL, 874, 494, 773, 892, 748)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (655, N'Daily', 2012, 5, 2, 10, 430, 275, 981, 947, 677)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (656, N'Daily', 2011, 11, 2, 5, 600, 476, 853, 784, 246)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (657, N'Monthly', 2012, 1, NULL, NULL, 169, 167, 529, 291, 779)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (658, N'Weekly', 2012, 1, 2, NULL, 496, 935, 374, 420, 479)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (659, N'Daily', 2012, 1, 2, 13, 557, 842, 679, 387, 460)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (660, N'Monthly', 2016, 4, NULL, NULL, 403, 352, 301, 260, 540)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (661, N'Weekly', 2016, 4, 2, NULL, 415, 592, 82, 927, 526)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (662, N'Daily', 2016, 4, 2, 29, 612, 448, 49, 491, 141)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (663, N'Daily', 2017, 12, 2, 4, 613, 163, 511, 700, 904)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (664, N'Daily', 2017, 5, 2, 8, 384, 984, 24, 769, 481)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (665, N'Monthly', 2018, 9, NULL, NULL, 650, 746, 182, 534, 921)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (666, N'Weekly', 2018, 9, 2, NULL, 730, 226, 39, 17, 599)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (667, N'Daily', 2018, 9, 2, 29, 284, 546, 91, 38, 11)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (668, N'Daily', 2019, 1, 2, 8, 219, 648, 176, 38, 464)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (669, N'Daily', 2013, 10, 2, 28, 8, 235, 687, 565, 874)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (670, N'Monthly', 2010, 6, NULL, NULL, 533, 140, 170, 824, 818)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (671, N'Weekly', 2010, 6, 2, NULL, 770, 939, 259, 973, 715)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (672, N'Daily', 2010, 6, 2, 16, 373, 119, 74, 314, 380)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (673, N'Daily', 2020, 5, 2, 29, 252, 448, 716, 460, 922)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (674, N'Monthly', 2018, 4, NULL, NULL, 662, 509, 230, 154, 825)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (675, N'Weekly', 2018, 4, 2, NULL, 370, 482, 517, 496, 178)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (676, N'Daily', 2018, 4, 2, 20, 184, 988, 66, 986, 385)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (677, N'Monthly', 2019, 8, NULL, NULL, 799, 914, 955, 656, 104)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (678, N'Weekly', 2019, 8, 2, NULL, 437, 700, 560, 785, 0)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (679, N'Daily', 2019, 8, 2, 4, 199, 794, 938, 593, 819)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (680, N'Monthly', 2015, 9, NULL, NULL, 577, 433, 13, 637, 808)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (681, N'Weekly', 2015, 9, 2, NULL, 792, 435, 49, 287, 739)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (682, N'Daily', 2015, 9, 2, 24, 890, 892, 945, 252, 504)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (683, N'Daily', 2019, 8, 2, 19, 148, 460, 190, 621, 80)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (684, N'Monthly', 2014, 12, NULL, NULL, 936, 833, 956, 16, 101)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (685, N'Weekly', 2014, 12, 2, NULL, 536, 168, 116, 305, 655)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (686, N'Daily', 2014, 12, 2, 9, 503, 5, 784, 69, 841)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (687, N'Daily', 2017, 12, 2, 28, 757, 540, 108, 386, 877)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (688, N'Daily', 2011, 10, 2, 6, 521, 532, 187, 798, 12)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (689, N'Monthly', 2011, 1, NULL, NULL, 522, 470, 568, 145, 195)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (690, N'Weekly', 2011, 1, 2, NULL, 529, 854, 276, 985, 35)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (691, N'Daily', 2011, 1, 2, 8, 590, 483, 646, 197, 919)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (692, N'Monthly', 2014, 11, NULL, NULL, 390, 556, 229, 647, 493)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (693, N'Weekly', 2014, 11, 2, NULL, 985, 542, 263, 141, 529)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (694, N'Daily', 2014, 11, 2, 14, 93, 832, 583, 735, 304)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (695, N'Monthly', 2012, 12, NULL, NULL, 681, 447, 522, 966, 901)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (696, N'Weekly', 2012, 12, 2, NULL, 255, 878, 579, 823, 542)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (697, N'Daily', 2012, 12, 2, 6, 360, 995, 183, 251, 87)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (698, N'Monthly', 2014, 10, NULL, NULL, 541, 18, 907, 276, 386)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (699, N'Weekly', 2014, 10, 2, NULL, 879, 822, 66, 690, 144)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (700, N'Daily', 2014, 10, 2, 17, 733, 348, 877, 652, 806)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (701, N'Daily', 2019, 8, 2, 16, 74, 909, 816, 326, 270)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (702, N'Daily', 2015, 9, 2, 12, 465, 684, 746, 842, 567)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (703, N'Monthly', 2020, 11, NULL, NULL, 968, 569, 922, 49, 734)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (704, N'Weekly', 2020, 11, 2, NULL, 415, 98, 498, 340, 489)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (705, N'Daily', 2020, 11, 2, 20, 721, 833, 728, 743, 361)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (706, N'Daily', 2018, 3, 2, 31, 557, 701, 983, 263, 750)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (707, N'Monthly', 2012, 3, NULL, NULL, 194, 746, 769, 995, 652)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (708, N'Weekly', 2012, 3, 2, NULL, 334, 4, 453, 951, 425)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (709, N'Daily', 2012, 3, 2, 14, 515, 537, 656, 217, 97)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (710, N'Monthly', 2010, 5, NULL, NULL, 346, 577, 467, 11, 411)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (711, N'Weekly', 2010, 5, 2, NULL, 111, 670, 619, 49, 603)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (712, N'Daily', 2010, 5, 2, 1, 598, 103, 805, 848, 215)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (713, N'Monthly', 2016, 8, NULL, NULL, 196, 447, 204, 508, 730)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (714, N'Weekly', 2016, 8, 2, NULL, 2, 487, 134, 325, 59)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (715, N'Daily', 2016, 8, 2, 5, 689, 488, 588, 655, 469)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (716, N'Monthly', 2020, 6, NULL, NULL, 550, 692, 219, 974, 977)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (717, N'Weekly', 2020, 6, 2, NULL, 710, 946, 936, 478, 226)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (718, N'Daily', 2020, 6, 2, 24, 716, 470, 482, 56, 187)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (719, N'Monthly', 2012, 11, NULL, NULL, 725, 702, 780, 462, 569)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (720, N'Weekly', 2012, 11, 2, NULL, 983, 342, 128, 391, 44)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (721, N'Daily', 2012, 11, 2, 11, 602, 48, 739, 485, 312)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (722, N'Daily', 2021, 8, 2, 23, 835, 632, 54, 251, 543)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (723, N'Monthly', 2016, 9, NULL, NULL, 859, 960, 401, 187, 733)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (724, N'Weekly', 2016, 9, 2, NULL, 452, 351, 253, 370, 801)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (725, N'Daily', 2016, 9, 2, 20, 152, 958, 728, 919, 867)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (726, N'Daily', 2016, 6, 2, 15, 784, 725, 136, 812, 82)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (727, N'Daily', 2021, 8, 2, 13, 823, 784, 94, 360, 13)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (728, N'Daily', 2014, 11, 2, 23, 984, 422, 248, 863, 128)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (729, N'Daily', 2021, 2, 2, 22, 999, 416, 331, 928, 948)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (730, N'Monthly', 2021, 12, NULL, NULL, 790, 706, 433, 334, 886)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (731, N'Weekly', 2021, 12, 2, NULL, 311, 273, 103, 604, 740)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (732, N'Daily', 2021, 12, 2, 23, 29, 629, 122, 108, 86)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (733, N'Weekly', 2012, 7, 2, NULL, 768, 17, 238, 793, 780)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (734, N'Daily', 2012, 7, 2, 1, 448, 995, 702, 694, 43)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (735, N'Monthly', 2010, 11, NULL, NULL, 973, 454, 178, 975, 749)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (736, N'Weekly', 2010, 11, 2, NULL, 634, 589, 457, 78, 24)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (737, N'Daily', 2010, 11, 2, 18, 462, 150, 761, 349, 963)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (738, N'Daily', 2015, 4, 2, 8, 758, 647, 816, 726, 799)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (739, N'Monthly', 2021, 4, NULL, NULL, 726, 463, 291, 439, 585)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (740, N'Weekly', 2021, 4, 2, NULL, 325, 630, 451, 819, 446)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (741, N'Daily', 2021, 4, 2, 7, 923, 290, 148, 101, 448)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (742, N'Daily', 2021, 10, 2, 23, 142, 650, 29, 450, 693)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (743, N'Daily', 2017, 12, 2, 14, 815, 800, 52, 617, 880)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (744, N'Monthly', 2014, 3, NULL, NULL, 756, 343, 608, 987, 879)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (745, N'Weekly', 2014, 3, 2, NULL, 449, 760, 479, 204, 615)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (746, N'Daily', 2014, 3, 2, 29, 407, 255, 596, 66, 734)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (747, N'Daily', 2021, 12, 2, 4, 4, 252, 939, 416, 281)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (748, N'Daily', 2018, 7, 2, 31, 865, 186, 330, 22, 675)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (749, N'Monthly', 2018, 11, NULL, NULL, 107, 157, 593, 258, 569)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (750, N'Weekly', 2018, 11, 2, NULL, 377, 331, 69, 770, 832)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (751, N'Daily', 2018, 11, 2, 11, 753, 802, 823, 468, 897)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (752, N'Monthly', 2018, 12, NULL, NULL, 949, 815, 813, 17, 526)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (753, N'Weekly', 2018, 12, 2, NULL, 112, 570, 805, 709, 356)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (754, N'Daily', 2018, 12, 2, 27, 768, 832, 211, 224, 713)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (755, N'Monthly', 2013, 2, NULL, NULL, 365, 637, 806, 580, 201)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (756, N'Weekly', 2013, 2, 2, NULL, 790, 193, 712, 926, 669)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (757, N'Daily', 2013, 2, 2, 17, 366, 593, 308, 968, 521)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (758, N'Daily', 2016, 3, 2, 17, 833, 217, 265, 581, 189)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (759, N'Monthly', 2021, 6, NULL, NULL, 131, 551, 264, 286, 25)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (760, N'Weekly', 2021, 6, 2, NULL, 416, 195, 838, 483, 712)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (761, N'Daily', 2021, 6, 2, 21, 319, 499, 121, 509, 508)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (762, N'Daily', 2016, 8, 2, 4, 875, 583, 626, 506, 664)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (763, N'Daily', 2012, 3, 2, 27, 148, 432, 11, 760, 848)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (764, N'Monthly', 2021, 3, NULL, NULL, 609, 489, 147, 554, 627)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (765, N'Weekly', 2021, 3, 2, NULL, 65, 465, 399, 372, 711)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (766, N'Daily', 2021, 3, 2, 11, 943, 919, 973, 88, 763)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (767, N'Daily', 2014, 4, 2, 28, 246, 343, 75, 140, 523)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (768, N'Monthly', 2011, 2, NULL, NULL, 148, 282, 400, 204, 241)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (769, N'Weekly', 2011, 2, 2, NULL, 183, 193, 311, 97, 406)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (770, N'Daily', 2011, 2, 2, 8, 260, 477, 479, 901, 567)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (771, N'Monthly', 2011, 6, NULL, NULL, 404, 234, 776, 543, 368)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (772, N'Weekly', 2011, 6, 2, NULL, 694, 908, 68, 527, 109)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (773, N'Daily', 2011, 6, 2, 30, 669, 735, 780, 9, 231)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (774, N'Daily', 2012, 6, 2, 7, 700, 609, 524, 403, 119)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (775, N'Daily', 2019, 5, 2, 25, 522, 423, 303, 845, 767)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (776, N'Daily', 2014, 12, 2, 16, 41, 422, 609, 987, 253)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (777, N'Daily', 2019, 11, 2, 27, 585, 556, 405, 607, 983)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (778, N'Daily', 2016, 5, 2, 21, 392, 839, 354, 264, 177)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (779, N'Monthly', 2017, 1, NULL, NULL, 472, 682, 669, 642, 858)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (780, N'Weekly', 2017, 1, 2, NULL, 590, 224, 538, 895, 765)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (781, N'Daily', 2017, 1, 2, 14, 874, 338, 227, 360, 95)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (782, N'Daily', 2018, 4, 2, 18, 277, 169, 746, 727, 589)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (783, N'Daily', 2020, 1, 2, 9, 235, 535, 312, 924, 240)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (784, N'Daily', 2012, 11, 2, 19, 336, 185, 85, 869, 270)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (785, N'Daily', 2014, 5, 2, 27, 326, 204, 781, 792, 109)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (786, N'Monthly', 2020, 9, NULL, NULL, 363, 423, 970, 467, 835)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (787, N'Weekly', 2020, 9, 2, NULL, 41, 369, 531, 895, 338)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (788, N'Daily', 2020, 9, 2, 28, 604, 806, 302, 169, 378)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (789, N'Daily', 2012, 2, 2, 8, 361, 117, 764, 274, 787)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (790, N'Daily', 2011, 12, 2, 26, 648, 410, 136, 151, 522)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (791, N'Daily', 2014, 10, 2, 26, 656, 190, 858, 598, 736)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (792, N'Daily', 2015, 3, 2, 22, 28, 653, 708, 717, 807)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (793, N'Daily', 2019, 3, 2, 6, 195, 356, 61, 109, 204)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (794, N'Daily', 2010, 1, 2, 19, 448, 797, 605, 901, 706)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (795, N'Daily', 2019, 1, 2, 11, 920, 781, 412, 272, 147)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (796, N'Daily', 2019, 6, 2, 30, 14, 54, 734, 485, 366)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (797, N'Daily', 2014, 4, 2, 22, 752, 336, 212, 692, 673)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (798, N'Monthly', 2015, 10, NULL, NULL, 525, 956, 596, 603, 338)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (799, N'Weekly', 2015, 10, 2, NULL, 722, 920, 350, 527, 88)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (800, N'Daily', 2015, 10, 2, 15, 125, 679, 827, 680, 794)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (801, N'Monthly', 2011, 7, NULL, NULL, 3, 388, 360, 502, 880)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (802, N'Weekly', 2011, 7, 2, NULL, 964, 406, 523, 634, 389)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (803, N'Daily', 2011, 7, 2, 2, 470, 404, 40, 51, 303)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (804, N'Monthly', 2014, 9, NULL, NULL, 684, 133, 507, 364, 319)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (805, N'Weekly', 2014, 9, 2, NULL, 435, 840, 115, 981, 223)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (806, N'Daily', 2014, 9, 2, 20, 710, 270, 252, 911, 64)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (807, N'Monthly', 2021, 5, NULL, NULL, 472, 591, 578, 995, 788)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (808, N'Weekly', 2021, 5, 2, NULL, 302, 790, 924, 217, 540)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (809, N'Daily', 2021, 5, 2, 7, 559, 687, 922, 841, 654)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (810, N'Monthly', 2013, 6, NULL, NULL, 126, 659, 811, 74, 832)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (811, N'Weekly', 2013, 6, 2, NULL, 955, 435, 797, 65, 621)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (812, N'Daily', 2013, 6, 2, 4, 130, 5, 425, 137, 522)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (813, N'Daily', 2015, 2, 2, 19, 785, 701, 216, 829, 196)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (814, N'Monthly', 2021, 9, NULL, NULL, 568, 736, 141, 674, 512)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (815, N'Weekly', 2021, 9, 2, NULL, 489, 505, 633, 838, 47)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (816, N'Daily', 2021, 9, 2, 24, 248, 377, 35, 60, 718)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (817, N'Daily', 2013, 3, 2, 16, 597, 859, 60, 482, 738)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (818, N'Daily', 2018, 11, 2, 6, 427, 798, 228, 103, 359)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (819, N'Monthly', 2010, 7, NULL, NULL, 351, 661, 907, 41, 157)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (820, N'Weekly', 2010, 7, 2, NULL, 763, 754, 643, 901, 502)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (821, N'Daily', 2010, 7, 2, 30, 538, 908, 519, 185, 731)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (822, N'Daily', 2015, 2, 2, 4, 16, 712, 687, 847, 586)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (823, N'Daily', 2016, 8, 2, 8, 236, 492, 301, 459, 864)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (824, N'Daily', 2011, 2, 2, 2, 889, 371, 382, 795, 398)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (825, N'Monthly', 2010, 12, NULL, NULL, 439, 306, 635, 298, 388)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (826, N'Weekly', 2010, 12, 2, NULL, 404, 358, 219, 702, 115)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (827, N'Daily', 2010, 12, 2, 1, 169, 893, 568, 936, 507)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (828, N'Daily', 2021, 5, 2, 14, 763, 451, 847, 610, 362)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (829, N'Daily', 2011, 1, 2, 22, 884, 22, 499, 260, 657)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (830, N'Monthly', 2013, 7, NULL, NULL, 608, 260, 377, 241, 85)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (831, N'Weekly', 2013, 7, 2, NULL, 243, 67, 844, 441, 121)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (832, N'Daily', 2013, 7, 2, 24, 154, 781, 345, 305, 206)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (833, N'Daily', 2019, 6, 2, 4, 132, 973, 471, 462, 812)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (834, N'Monthly', 2019, 7, NULL, NULL, 750, 745, 9, 423, 665)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (835, N'Weekly', 2019, 7, 2, NULL, 256, 568, 876, 557, 757)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (836, N'Daily', 2019, 7, 2, 5, 447, 486, 613, 757, 18)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (837, N'Daily', 2010, 5, 2, 24, 344, 769, 253, 332, 643)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (838, N'Daily', 2012, 3, 2, 13, 931, 272, 936, 725, 766)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (839, N'Daily', 2011, 12, 2, 24, 438, 333, 954, 237, 215)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (840, N'Daily', 2016, 12, 2, 10, 360, 753, 235, 57, 712)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (841, N'Daily', 2012, 3, 2, 15, 427, 95, 67, 941, 916)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (842, N'Monthly', 2010, 10, NULL, NULL, 988, 631, 759, 136, 72)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (843, N'Weekly', 2010, 10, 2, NULL, 274, 825, 852, 197, 988)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (844, N'Daily', 2010, 10, 2, 7, 635, 978, 52, 589, 110)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (845, N'Monthly', 2018, 6, NULL, NULL, 444, 553, 304, 664, 102)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (846, N'Weekly', 2018, 6, 2, NULL, 562, 780, 261, 718, 735)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (847, N'Daily', 2018, 6, 2, 13, 644, 843, 19, 787, 163)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (848, N'Daily', 2011, 2, 2, 29, 51, 353, 854, 23, 374)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (849, N'Monthly', 2015, 12, NULL, NULL, 500, 112, 99, 535, 848)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (850, N'Weekly', 2015, 12, 2, NULL, 667, 529, 27, 837, 478)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (851, N'Daily', 2015, 12, 2, 29, 146, 535, 981, 286, 936)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (852, N'Monthly', 2015, 6, NULL, NULL, 426, 158, 275, 907, 581)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (853, N'Weekly', 2015, 6, 2, NULL, 770, 203, 986, 255, 63)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (854, N'Daily', 2015, 6, 2, 20, 228, 237, 142, 520, 687)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (855, N'Daily', 2015, 2, 2, 3, 542, 942, 303, 159, 130)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (856, N'Daily', 2012, 11, 2, 23, 64, 845, 43, 594, 122)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (857, N'Daily', 2015, 6, 2, 24, 975, 78, 177, 690, 473)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (858, N'Daily', 2010, 4, 2, 24, 344, 928, 612, 740, 915)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (859, N'Monthly', 2017, 10, NULL, NULL, 993, 309, 105, 271, 707)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (860, N'Weekly', 2017, 10, 2, NULL, 848, 107, 949, 934, 550)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (861, N'Daily', 2017, 10, 2, 11, 402, 980, 396, 404, 722)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (862, N'Daily', 2021, 8, 2, 20, 610, 476, 251, 18, 118)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (863, N'Daily', 2011, 11, 2, 15, 727, 551, 930, 246, 579)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (864, N'Monthly', 2014, 8, NULL, NULL, 655, 169, 767, 491, 621)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (865, N'Weekly', 2014, 8, 2, NULL, 590, 331, 416, 797, 925)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (866, N'Daily', 2014, 8, 2, 24, 336, 821, 9, 622, 649)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (867, N'Daily', 2013, 4, 2, 26, 972, 318, 122, 873, 978)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (868, N'Daily', 2018, 12, 2, 8, 827, 543, 592, 251, 880)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (869, N'Daily', 2019, 7, 2, 28, 473, 785, 581, 574, 287)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (870, N'Monthly', 2013, 5, NULL, NULL, 463, 162, 721, 381, 437)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (871, N'Weekly', 2013, 5, 2, NULL, 177, 46, 746, 970, 273)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (872, N'Daily', 2013, 5, 2, 17, 369, 683, 775, 63, 85)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (873, N'Daily', 2015, 9, 2, 21, 979, 594, 766, 947, 559)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (874, N'Daily', 2017, 1, 2, 30, 132, 388, 636, 565, 0)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (875, N'Daily', 2012, 11, 2, 9, 744, 678, 913, 568, 488)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (876, N'Daily', 2021, 8, 2, 22, 773, 74, 770, 325, 975)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (877, N'Monthly', 2018, 5, NULL, NULL, 403, 156, 356, 611, 890)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (878, N'Weekly', 2018, 5, 2, NULL, 962, 379, 878, 109, 200)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (879, N'Daily', 2018, 5, 2, 17, 871, 435, 70, 651, 100)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (880, N'Monthly', 2020, 2, NULL, NULL, 910, 704, 331, 188, 931)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (881, N'Weekly', 2020, 2, 2, NULL, 764, 297, 118, 495, 701)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (882, N'Daily', 2020, 2, 2, 9, 556, 764, 972, 524, 6)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (883, N'Monthly', 2010, 8, NULL, NULL, 27, 542, 595, 524, 947)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (884, N'Weekly', 2010, 8, 2, NULL, 745, 963, 539, 805, 748)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (885, N'Daily', 2010, 8, 2, 28, 443, 930, 155, 711, 662)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (886, N'Daily', 2012, 8, 2, 11, 616, 559, 597, 444, 771)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (887, N'Monthly', 2019, 4, NULL, NULL, 662, 613, 742, 704, 716)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (888, N'Weekly', 2019, 4, 2, NULL, 190, 262, 121, 509, 347)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (889, N'Daily', 2019, 4, 2, 16, 36, 564, 347, 506, 107)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (890, N'Daily', 2017, 3, 2, 8, 523, 550, 151, 796, 146)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (891, N'Daily', 2017, 3, 2, 20, 962, 604, 74, 451, 375)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (892, N'Daily', 2019, 3, 2, 2, 78, 286, 585, 625, 284)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (893, N'Daily', 2021, 3, 2, 30, 676, 682, 527, 489, 311)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (894, N'Daily', 2011, 12, 2, 9, 922, 639, 210, 58, 605)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (895, N'Daily', 2010, 11, 2, 5, 867, 354, 648, 810, 293)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (896, N'Daily', 2018, 4, 2, 25, 34, 229, 526, 253, 664)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (897, N'Daily', 2016, 12, 2, 2, 910, 134, 149, 221, 307)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (898, N'Daily', 2012, 2, 2, 7, 126, 660, 144, 876, 654)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (899, N'Monthly', 2010, 3, NULL, NULL, 880, 91, 952, 400, 536)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (900, N'Weekly', 2010, 3, 2, NULL, 225, 176, 923, 799, 245)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (901, N'Daily', 2010, 3, 2, 12, 665, 293, 46, 333, 812)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (902, N'Daily', 2011, 6, 2, 16, 769, 183, 147, 602, 398)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (903, N'Daily', 2014, 2, 2, 12, 265, 542, 311, 879, 191)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (904, N'Monthly', 2014, 6, NULL, NULL, 18, 669, 514, 312, 348)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (905, N'Weekly', 2014, 6, 2, NULL, 55, 549, 254, 104, 405)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (906, N'Daily', 2014, 6, 2, 31, 913, 635, 606, 124, 310)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (907, N'Daily', 2017, 4, 2, 28, 509, 307, 519, 944, 891)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (908, N'Daily', 2014, 3, 2, 26, 702, 191, 604, 786, 33)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (909, N'Monthly', 2020, 10, NULL, NULL, 489, 432, 231, 6, 225)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (910, N'Weekly', 2020, 10, 2, NULL, 560, 967, 741, 814, 324)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (911, N'Daily', 2020, 10, 2, 26, 71, 992, 660, 314, 619)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (912, N'Daily', 2018, 3, 2, 22, 907, 579, 608, 157, 462)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (913, N'Daily', 2020, 7, 2, 11, 416, 98, 833, 710, 227)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (914, N'Daily', 2012, 8, 2, 8, 863, 351, 863, 736, 599)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (915, N'Daily', 2018, 3, 2, 20, 542, 850, 344, 929, 169)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (916, N'Daily', 2013, 1, 2, 29, 197, 731, 706, 41, 343)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (917, N'Daily', 2020, 12, 2, 3, 457, 194, 375, 297, 444)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (918, N'Daily', 2021, 5, 2, 13, 272, 522, 221, 23, 850)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (919, N'Daily', 2014, 9, 2, 11, 961, 420, 823, 974, 896)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (920, N'Daily', 2013, 4, 2, 19, 78, 56, 602, 251, 80)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (921, N'Daily', 2010, 3, 2, 15, 242, 648, 295, 114, 672)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (922, N'Daily', 2017, 12, 2, 6, 609, 198, 626, 520, 2)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (923, N'Monthly', 2017, 11, NULL, NULL, 858, 369, 34, 83, 925)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (924, N'Weekly', 2017, 11, 2, NULL, 206, 131, 847, 478, 975)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (925, N'Daily', 2017, 11, 2, 15, 784, 76, 405, 979, 113)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (926, N'Daily', 2013, 6, 2, 10, 873, 306, 52, 845, 3)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (927, N'Daily', 2015, 2, 2, 5, 474, 323, 173, 462, 461)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (928, N'Daily', 2011, 1, 2, 7, 363, 121, 939, 39, 967)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (929, N'Daily', 2014, 5, 2, 14, 34, 544, 527, 92, 86)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (930, N'Daily', 2017, 1, 2, 25, 877, 271, 556, 66, 207)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (931, N'Daily', 2012, 1, 2, 22, 499, 657, 357, 518, 894)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (932, N'Daily', 2013, 6, 2, 17, 134, 67, 853, 118, 283)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (933, N'Daily', 2010, 4, 2, 5, 34, 453, 62, 299, 38)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (934, N'Daily', 2010, 2, 2, 17, 924, 105, 988, 573, 946)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (935, N'Daily', 2016, 6, 2, 17, 508, 657, 419, 824, 29)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (936, N'Daily', 2020, 7, 2, 24, 509, 246, 578, 80, 144)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (937, N'Daily', 2021, 11, 2, 11, 826, 683, 344, 293, 831)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (938, N'Monthly', 2017, 2, NULL, NULL, 326, 482, 943, 146, 746)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (939, N'Weekly', 2017, 2, 2, NULL, 941, 781, 935, 510, 54)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (940, N'Daily', 2017, 2, 2, 5, 575, 26, 806, 381, 674)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (941, N'Daily', 2014, 3, 2, 13, 476, 866, 899, 342, 382)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (942, N'Monthly', 2021, 1, NULL, NULL, 393, 33, 814, 661, 174)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (943, N'Weekly', 2021, 1, 2, NULL, 611, 890, 9, 138, 214)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (944, N'Daily', 2021, 1, 2, 1, 126, 342, 660, 665, 687)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (945, N'Daily', 2018, 6, 2, 16, 4, 791, 22, 737, 396)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (946, N'Daily', 2013, 3, 2, 29, 411, 394, 41, 457, 934)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (947, N'Daily', 2015, 4, 2, 18, 654, 797, 538, 332, 766)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (948, N'Daily', 2017, 2, 2, 22, 614, 204, 60, 686, 531)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (949, N'Daily', 2011, 1, 2, 18, 369, 913, 99, 641, 628)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (950, N'Daily', 2013, 7, 2, 9, 346, 808, 887, 667, 960)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (951, N'Daily', 2015, 4, 2, 24, 845, 464, 930, 332, 439)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (952, N'Monthly', 2011, 4, NULL, NULL, 122, 914, 30, 500, 405)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (953, N'Weekly', 2011, 4, 2, NULL, 843, 799, 318, 119, 345)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (954, N'Daily', 2011, 4, 2, 9, 28, 198, 926, 108, 196)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (955, N'Daily', 2018, 3, 2, 10, 706, 5, 502, 793, 153)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (956, N'Daily', 2020, 1, 2, 8, 212, 177, 367, 566, 334)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (957, N'Daily', 2010, 12, 2, 4, 15, 330, 586, 312, 800)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (958, N'Daily', 2010, 1, 2, 11, 57, 444, 88, 859, 338)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (959, N'Daily', 2021, 12, 2, 19, 416, 100, 242, 594, 99)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (960, N'Daily', 2012, 10, 2, 25, 560, 501, 155, 853, 867)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (961, N'Monthly', 2016, 10, NULL, NULL, 828, 611, 561, 326, 921)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (962, N'Weekly', 2016, 10, 2, NULL, 386, 249, 70, 824, 629)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (963, N'Daily', 2016, 10, 2, 11, 677, 561, 813, 859, 178)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (964, N'Daily', 2017, 12, 2, 31, 838, 4, 45, 119, 807)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (965, N'Daily', 2019, 9, 2, 8, 138, 51, 827, 640, 834)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (966, N'Daily', 2010, 4, 2, 17, 601, 290, 554, 329, 838)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (967, N'Daily', 2015, 4, 2, 1, 713, 179, 784, 239, 766)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (968, N'Daily', 2017, 10, 2, 24, 979, 908, 266, 722, 314)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (969, N'Monthly', 2016, 1, NULL, NULL, 858, 11, 48, 245, 395)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (970, N'Weekly', 2016, 1, 2, NULL, 131, 849, 435, 227, 747)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (971, N'Daily', 2016, 1, 2, 3, 729, 0, 887, 916, 358)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (972, N'Monthly', 2019, 10, NULL, NULL, 715, 574, 1, 763, 733)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (973, N'Weekly', 2019, 10, 2, NULL, 792, 110, 391, 733, 837)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (974, N'Daily', 2019, 10, 2, 9, 214, 167, 127, 493, 664)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (975, N'Daily', 2021, 10, 2, 19, 873, 0, 591, 248, 940)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (976, N'Daily', 2015, 10, 2, 22, 944, 251, 404, 23, 13)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (977, N'Daily', 2011, 2, 2, 13, 893, 676, 105, 337, 425)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (978, N'Daily', 2010, 5, 2, 26, 496, 377, 759, 749, 433)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (979, N'Monthly', 2018, 1, NULL, NULL, 19, 270, 738, 804, 425)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (980, N'Weekly', 2018, 1, 2, NULL, 105, 229, 635, 503, 178)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (981, N'Daily', 2018, 1, 2, 12, 296, 829, 408, 855, 412)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (982, N'Daily', 2020, 1, 2, 26, 78, 943, 175, 728, 279)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (983, N'Monthly', 2015, 5, NULL, NULL, 818, 452, 93, 310, 616)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (984, N'Weekly', 2015, 5, 2, NULL, 772, 827, 245, 52, 412)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (985, N'Daily', 2015, 5, 2, 14, 640, 915, 15, 258, 539)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (986, N'Daily', 2015, 9, 2, 1, 151, 864, 486, 65, 323)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (987, N'Daily', 2013, 6, 2, 19, 741, 882, 190, 383, 127)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (988, N'Daily', 2017, 6, 2, 22, 170, 780, 172, 626, 212)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (989, N'Daily', 2021, 4, 2, 25, 523, 274, 265, 6, 508)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (990, N'Daily', 2020, 11, 2, 11, 345, 756, 229, 514, 502)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (991, N'Daily', 2019, 8, 2, 18, 40, 504, 26, 143, 605)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (992, N'Monthly', 2010, 9, NULL, NULL, 624, 98, 30, 389, 427)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (993, N'Weekly', 2010, 9, 2, NULL, 2, 706, 991, 491, 126)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (994, N'Daily', 2010, 9, 2, 6, 314, 646, 830, 642, 565)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (995, N'Daily', 2014, 6, 2, 11, 119, 614, 972, 85, 815)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (996, N'Daily', 2010, 2, 2, 29, 965, 946, 988, 571, 601)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (997, N'Daily', 2013, 6, 2, 5, 772, 835, 731, 179, 161)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (998, N'Daily', 2019, 8, 2, 23, 464, 697, 564, 600, 795)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (999, N'Daily', 2015, 6, 2, 27, 776, 747, 37, 605, 96)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1000, N'Daily', 2020, 2, 2, 10, 402, 387, 406, 259, 217)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1001, N'Daily', 2016, 9, 2, 21, 572, 701, 94, 850, 837)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1002, N'Daily', 2018, 9, 2, 30, 367, 341, 379, 248, 927)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1003, N'Monthly', 2014, 1, NULL, NULL, 519, 39, 795, 298, 205)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1004, N'Weekly', 2014, 1, 2, NULL, 394, 881, 657, 135, 450)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1005, N'Daily', 2014, 1, 2, 5, 421, 115, 153, 95, 811)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1006, N'Daily', 2012, 10, 2, 1, 122, 299, 909, 976, 737)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1007, N'Daily', 2020, 4, 2, 3, 113, 286, 3, 964, 103)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1008, N'Daily', 2013, 3, 2, 4, 38, 217, 91, 429, 466)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1009, N'Daily', 2014, 1, 2, 25, 615, 546, 736, 291, 832)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1010, N'Monthly', 2015, 8, NULL, NULL, 241, 502, 733, 577, 136)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1011, N'Weekly', 2015, 8, 2, NULL, 828, 361, 920, 478, 542)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1012, N'Daily', 2015, 8, 2, 12, 36, 269, 223, 921, 612)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1013, N'Daily', 2013, 8, 2, 22, 391, 454, 616, 438, 31)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1014, N'Monthly', 2012, 4, NULL, NULL, 885, 109, 151, 390, 951)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1015, N'Weekly', 2012, 4, 2, NULL, 592, 184, 244, 506, 974)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1016, N'Daily', 2012, 4, 2, 11, 617, 823, 36, 24, 856)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1017, N'Daily', 2020, 11, 2, 31, 507, 579, 435, 276, 375)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1018, N'Daily', 2020, 5, 2, 24, 214, 674, 863, 857, 627)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1019, N'Daily', 2010, 8, 2, 23, 343, 178, 538, 707, 686)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1020, N'Daily', 2015, 4, 2, 30, 18, 159, 625, 308, 673)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1021, N'Daily', 2019, 10, 2, 13, 137, 211, 644, 324, 297)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1022, N'Daily', 2017, 2, 2, 1, 560, 855, 809, 794, 575)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1023, N'Daily', 2014, 4, 2, 29, 834, 377, 41, 319, 391)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1024, N'Daily', 2017, 1, 2, 23, 95, 291, 296, 61, 760)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1025, N'Daily', 2019, 5, 2, 17, 158, 676, 743, 503, 192)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1026, N'Daily', 2014, 9, 2, 12, 857, 958, 581, 755, 449)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1027, N'Daily', 2018, 2, 2, 19, 64, 180, 804, 760, 390)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1028, N'Daily', 2021, 3, 2, 6, 183, 328, 838, 207, 465)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1029, N'Daily', 2014, 1, 2, 4, 974, 963, 73, 782, 117)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1030, N'Daily', 2010, 8, 2, 24, 156, 724, 655, 783, 827)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1031, N'Daily', 2014, 1, 2, 31, 625, 886, 117, 115, 222)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1032, N'Daily', 2020, 4, 2, 1, 946, 596, 220, 462, 295)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1033, N'Daily', 2019, 6, 2, 6, 909, 546, 879, 607, 809)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1034, N'Daily', 2019, 10, 2, 22, 270, 113, 958, 725, 770)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1035, N'Daily', 2012, 7, 2, 17, 498, 470, 728, 45, 881)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1036, N'Daily', 2015, 7, 2, 14, 458, 301, 221, 955, 255)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1037, N'Daily', 2020, 6, 2, 20, 710, 763, 223, 620, 415)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1038, N'Monthly', 2016, 7, NULL, NULL, 269, 181, 889, 821, 547)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1039, N'Weekly', 2016, 7, 2, NULL, 896, 904, 31, 471, 493)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1040, N'Daily', 2016, 7, 2, 11, 404, 882, 855, 761, 255)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1041, N'Daily', 2011, 7, 2, 19, 923, 478, 331, 517, 155)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1042, N'Daily', 2021, 8, 2, 4, 616, 325, 176, 502, 476)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1043, N'Daily', 2015, 3, 2, 14, 308, 948, 493, 634, 795)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1044, N'Daily', 2017, 12, 2, 11, 375, 173, 983, 297, 653)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1045, N'Daily', 2018, 12, 2, 14, 877, 69, 874, 943, 61)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1046, N'Daily', 2013, 3, 2, 6, 979, 658, 34, 179, 512)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1047, N'Daily', 2020, 4, 2, 5, 550, 571, 967, 674, 503)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1048, N'Daily', 2018, 6, 2, 11, 424, 696, 788, 971, 130)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1049, N'Daily', 2020, 5, 2, 11, 37, 235, 912, 859, 770)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1050, N'Daily', 2021, 10, 2, 29, 222, 622, 744, 936, 771)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1051, N'Daily', 2016, 10, 2, 17, 672, 562, 757, 94, 282)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1052, N'Daily', 2013, 5, 2, 21, 69, 841, 273, 969, 567)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1053, N'Daily', 2013, 9, 2, 5, 61, 367, 389, 465, 172)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1054, N'Daily', 2018, 6, 2, 6, 587, 188, 108, 437, 448)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1055, N'Daily', 2017, 3, 2, 14, 863, 531, 969, 652, 621)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1056, N'Daily', 2014, 10, 2, 14, 547, 11, 465, 550, 296)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1057, N'Daily', 2017, 7, 2, 22, 836, 667, 870, 16, 877)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1058, N'Daily', 2010, 11, 2, 14, 615, 548, 673, 693, 45)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1059, N'Daily', 2019, 1, 2, 28, 429, 319, 59, 881, 549)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1060, N'Daily', 2021, 3, 2, 17, 716, 766, 0, 279, 67)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1061, N'Daily', 2020, 4, 2, 6, 251, 599, 232, 75, 991)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1062, N'Daily', 2020, 12, 2, 22, 866, 523, 883, 106, 523)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1063, N'Monthly', 2015, 1, NULL, NULL, 116, 54, 335, 843, 960)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1064, N'Weekly', 2015, 1, 2, NULL, 229, 680, 466, 899, 301)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1065, N'Daily', 2015, 1, 2, 6, 683, 406, 936, 46, 497)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1066, N'Daily', 2017, 11, 2, 7, 200, 944, 994, 262, 56)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1067, N'Daily', 2011, 11, 2, 24, 770, 513, 287, 771, 338)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1068, N'Daily', 2012, 8, 2, 19, 235, 145, 758, 830, 580)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1069, N'Monthly', 2011, 9, NULL, NULL, 194, 422, 279, 360, 559)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1070, N'Weekly', 2011, 9, 2, NULL, 781, 828, 577, 485, 35)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1071, N'Daily', 2011, 9, 2, 1, 9, 470, 668, 589, 242)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1072, N'Daily', 2012, 9, 2, 29, 560, 624, 579, 566, 894)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1073, N'Daily', 2018, 6, 2, 12, 194, 983, 16, 51, 149)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1074, N'Daily', 2021, 2, 2, 30, 829, 133, 575, 228, 663)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1075, N'Monthly', 2020, 3, NULL, NULL, 13, 828, 442, 618, 72)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1076, N'Weekly', 2020, 3, 2, NULL, 632, 153, 191, 926, 248)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1077, N'Daily', 2020, 3, 2, 2, 780, 404, 449, 561, 488)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1078, N'Daily', 2020, 6, 2, 2, 659, 680, 31, 222, 475)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1079, N'Daily', 2013, 9, 2, 2, 327, 827, 75, 214, 517)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1080, N'Daily', 2017, 5, 2, 31, 762, 356, 93, 256, 349)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1081, N'Daily', 2010, 11, 2, 25, 900, 35, 543, 345, 44)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1082, N'Daily', 2016, 10, 2, 26, 54, 66, 513, 542, 307)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1083, N'Daily', 2012, 7, 2, 30, 241, 212, 941, 991, 446)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1084, N'Daily', 2015, 8, 2, 10, 396, 550, 739, 407, 505)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1085, N'Daily', 2018, 7, 2, 24, 801, 875, 723, 322, 428)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1086, N'Daily', 2019, 1, 2, 21, 867, 892, 386, 758, 726)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1087, N'Daily', 2021, 12, 2, 14, 408, 13, 693, 440, 880)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1088, N'Daily', 2016, 9, 2, 11, 977, 620, 363, 748, 371)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1089, N'Monthly', 2011, 8, NULL, NULL, 230, 368, 549, 169, 810)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1090, N'Weekly', 2011, 8, 2, NULL, 687, 527, 730, 80, 44)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1091, N'Daily', 2011, 8, 2, 3, 220, 699, 304, 925, 793)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1092, N'Daily', 2015, 11, 2, 26, 986, 213, 671, 656, 940)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1093, N'Daily', 2018, 2, 2, 5, 763, 181, 528, 640, 741)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1094, N'Daily', 2021, 6, 2, 14, 194, 547, 72, 968, 333)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1095, N'Daily', 2015, 3, 2, 29, 717, 857, 715, 653, 490)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1096, N'Daily', 2021, 1, 2, 25, 349, 426, 844, 838, 621)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1097, N'Daily', 2021, 4, 2, 12, 347, 515, 378, 612, 899)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1098, N'Monthly', 2021, 7, NULL, NULL, 314, 271, 922, 116, 389)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1099, N'Weekly', 2021, 7, 2, NULL, 483, 552, 147, 591, 653)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1100, N'Daily', 2021, 7, 2, 30, 749, 250, 560, 182, 982)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1101, N'Daily', 2016, 4, 2, 17, 948, 252, 328, 972, 272)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1102, N'Daily', 2020, 6, 2, 16, 851, 163, 205, 524, 963)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1103, N'Daily', 2014, 1, 2, 11, 430, 181, 980, 546, 15)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1104, N'Daily', 2016, 8, 2, 6, 764, 856, 7, 496, 505)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1105, N'Daily', 2012, 9, 2, 26, 858, 562, 197, 958, 364)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1106, N'Monthly', 2018, 10, NULL, NULL, 428, 356, 224, 621, 911)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1107, N'Weekly', 2018, 10, 2, NULL, 238, 562, 192, 400, 144)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1108, N'Daily', 2018, 10, 2, 8, 358, 14, 488, 772, 382)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1109, N'Daily', 2011, 8, 2, 14, 612, 833, 84, 882, 97)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1110, N'Daily', 2021, 5, 2, 29, 712, 51, 241, 354, 356)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1111, N'Daily', 2014, 12, 2, 4, 616, 970, 333, 356, 958)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1112, N'Daily', 2011, 2, 2, 16, 677, 25, 417, 72, 694)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1113, N'Daily', 2016, 12, 2, 3, 214, 30, 886, 169, 354)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1114, N'Daily', 2015, 12, 2, 16, 248, 690, 859, 741, 433)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1115, N'Daily', 2012, 9, 2, 4, 494, 794, 438, 465, 63)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1116, N'Daily', 2020, 2, 2, 31, 65, 907, 572, 954, 588)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1117, N'Daily', 2010, 5, 2, 3, 764, 371, 542, 352, 817)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1118, N'Daily', 2016, 4, 2, 7, 391, 923, 906, 99, 592)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1119, N'Daily', 2017, 7, 2, 15, 397, 977, 315, 936, 950)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1120, N'Daily', 2021, 12, 2, 26, 475, 874, 502, 694, 152)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1121, N'Daily', 2021, 5, 2, 21, 711, 158, 849, 265, 255)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1122, N'Daily', 2014, 6, 2, 29, 147, 756, 634, 713, 882)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1123, N'Daily', 2018, 1, 2, 28, 596, 173, 97, 987, 454)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1124, N'Daily', 2020, 12, 2, 13, 563, 942, 202, 493, 219)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1125, N'Daily', 2015, 12, 2, 14, 663, 917, 44, 136, 166)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1126, N'Daily', 2012, 9, 2, 15, 613, 61, 357, 685, 38)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1127, N'Daily', 2016, 4, 2, 1, 234, 435, 551, 67, 590)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1128, N'Daily', 2018, 3, 2, 19, 149, 119, 626, 631, 29)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1129, N'Daily', 2011, 4, 2, 8, 70, 315, 702, 784, 150)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1130, N'Daily', 2017, 1, 2, 6, 144, 767, 811, 607, 494)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1131, N'Daily', 2017, 7, 2, 10, 472, 466, 168, 185, 832)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1132, N'Daily', 2015, 9, 2, 2, 359, 566, 515, 56, 883)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1133, N'Daily', 2010, 12, 2, 9, 758, 994, 335, 350, 199)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1134, N'Daily', 2015, 2, 2, 16, 782, 720, 825, 442, 714)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1135, N'Daily', 2018, 9, 2, 7, 173, 311, 668, 502, 726)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1136, N'Daily', 2021, 10, 2, 26, 344, 563, 492, 432, 923)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1137, N'Daily', 2017, 3, 2, 25, 15, 845, 711, 82, 458)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1138, N'Daily', 2014, 8, 2, 6, 392, 560, 613, 20, 603)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1139, N'Daily', 2017, 7, 2, 9, 775, 881, 329, 491, 329)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1140, N'Daily', 2015, 11, 2, 12, 225, 361, 844, 675, 889)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1141, N'Daily', 2017, 9, 2, 12, 795, 87, 329, 894, 612)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1142, N'Daily', 2017, 3, 2, 9, 418, 100, 825, 313, 602)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1143, N'Daily', 2010, 8, 2, 26, 649, 753, 843, 82, 799)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1144, N'Daily', 2015, 7, 2, 9, 987, 743, 376, 555, 404)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1145, N'Daily', 2010, 10, 2, 24, 939, 89, 449, 574, 872)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1146, N'Daily', 2014, 7, 2, 19, 497, 519, 255, 27, 816)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1147, N'Daily', 2021, 11, 2, 7, 810, 437, 543, 569, 739)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1148, N'Daily', 2015, 10, 2, 7, 550, 835, 157, 547, 502)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1149, N'Monthly', 2016, 2, NULL, NULL, 202, 941, 555, 257, 293)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1150, N'Weekly', 2016, 2, 2, NULL, 806, 302, 751, 374, 457)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1151, N'Daily', 2016, 2, 2, 7, 230, 53, 938, 477, 635)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1152, N'Daily', 2019, 9, 2, 30, 551, 768, 340, 840, 987)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1153, N'Daily', 2020, 4, 2, 2, 195, 204, 638, 566, 365)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1154, N'Daily', 2016, 2, 2, 4, 754, 232, 862, 569, 674)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1155, N'Daily', 2010, 2, 2, 2, 422, 912, 226, 641, 76)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1156, N'Daily', 2019, 3, 2, 3, 948, 502, 155, 75, 643)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1157, N'Daily', 2018, 2, 2, 20, 58, 592, 274, 161, 131)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1158, N'Daily', 2012, 5, 2, 28, 516, 171, 414, 338, 10)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1159, N'Daily', 2013, 1, 2, 19, 970, 554, 378, 467, 943)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1160, N'Daily', 2021, 9, 2, 14, 127, 558, 785, 655, 492)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1161, N'Daily', 2012, 1, 2, 16, 653, 82, 619, 952, 101)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1162, N'Daily', 2014, 4, 2, 18, 827, 388, 582, 48, 216)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1163, N'Daily', 2015, 5, 2, 22, 604, 938, 582, 622, 857)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1164, N'Daily', 2018, 3, 2, 23, 699, 561, 324, 75, 273)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1165, N'Daily', 2020, 7, 2, 20, 274, 733, 420, 709, 211)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1166, N'Daily', 2011, 6, 2, 8, 686, 178, 290, 311, 791)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1167, N'Daily', 2015, 7, 2, 15, 742, 926, 672, 460, 976)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1168, N'Daily', 2015, 12, 2, 30, 462, 880, 751, 778, 156)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1169, N'Daily', 2021, 9, 2, 10, 700, 226, 671, 588, 599)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1170, N'Daily', 2013, 6, 2, 30, 445, 626, 492, 568, 483)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1171, N'Monthly', 2019, 2, NULL, NULL, 238, 462, 524, 326, 999)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1172, N'Weekly', 2019, 2, 2, NULL, 278, 206, 601, 255, 942)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1173, N'Daily', 2019, 2, 2, 26, 868, 95, 422, 128, 8)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1174, N'Daily', 2013, 7, 2, 3, 448, 160, 965, 638, 940)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1175, N'Daily', 2021, 10, 2, 31, 937, 767, 911, 391, 408)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1176, N'Daily', 2018, 10, 2, 6, 39, 763, 999, 824, 350)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1177, N'Daily', 2015, 11, 2, 3, 327, 4, 716, 646, 410)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1178, N'Daily', 2012, 11, 2, 21, 738, 795, 733, 764, 487)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1179, N'Daily', 2020, 4, 2, 10, 972, 323, 713, 472, 934)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1180, N'Daily', 2013, 3, 2, 11, 486, 780, 81, 0, 744)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1181, N'Daily', 2017, 10, 2, 16, 336, 763, 574, 192, 678)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1182, N'Daily', 2021, 1, 2, 9, 54, 999, 941, 500, 162)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1183, N'Daily', 2020, 4, 2, 26, 61, 797, 939, 315, 283)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1184, N'Daily', 2019, 1, 2, 3, 946, 163, 38, 539, 313)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1185, N'Daily', 2010, 7, 2, 24, 647, 915, 66, 160, 628)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1186, N'Daily', 2019, 2, 2, 3, 803, 894, 394, 419, 883)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1187, N'Daily', 2013, 8, 2, 13, 460, 938, 322, 314, 309)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1188, N'Daily', 2013, 1, 2, 10, 440, 540, 282, 771, 630)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1189, N'Daily', 2015, 2, 2, 18, 825, 602, 227, 806, 914)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1190, N'Daily', 2012, 6, 2, 17, 457, 221, 497, 651, 900)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1191, N'Daily', 2018, 8, 2, 30, 696, 222, 621, 742, 258)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1192, N'Daily', 2016, 6, 2, 20, 728, 134, 270, 938, 341)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1193, N'Daily', 2013, 5, 2, 16, 614, 971, 924, 412, 924)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1194, N'Daily', 2020, 10, 2, 20, 379, 735, 542, 961, 2)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1195, N'Daily', 2011, 6, 2, 17, 530, 617, 672, 174, 174)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1196, N'Daily', 2014, 6, 2, 4, 394, 117, 279, 428, 466)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1197, N'Daily', 2011, 1, 2, 9, 774, 818, 403, 196, 112)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1198, N'Daily', 2015, 6, 2, 8, 791, 235, 453, 271, 727)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1199, N'Daily', 2019, 2, 2, 28, 806, 121, 931, 386, 987)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1200, N'Daily', 2016, 4, 2, 24, 749, 667, 141, 266, 16)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1201, N'Daily', 2017, 9, 2, 26, 146, 870, 558, 498, 458)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1202, N'Daily', 2012, 7, 2, 25, 736, 836, 578, 513, 195)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1203, N'Daily', 2018, 6, 2, 17, 419, 683, 948, 993, 712)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1204, N'Daily', 2021, 6, 2, 23, 296, 487, 457, 634, 592)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1205, N'Daily', 2020, 1, 2, 3, 663, 122, 22, 430, 930)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1206, N'Daily', 2011, 8, 2, 19, 509, 272, 523, 670, 946)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1207, N'Daily', 2021, 2, 2, 27, 458, 984, 490, 554, 159)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1208, N'Daily', 2019, 2, 2, 30, 571, 421, 64, 951, 628)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1209, N'Daily', 2012, 2, 2, 10, 493, 116, 686, 321, 272)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1210, N'Daily', 2011, 9, 2, 25, 63, 207, 276, 993, 76)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1211, N'Daily', 2020, 7, 2, 14, 649, 295, 827, 240, 400)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1212, N'Daily', 2014, 7, 2, 20, 447, 310, 821, 834, 418)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1213, N'Daily', 2021, 10, 2, 8, 844, 131, 179, 375, 276)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1214, N'Daily', 2018, 4, 2, 1, 781, 775, 187, 651, 793)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1215, N'Daily', 2015, 8, 2, 2, 676, 397, 947, 686, 388)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1216, N'Daily', 2017, 3, 2, 16, 92, 160, 398, 39, 125)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1217, N'Daily', 2010, 5, 2, 21, 839, 261, 898, 138, 832)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1218, N'Daily', 2013, 7, 2, 27, 299, 506, 562, 841, 109)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1219, N'Daily', 2012, 12, 2, 28, 496, 818, 463, 735, 851)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1220, N'Daily', 2016, 11, 2, 10, 35, 296, 415, 895, 459)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1221, N'Daily', 2021, 3, 2, 3, 940, 160, 822, 148, 411)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1222, N'Daily', 2013, 8, 2, 20, 203, 574, 185, 507, 169)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1223, N'Daily', 2020, 3, 2, 10, 0, 548, 460, 684, 590)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1224, N'Daily', 2021, 5, 2, 24, 404, 374, 612, 886, 439)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1225, N'Daily', 2015, 7, 2, 20, 733, 692, 414, 48, 734)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1226, N'Daily', 2019, 5, 2, 29, 588, 121, 978, 733, 196)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1227, N'Daily', 2017, 5, 2, 9, 652, 833, 437, 80, 414)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1228, N'Daily', 2012, 9, 2, 24, 272, 384, 898, 429, 672)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1229, N'Daily', 2018, 12, 2, 12, 537, 958, 924, 737, 426)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1230, N'Daily', 2011, 8, 2, 17, 819, 808, 562, 272, 613)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1231, N'Daily', 2020, 7, 2, 7, 635, 664, 23, 902, 770)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1232, N'Daily', 2016, 1, 2, 18, 642, 430, 285, 9, 982)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1233, N'Daily', 2012, 1, 2, 15, 187, 304, 702, 593, 21)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1234, N'Daily', 2015, 1, 2, 5, 312, 32, 559, 0, 843)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1235, N'Daily', 2018, 5, 2, 21, 120, 289, 567, 930, 653)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1236, N'Daily', 2016, 3, 2, 14, 121, 102, 33, 56, 738)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1237, N'Daily', 2016, 2, 2, 30, 466, 975, 838, 506, 506)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1238, N'Daily', 2011, 11, 2, 9, 828, 950, 389, 967, 117)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1239, N'Daily', 2021, 7, 2, 5, 90, 343, 810, 938, 272)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1240, N'Daily', 2020, 3, 2, 11, 689, 841, 538, 34, 136)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1241, N'Daily', 2014, 11, 2, 10, 807, 170, 924, 550, 709)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1242, N'Daily', 2018, 8, 2, 26, 917, 868, 115, 122, 632)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1243, N'Daily', 2010, 2, 2, 14, 490, 972, 435, 519, 829)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1244, N'Daily', 2013, 11, 2, 8, 326, 785, 678, 696, 796)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1245, N'Daily', 2021, 10, 2, 27, 104, 842, 881, 335, 961)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1246, N'Daily', 2011, 10, 2, 1, 860, 584, 576, 919, 533)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1247, N'Daily', 2013, 4, 2, 18, 901, 380, 74, 131, 577)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1248, N'Daily', 2010, 3, 2, 20, 754, 947, 906, 956, 47)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1249, N'Daily', 2019, 7, 2, 8, 95, 132, 323, 232, 221)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1250, N'Daily', 2020, 8, 2, 27, 675, 379, 582, 718, 463)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1251, N'Daily', 2018, 2, 2, 14, 185, 279, 427, 424, 383)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1252, N'Daily', 2013, 7, 2, 6, 341, 270, 282, 24, 899)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1253, N'Daily', 2011, 1, 2, 10, 229, 696, 285, 259, 402)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1254, N'Daily', 2016, 2, 2, 18, 577, 530, 363, 932, 860)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1255, N'Daily', 2017, 12, 2, 16, 264, 826, 699, 312, 502)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1256, N'Daily', 2012, 12, 2, 26, 280, 488, 347, 504, 478)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1257, N'Daily', 2011, 2, 2, 30, 737, 356, 283, 828, 945)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1258, N'Daily', 2015, 4, 2, 29, 767, 475, 131, 650, 902)
GO
INSERT [dbo].[DataByTime] ([id], [Scope], [Year], [Month], [Week], [Day], [Total_User], [Total_Subject], [Total_Earning], [Total_Quizz], [Total_Registered]) VALUES (1259, N'Daily', 2012, 12, 2, 19, 66, 260, 526, 630, 614)
GO
SET IDENTITY_INSERT [dbo].[DataByTime] OFF
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (1, 1, 1, N'e', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (2, 6, 2, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (3, 8, 3, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (4, 10, 4, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (5, 15, 5, N'e', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (6, 5, 6, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (7, 2, 7, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (8, 8, 8, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (9, 3, 9, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (10, 1, 10, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (11, 2, 11, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (12, 4, 12, N'e', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (13, 4, 13, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (14, 5, 14, N'e', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (15, 5, 15, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (16, 5, 16, N'e', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (17, 11, 17, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (18, 14, 18, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (19, 12, 19, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (20, 13, 20, N'm', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (21, 6, 2, N'e', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 0, 50, 360)
GO
INSERT [dbo].[Exam] ([exam_id], [u_id], [s_id], [level], [created_date], [number_of_question], [status], [pass_rate], [duration]) VALUES (22, 6, 2, N'h', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 50, 1, 50, 360)
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (1, N'Introduction to Course', 1, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1633113088942-99089f4abffa?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 1, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (2, N'Key Pronunciation: Stress & Intonation', 2, N'https://youtu.be/n4NVPg2kHv4', N'https://media.istockphoto.com/photos/colorful-word-cards-picture-id1164241404?b=1&k=20&m=1164241404&s=170667a&w=0&h=NGh2sj4YqqcMHjI9iOZUnIu2wHAZGsmjFGvZfrtHXbc=', N'In this lesson, I will show you how to use the International Phonetic Alphabet (IPA) to practice English pronunciation. If you learn and practice with the IPA, you will be able to pronounce any English word in the dictionary - even if you have never heard it before! ', NULL, 1, NULL, N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (3, N'Practice Intonation', 3, NULL, N'https://media.istockphoto.com/photos/light-bulbs-drawn-on-colorful-sticky-notes-picture-id1226583757?b=1&k=20&m=1226583757&s=170667a&w=0&h=z_8cEHeU880V6isOXTsXbIKrNnkEJJW0iky5DhuxYu8=', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', N'In this lesson, you can learn about intonation in English. How important is intonation? Let’s see. Look at a sentence: Do you need some help?
By changing the intonation of this question, you can sound polite, annoyed, sarcastic, surprised, or many other things.
You can see that intonation is a very powerful tool. Controlling your intonation is important for communication in spoken English.
Learn all about intonation in English in this lesson, and be sure to leave a comment and let us know how you use intonation!', 1, NULL, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (4, N'Basics of Meeting Online', 1, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://images.unsplash.com/photo-1634125486933-df0e64f5bbca?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (5, N'Practice with Dialogues', 2, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://youtu.be/gaVg5S7NaxU', 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (6, N'Check Your Knowledge', 3, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', N'How Other Nations Pay for Child Care. The U.S. Is an Outlier.', 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (7, N'Lets Learn Telephone Language', 1, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (8, N'Phone Role Play', 2, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1633114130148-3f40987134d2?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', N'(CNN)Distributing Covid-19 vaccine booster shots in some countries while inoculations across Africa lag is "immoral," according to the director general of the World Health Organization (WHO).', 0, N'https://genk.vn/banh-mi-mon-an-co-lich-su-6000-nam-da-dat-nen-mong-cho-am-thuc-cua-chung-ta-hom-nay-20211005121406213.chn', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (9, N'Practice Stress', 3, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634157014713-23e5cd60b674?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://designervn.net/', 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (10, N'First Impressions: Body Language', 1, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634131820136-90e7bc708a67?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (11, N'Practice Body Language', 2, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (12, N'Check Your Knowledge', 3, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', N'The EMA says that people for people with normal immune systems, booster doses of BioNTech/Pfizer "may be considered at least 6 months after the second dose for people aged 18 years and older."', 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (13, N'Designing a Web Page with HTML and CSS', 1, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634121253265-3ac92bafc3d8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 44, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (14, N'Algorithms and Programming Concepts', 2, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634148969837-7feba3939ee3?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 44, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (15, N'JavaScript for Web Pages', 3, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634173760334-7fee63645be5?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 44, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (16, N'Fundamental Java Syntax and Semantics', 1, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', N'The increasing use of boosters is "immoral, unfair and unjust and it has to stop," WHO chief Tedros Adhanom Ghebreyesus told CNNs Becky Anderson on Tuesday.', 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://www.newyorker.com/culture/culture-desk/a-bad-case-of-scribble-brain', 45, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (17, N'Strings in Java', 2, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 45, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (18, N'CSV Files and Basic Statistics in Java', 3, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634148521111-c21852cf5788?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 45, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (19, N'Cryptography: Keeping Information Secret', 1, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1633951024782-23d1fe8413e0?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 46, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (20, N'GladLibs: Stories from Templates', 2, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 46, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (21, N'Web Server Logs: From Logs to Visits', 3, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', N'In September, the US Food and Drug Administration (FDA) authorized booster doses of Pfizers vaccine for certain people.', 0, N'https://designervn.net/threads/tng-hp-mockup-min-phi-danh-cho-designer.11086/', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 46, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (22, N'Earthquakes: Programming and Interfaces', 1, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 47, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (23, N'Earthquakes: Sorting Algorithms', 2, N'https://youtu.be/p2J7wSuFRl8', N'https://images.unsplash.com/photo-1634167825328-cdfb6bcfea90?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://www.newyorker.com/magazine/2021/10/11/the-ship-that-became-a-bomb?ref=usepanda.com', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 47, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Lesson] ([l_id], [name], [no], [video], [image], [content], [description], [status], [references], [documents], [topic_id], [createdTime]) VALUES (24, N'N-Grams: Predictive Text', 3, N'https://youtu.be/p2J7wSuFRl8', NULL, N'Professor Kagan introduces the course and the material that will be covered during the semester. He aims to clarify what the class will focus on in particular and which subjects it will steer away from. The emphasis will be placed on philosophical questions that arise when one contemplates the nature of death. The first half of the course will address metaphysical questions while the second half will focus on value theory.', NULL, 0, N'https://drive.google.com/file/d/1aYF45f6V2s2xsLWDgAPIvBZsBX-V6rrp/view?usp=sharing', N'https://drive.google.com/file/d/1aRfi_fj0aPaYOO4xC5OzWHtfXh4S4nfu/view?usp=sharing', 47, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[LessonTopic] ON 
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Entering the Job Market', 1, 1, 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Resumes', 1, 1, 2, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Writing a Cover Letter', 1, 1, 3, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Networking', 1, 1, 4, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Communicate in Person', 2, 1, 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Meet and Talk Online', 2, 1, 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Powerful Phone Talk', 2, 1, 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Keys to a Strong Interview', 2, 1, 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Verb Tenses and Passives', 3, 1, 9, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Conjunctions, Connectives, and Adverb Clauses', 3, 1, 10, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Noun Clauses and Conditionals', 3, 1, 11, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Advanced Grammar & Punctuation Project', 3, 1, 12, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Who are you?', 4, 1, 13, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'When do you go to school?', 4, 1, 14, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'What do you like to eat?', 4, 1, 15, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'I like Shopping!', 4, 1, 16, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Essentials of Vietnamese Confucian Thought', 5, 1, 17, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Essentials of Vietnamese Painting', 5, 1, 18, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Essentials of Vietnamese Music', 5, 1, 19, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Essentials of Vietnamese Costume', 5, 1, 20, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'MoML: Linear Algebra', 6, 1, 21, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'MoML: Multivariable Calculus', 6, 1, 22, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'MoML: PCA', 6, 1, 23, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Matrices', 7, 1, 24, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Systems of linear equations', 7, 1, 25, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Vector spaces', 7, 1, 26, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Eigenvalues and Eigenvectors', 7, 1, 27, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Fundamentals of Graphic Design', 8, 1, 28, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Typography', 8, 1, 29, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Imagemaking', 8, 1, 30, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Ideas from the History of Graphic Design', 8, 1, 31, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Visual Elements of User Interface Design', 9, 1, 32, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'UX Design Fundamentals', 9, 1, 33, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Web Design: Strategy and Information Architecture', 9, 1, 34, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Web Design: Wireframes to Prototypes', 9, 1, 35, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Brand Identity and Strategy', 10, 1, 36, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Brand & Content Marketing', 10, 1, 37, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'From Brand to Image: Creating High Impact Campaigns That Tell Brand Stories', 10, 1, 38, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Branding and Customer', 10, 1, 39, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'The Art of Music Production', 11, 1, 40, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'The Technology of Music Production', 11, 1, 41, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Pro Tools Basics', 11, 1, 42, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Music Production Capstone', 11, 1, 43, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Programming Foundations with JavaScript, HTML and CSS', 12, 1, 44, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Java Programming: Solving Problems with Software', 12, 1, 45, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Java Programming: Arrays, Lists, and Sructured Data', 12, 1, 46, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Java Programming: Principles of Software Design', 12, 1, 47, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Solving Problems with Software', 13, 1, 48, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Arrays, Lists, and Structured Data', 13, 1, 49, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Object oriented Programming in Java', 13, 1, 50, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Data Structures and Performance', 13, 1, 51, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Java', 14, 1, 52, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Object-Oriented Programming with Java', 14, 1, 53, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Object-Oriented Hierachies in Java', 14, 1, 54, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Java Class Library', 14, 1, 55, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Blockchain Technologies', 15, 1, 56, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Transacting on the Blockchain', 15, 1, 57, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Blockchain and Business: Applications and Implications', 15, 1, 58, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Blockchain Opportunity Analysis', 15, 1, 59, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Crypto and Cryptocurrencies', 16, 1, 60, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'How Bitcoin Achieves Decentralization', 16, 1, 61, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Mechanics of Bitcoin', 16, 1, 62, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'How to store and use Bitcoins', 16, 1, 63, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Foundations: Data, Data, Everywhere', 17, 1, 64, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Asks Questions to Make Data-Driven Decisions', 17, 1, 65, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Prepare Data for Exploration', 17, 1, 66, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Process Data from Dirty to Clean', 17, 1, 67, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Python Scripting for DevOps', 18, 1, 68, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Python Scripting: Dates, Classes and Collections', 18, 1, 69, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Python Scripting: Files, Inheritance, and Databases', 18, 1, 70, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'DevOps and Build Automation with Python', 18, 1, 71, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'The Importance of Velocity & The jobs of Delivery', 19, 1, 72, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Your Testing Stack', 19, 1, 73, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Infrastructure and The jobs of Ops', 19, 1, 74, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Delivering Continuously', 19, 1, 75, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Cloud Computing', 20, 1, 76, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Introduction to Web Development with HTML, CSS, JavaScript', 20, 1, 77, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Developing Cloud Native Applications', 20, 1, 78, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[LessonTopic] ([name], [s_id], [status], [topic_id], [createdTime]) VALUES (N'Developing Cloud Apps with Node.js and React', 20, 1, 79, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[LessonTopic] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (3, CAST(N'2021-11-07T17:28:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (4, CAST(N'2021-11-07T17:29:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (5, CAST(N'2021-11-07T17:29:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (6, CAST(N'2021-11-07T17:33:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (7, CAST(N'2021-11-07T17:35:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 16)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (8, CAST(N'2021-11-07T17:43:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (9, CAST(N'2021-11-07T17:48:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (10, CAST(N'2021-11-07T17:50:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
INSERT [dbo].[LoginHistory] ([h_id], [time], [OS], [browser], [u_id]) VALUES (11, CAST(N'2021-11-07T17:52:00' AS SmallDateTime), N'Windows 10', N'Google Chrome or Chromium', 1)
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (1, N'test                          ', N'des1                                                                                                                                                                                                                             ', CAST(N'2021-10-24T06:03:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (2, N'New user arrived              ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-24T06:20:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (3, N'New user arrived              ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-24T07:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (4, N'16has logined                 ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-24T07:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (5, N'16has logined                 ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-24T07:13:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (6, N'16has logined                 ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T07:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (7, N'16has logined                 ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T07:17:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (8, N'16has logined                 ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T07:28:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (9, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T07:30:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (10, N'20 has logined                ', N'HelloCao Ba                                                                                                                                                                                                                      ', CAST(N'2021-10-24T07:35:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (11, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T07:43:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (12, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T09:51:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (13, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T14:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (14, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T14:59:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (15, N'20 has logined                ', N'HelloCao Ba                                                                                                                                                                                                                      ', CAST(N'2021-10-24T15:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (16, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T15:03:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (17, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T15:13:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (18, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T15:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (19, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T15:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (20, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-24T15:25:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (21, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-26T20:32:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (22, N'User 1 Has Been Edited By 16  ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-26T20:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (23, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T09:48:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (24, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:02:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (25, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:06:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (26, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:07:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (27, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (28, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:09:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (29, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:09:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (30, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (31, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:14:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (32, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (33, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T10:22:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (34, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T15:05:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (35, N'16 has logined                ', N'HelloTran Van                                                                                                                                                                                                                    ', CAST(N'2021-10-31T16:22:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (36, N'New user arrived              ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-31T16:24:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (37, N'New user arrived              ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-31T16:25:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (38, N'1 has logined                 ', N'HelloDuong Trung                                                                                                                                                                                                                 ', CAST(N'2021-10-31T16:39:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (39, N'User 1 Has Been Edited By 1   ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-10-31T16:42:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (40, N'1 has logined                 ', N'HelloDuong Trung                                                                                                                                                                                                                 ', CAST(N'2021-11-01T07:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (41, N'1 has logined                 ', N'HelloDuong Trung                                                                                                                                                                                                                 ', CAST(N'2021-11-01T21:23:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (42, N'1 has logined                 ', N'HelloDuong Trung                                                                                                                                                                                                                 ', CAST(N'2021-11-01T22:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (43, N'User 1 Has Been Edited By 1   ', N'Hello                                                                                                                                                                                                                            ', CAST(N'2021-11-01T22:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (44, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-06T21:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (45, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-06T21:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (46, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-06T21:43:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (48, N'huydthe150252 tried to login  ', N'Logined Fail                                                                                                                                                                                                                     ', CAST(N'2021-11-07T17:19:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (49, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:19:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (50, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:26:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (51, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:26:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (52, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:27:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (53, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:27:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (54, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:28:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (55, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:28:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (56, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:29:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (57, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:29:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (58, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (59, N'Duong TrungHuy tried to logout', N'Logouted Success                                                                                                                                                                                                                 ', CAST(N'2021-11-07T17:35:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (60, N'Tran VanAn tried to login     ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:35:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (61, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:43:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (62, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:48:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (63, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Notification] ([ID], [Title], [Description], [Time]) VALUES (64, N'Duong TrungHuy tried to login ', N'Logined Success                                                                                                                                                                                                                  ', CAST(N'2021-11-07T17:52:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (1, 1, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (2, 2, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (3, 2, 43, 0, N'usd', 30, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (4, 3, 43, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (5, 4, 43, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (6, 5, 43, 1, N'usd', 70, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (7, 6, 43, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (8, 7, 43, 1, N'usd', 50, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (9, 8, 29, 1, N'usd', 50, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (10, 9, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (11, 10, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (12, 11, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (13, 12, 29, 1, N'usd', 50, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (14, 13, 29, 1, N'usd', 50, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (15, 14, 39, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (16, 15, 39, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (17, 16, 34, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (18, 17, 39, 0, N'usd', 70, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (19, 17, 29, 1, N'usd', 30, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (20, 18, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (21, 19, 43, 0, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (22, 19, 29, 1, N'usd', NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePackage] ([price_id], [s_id], [price], [status], [currency_unit], [discount], [description], [createdTime]) VALUES (23, 20, 43, 1, N'usd', 30, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[QuestionBank] ON 
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'When Python is running in the interactive mode and displaying the chevron prompt (>>>) - what question is Python asking you?', N'm', N'What would you like to do?', 1, NULL, N'This is the explaination', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Python scripts (files) have names that end with:', N'm', N'.py', 1, NULL, N'This is the explaination', 2, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Which of the parts of a computer actually executes the program instructions?', N'm', N'Central Processing Unit', 1, NULL, N'This is the explaination', 3, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'What is "code" in the context of this course?', N'm', N'A sequence of instructions in a programming language', 1, NULL, N'This is the explaination', 4, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'A USB memory stick is an example of which of the following components of computer architecture?', N'm', N'Secondary Memory', 1, NULL, N'This is the explaination', 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'What is the best way to think about a "Syntax Error" while programming?', N'm', N' The computer did not understand the statement that you entered', 1, NULL, N'This is the explaination', 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'What does the Python input() function do?', N'm', N'Pause the program and read data from the user', 1, NULL, N'This is the explaination', 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Which Python keyword indicates the start of a function definition?', N'm', N'def', 1, NULL, N'This is the explaination', 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'In Python what is the input() feature best described as?', N'm', N'A built-in function', 1, NULL, N'This is the explaination', 9, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'What is the most important benefit of writing your own functions?', N'm', N'Avoiding writing the same non-trivial code more than once in your program', 1, NULL, N'This is the explaination', 10, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'When getting into troubles, Jack never ____ on other people for help. He always solves them on his own.', N'e', N'relies', 2, NULL, NULL, 11, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'He suffered ____ serious depression after losing his beloved pet.', N'e', N'from', 2, NULL, NULL, 12, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It was essential for him to be financially ____ of his parents, so he decided to find a part-time job.', N'e', N'independent', 2, NULL, NULL, 13, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Thanks to many investors, my dream to set up my own trading company came ____.', N'h', N' true', 2, NULL, NULL, 14, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Our enterprise is seeking for candidates who are ____ and hard-working.', N'h', N'reliable', 2, NULL, NULL, 15, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'I was encouraged to ____ for the grandest prize in the dancing competition.', N'e', N'strive', 2, NULL, NULL, 16, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'That Tom is ____ of finishing the research project prior to the deadline satisfied our manager.', N'h', N'capable', 2, NULL, NULL, 17, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'We have divided the group report into three parts and you are ____ for the conclusion one.', N'e', N'responsible', 2, NULL, NULL, 18, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'You should make a list of things to do and ____ them if you want to work effectively.', N'e', N'prioritise', 3, NULL, NULL, 19, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N' If you choose to study abroad, you have to live ____ from home.', N'e', N'away', 3, NULL, NULL, 20, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'My parents are glad ____ my success in finding a job after graduation.', N'e', N'to see', 3, NULL, NULL, 21, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It is not ____ for him to take charge of the financial burden on his family.', N'e', N'easy', 3, NULL, NULL, 22, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'My teacher always gives me advice ____ suitable career in the future.', N'm', N' to choose', 3, NULL, NULL, 23, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'We are ____ to announce that you were selected to be our new faculty manager.', N'm', N'happy', 3, NULL, NULL, 24, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It is unnecessary for ____ to do this task. It is not ours.', N'e', N'us', 3, NULL, NULL, 25, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'She left a message with a request ____ in the contract.', N'h', N'not to sign', 3, NULL, NULL, 26, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'I found it truly ____ to hear that Mr. Kim had been appointed to the committee.', N'h', N'surprised', 4, NULL, NULL, 27, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Do not be afraid ____ me if you have any further queries.', N'e', N'to ask', 4, NULL, NULL, 28, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It is ____ for us to submit the project on time as it is really difficult.', N'e', N'impossible', 4, NULL, NULL, 29, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It would be unreasonable ____ him ____ you money if you did not pay it back.', N'm', N'to expect/to lend', 4, NULL, NULL, 30, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'His ability ____ mathematics in a short time is wholly admirable.', N'm', N'to work out', 4, NULL, NULL, 31, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'We are disappointed ____ that our sales have declined sharply in the last 2 months.', N'h', N'to heard', 4, NULL, NULL, 32, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“What does your younger sister look like?” – “____”', N'e', N'She is tall and thin with long hair.', 4, NULL, NULL, 33, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“Could I leave a message for your manager?” – “____”', N'm', N' Sure', 4, NULL, NULL, 34, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“How often do you have your teeth checked?” – “____”', N'h', N'They are checked carefully.', 5, NULL, NULL, 35, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'"Many happy returns!” –“____”', N'h', N'Thanks.', 5, NULL, NULL, 36, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“How long have you learnt Japanese?” – “____”', N'e', N'Since I was 10.', 5, NULL, NULL, 37, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'"Is it going to rain tomorrow?” – “____”', N'h', N'I do not hope so.', 5, NULL, NULL, 38, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'"You look very pretty in this dress." – “____”', N'e', N'It is so nice of you to say that.', 5, NULL, NULL, 39, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“Huy has not finished his assignment, has he?" – “____”', N'm', N' No, he has not because of his illness.', 5, NULL, NULL, 40, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“When will our factory be expanded?” – “____”', N'e', N'It depends on our director decision.', 5, NULL, NULL, 41, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“You are late again, Peter.” – “____”', N'm', N'I am sorry. My car was broken this morning.', 5, NULL, NULL, 42, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“I am meeting some friends for a meal in town tomorrow. Fancy joining us?” – “____”', N'h', N'I am not sure. What time?', 6, NULL, NULL, 43, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'"Can you give me some information about the city?” – “____”', N'h', N'Certainly.', 6, NULL, NULL, 44, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“Excuse me. I have a reservation for tonight.” – “____”', N'h', N'Just a moment, please, while I check.', 6, NULL, NULL, 45, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'"Do not forget. We are invited out to dinner tonight.” – “____”', N'h', N' No, he has not because of his illness.', 6, NULL, NULL, 46, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“Huy has not finished his assignment, has he?" – “____”', N'h', N'Oh, I almost forgot.', 6, NULL, NULL, 47, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Dr. Jonas can see you next Thursday. Do you prefer morning or afternoon?', N'e', N'Morning is best for me.', 6, NULL, NULL, 48, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Thank you for your kind offer ____ a dinner at your apartment. It was excellent.', N'e', N'to have', 6, NULL, NULL, 49, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'All that was left for breakfast was some _____ and tea.', N'e', N'to have', 6, NULL, NULL, 50, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Anna often dresses _____ when going to the parties in order to attract her friends attention.', N'h', N'flashily', 7, NULL, NULL, 51, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'We are surprised by Joe _____ every Monday. He changes it at least 4 times a month.', N'e', N'hairstyle', 7, NULL, NULL, 52, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Many parents are worried that their children will get involved _____ a romantic relationship in their teenage years.', N'm', N'in', 7, NULL, NULL, 53, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'This drink is not beneficial for health. You _____ drink it too much.', N'e', N'ought not to', 7, NULL, NULL, 54, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'She looks _____ in that dress.', N'm', N'attractive', 7, NULL, NULL, 55, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'They were finally _____ with each other after a big argument.', N'h', N'reconciled', 7, NULL, NULL, 56, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It is time I _____.', N'h', N'carried on', 7, NULL, NULL, 57, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'She is happy _____ that he drove all the way to see her.', N'e', N'to know', 8, NULL, NULL, 58, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Parents should try to see things from a teenager’s _____.', N'm', N'viewpoint', 8, NULL, NULL, 59, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'The chef tasted the meat _______ before carefully serving it to his special guest.', N'h', N'cautiously', 8, NULL, NULL, 60, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'My grandpa is the most _______ person in my family. He never changes his mind about way of life.', N'h', N'conservative', 8, NULL, NULL, 61, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'My parents never try to impose _______ their on us.', N'm', N'decision', 8, NULL, NULL, 62, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Last night`s leftover food in the fridge _______ awful. Do not eat it.', N'e', N'smells', 8, NULL, NULL, 63, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It is your parents _______ you should really speak to when you have problems', N'e', N'that', 8, NULL, NULL, 64, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'The behaviour that is considered correct while you are having a meal at a table with other people is called _____.', N'm', N'table manners', 8, NULL, NULL, 65, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Someone who is opposed to great or sudden social changes and showing that she / he prefers traditional styles and values is a ______ person', N'h', N'conservative', 9, NULL, NULL, 66, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'_______ is a family group with a close relationship among the members that includes not only parents and children but also uncles, aunts, grandparents, etc.', N'h', N'extended family', 9, NULL, NULL, 67, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Mothers often _______ themselves for their children.', N'e', N'sacrifice', 9, NULL, NULL, 68, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Being well-informed will _______ you from being a follower.', N'h', N'keep', 9, NULL, NULL, 69, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Over the past few years, in both the USA and the UK, the number of multi-generational households with three or four generations living ______ has increased.', N'm', N'under the same roof', 9, NULL, NULL, 70, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N' “When will our factory be expanded?" - ______ ', N'e', N'It depends on our director`s decision.', 7, NULL, NULL, 71, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Pha: "From my point of view, all family members should share the chores equally."
        - Tam: “____________________.”', N'm', N'There is no doubt about it.', 9, NULL, NULL, 72, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Billy did not find his cat in the garden. He found it in the garage.', N'm', N'keep', 9, NULL, NULL, 73, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Billy did not find his cat in the garden. He found it in the garage.', N'm', N'It wasn`t the garden that Billy did not find his cat.', 10, NULL, NULL, 74, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'“I will come back home soon,” he said.', N'e', N'He promised to come back home soon.', 10, NULL, NULL, 75, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Stop giving me a hard time, I could not do anything about it.', N'h', N'Don`t make me feel guilty because I couldn`t do anything about it.', 10, NULL, NULL, 76, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It is unlikely that he will come on time.', N'e', N'It looks as if he will come late.', 10, NULL, NULL, 77, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'I was encouraged to ____ for the grandest prize in the dancing competition.', N'h', N'strive', 10, NULL, NULL, 78, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'____ time-management skill is a core requirement for this job.', N'm', N'Mastering', 10, NULL, NULL, 79, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Despite my parents`s disagreement, I`m ____ to drop out of university and establish my own business.', N'h', N'determined', 10, NULL, NULL, 80, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'In spite of being the new resident in this area, he always tries to ____ with his neighbours.', N'm', N'get along well', 10, NULL, NULL, 81, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Their close friendship ____ a romantic relationship.', N'm', N'turns into', 11, NULL, NULL, 82, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It`s time I ____ and raised a family.', N'h', N'settled down', 11, NULL, NULL, 83, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'I have been very ____ up to this point, but I am going to lose my temper if you don`t find my baggage immediately.', N'm', N'patient', 11, NULL, NULL, 84, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'You seem more ____ now.', N'e', N'relaxed', 11, NULL, NULL, 85, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Terry has been carrying a torch for Liz for years, but she seems not_______.', N'e', N'to notice', 11, NULL, NULL, 86, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Many parents are worried that their children will get involved ____ a romantic relationship in their teenage years.', N'm', N'in', 11, NULL, NULL, 87, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'If you have feelings for someone, then you have worked up the ____ to ask them out.', N'e', N'courage', 11, NULL, NULL, 88, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'It would be unreasonable ____ him ____ you money if you did not pay it back.', N'e', N'to expect/to lend', 12, NULL, NULL, 89, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'His ability ____ mathematics in a short time is wholly admirable.', N'e', N'to work out', 12, NULL, NULL, 90, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'We are disappointed ____ that our sales have declined sharply in the last 2 months.', N'e', N'to heard', 12, NULL, NULL, 91, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'After failing many times in ____ a new dish, she made a decision ____.', N'e', N'creating/to give up', 12, NULL, NULL, 92, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'An important rule in Tim`s family is that they have to pay _______ visits to their grandparents in the countryside.', N'e', N'regular', 12, NULL, NULL, 93, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Tim`s parents were so strict; they didn`t let him _______ computer games.', N'e', N'play', 12, NULL, NULL, 94, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'Some teenagers are so stubborn and refuse to _______ their parents`s advice.', N'e', N'follow', 12, NULL, NULL, 95, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'The Brown are a new family here. They don`t know where the largest market is ________.', N'e', N'located', 12, NULL, NULL, 96, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'I don`t know what to say to break the ____ with someone I`ve just met at the party.', N'h', N'ice', 11, NULL, NULL, 97, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES (N'test', N'e', N'cx kinh', 1, N'', N'hmmmm', 98, CAST(N'2021-10-31T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[QuestionBank] OFF
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (1, N'What Python script would you like me to run?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (1, N'What is your favourite color?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (1, N'What would you like to do?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (1, N'What is the next machine language instruction to run?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (2, N'.py', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (2, N'.exe', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (2, N'.png', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (2, N'.doc', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (3, N'Main Memory', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (3, N'Central Processing Unit', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (3, N'Input/Output Devices', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (3, N'Secondary Memory', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (4, N'A password we use to unlock Python features', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (4, N'A sequence of instructions in a programming language', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (4, N'A way to encrypt data during World War II', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (4, N'A set of rules that govern the style of programs', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (5, N'Central Processing Unit', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (5, N'Main Memory', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (5, N'Output Device', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (5, N'Secondary Memory', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (6, N'The computer is overheating and just wants you to stop to let it cool down', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (6, N'The computer has used GPS to find your location and hates everyone from your town', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (6, N'The computer did not understand the statement that you entered', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (6, N'The computer needs to have its software upgraded', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (7, N'Pause the program and read data from the user', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (7, N'Connect to the network and retrieve a web page.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (7, N'Read the memory of the running program', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (7, N'Take a screen shot from an area of the screen', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (8, N'return', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (8, N'rad', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (8, N'def', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (8, N'continue', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (9, N'A reserved word', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (9, N'A data structure that can hold multiple values using strings as keys', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (9, N'A user-defined function', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (9, N'A built-in function', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (10, N'Following the rule that no function can have more than 10 statements in it', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (10, N'Avoiding writing the same non-trivial code more than once in your program', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (10, N'Following the rule that whenever a program is more than 10 lines you must use a function', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (10, N'All three other choices', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (11, N'determines', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (11, N'influences', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (11, N'relies', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (11, N'manages', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (12, N'in', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (12, N'influences', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (12, N'with', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (12, N'for', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (13, N'dependent', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (13, N' independent', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (13, N'dependable', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (13, N'undependable', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (14, N'exactly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (14, N'real', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (14, N'right', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (14, N'true', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (15, N'reliant', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (15, N'reliance', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (15, N'unreliable', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (15, N'reliable', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (16, N'try', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (16, N'strive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (16, N'reach', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (16, N'achieve', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (17, N'able', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (17, N'skillful', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (17, N'capable', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (17, N'talented', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (18, N'responsible', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (18, N'irresponsible', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (18, N'response', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (18, N'responsive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (19, N'do', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (19, N'arrange', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (19, N'prioritise', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (19, N'approach', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (20, N'on', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (20, N'away', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (20, N'in', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (20, N'up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (21, N'to see', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (21, N'seeing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (21, N'see', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (21, N'saw', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (22, N'boring', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (22, N'expensive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (22, N'easy', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (22, N'mind', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (23, N'choosing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (23, N'choose', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (23, N'to choose', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (23, N'not to choose', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (24, N'happily', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (24, N'unhappy', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (24, N'happiness', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (24, N'happy', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (25, N'we', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (25, N'us', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (25, N'they', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (25, N'our', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (26, N'not to sign', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (26, N'not sign', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (26, N'to not sign', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (26, N'do not sign', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (27, N'surprise', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (27, N'surprised', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (27, N'surprising', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (27, N'surprisingly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (28, N'not to ask', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (28, N'asking', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (28, N'to asking', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (28, N'to ask', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (29, N'possible', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (29, N'simple', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (29, N'impossible', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (29, N'unexpected', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (30, N'to expect/lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (30, N'to expect/to lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (30, N'expect/to lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (30, N'expecting/lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (31, N'not to work out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (31, N'work out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (31, N'to work out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (31, N'working out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (32, N'to hear', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (32, N'to heard', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (32, N'not to hear', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (32, N'hearing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (33, N'She likes a secondary student.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (33, N'My sister is a university student.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (33, N'She is very kind and hard working.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (33, N'She is tall and thin with long hair.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (34, N' Sure', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (34, N'Of course not.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (34, N'He is busy now.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (34, N'He is off work today.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (35, N'Two months', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (35, N'Not much.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (35, N'Rarely.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (35, N'They are checked carefully.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (36, N'Wish you all the best.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (36, N'Thanks.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (36, N'Same to you.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (36, N'Not at all.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (37, N'For 2005.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (37, N'I learnt it at my university.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (37, N'Since I was 10.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (37, N'It lasted 3 months.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (38, N'I think not.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (38, N'I bet.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (38, N'Just a moment.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (38, N'I do not hope so.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (39, N'It is so nice of you to say that.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (39, N'Yes, it is fairly expensive.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (39, N'I see what you mean.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (39, N'Thanks for your wish.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (40, N'Yes, he has. He has not finished it yet.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (40, N'Yes, he has not. He is too lazy.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (40, N'No, he has in spite of being a good student.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (40, N'No, he has not because of his illness.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (41, N'It was expanded in 1996.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (41, N'It depends on our director decision.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (41, N'I did not hear about it.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (41, N'That is good news.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (42, N'It is none of your business.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (42, N'Only 5 minutes left.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (42, N'I am sorry. My car was broken this morning.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (42, N'I expect not to be fired.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (43, N'That is fine.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (43, N'What is the time now?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (43, N'I am not sure. What time?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (43, N'Fine. I will not!', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (44, N'Great. Thanks very much.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (44, N'No. I am afraid not.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (44, N' I can not help doing it.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (44, N'Certainly.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (45, N'Just a moment, please, while I check.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (45, N'I liked that one, too.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (45, N'Wonderful! I would like to hear some of your ideas.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (45, N'What is up?', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (46, N'Yes, he has. He has not finished it yet.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (46, N'Yes, he has not. He is too lazy.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (46, N'No, he has in spite of being a good student.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (46, N' No, he has not because of his illness.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (47, N'Oh, I almost forgot.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (47, N'It is so unforgettable.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (47, N'OK, I will try it first.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (47, N'I remember you.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (48, N'That would be fine.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (48, N'Morning is best for me.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (48, N'I am looking forward to seeing you.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (48, N'Thank you very much.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (49, N'having', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (49, N'to have', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (49, N'had', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (49, N'have', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (50, N'having', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (50, N'to have', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (50, N'had', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (50, N'have', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (51, N'plainly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (51, N'properly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (51, N'flashily', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (51, N'soberly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (52, N'hairstyle', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (52, N'lifestyle', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (52, N'viewpoint', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (52, N'manner', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (53, N'for', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (53, N'in', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (53, N'on', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (53, N'with', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (54, N'should', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (54, N'ought to not', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (54, N'ought not to', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (54, N'must not', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (55, N'attractively', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (55, N'attractive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (55, N'unattractively', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (55, N'attracted', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (56, N'reconciled', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (56, N'persuaded', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (56, N'interested', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (56, N'give up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (57, N'carried on', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (57, N'grew up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (57, N'settled down', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (57, N'worked on', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (58, N'to know', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (58, N'know', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (58, N'knowing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (58, N'knows', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (59, N'difference', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (59, N'choice', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (59, N'conflicts', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (59, N'viewpoint', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (60, N'cautious', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (60, N'carefull', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (60, N'cautiously', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (60, N'carelessly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (61, N'conservative', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (61, N'open-minded', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (61, N'friendly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (61, N'outgoing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (62, N'decide', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (62, N'decisive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (62, N'decided', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (62, N'decision', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (63, N'smell', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (63, N'smells', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (63, N'smelling', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (63, N'is smelling', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (64, N'which', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (64, N'that', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (64, N'where', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (64, N'when', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (65, N'table set', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (65, N'table laying', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (65, N'table mat', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (65, N'table manners', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (66, N'enthusiastic', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (66, N'conservative', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (66, N'sympathetic', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (66, N'unfriendly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (67, N'nuclear family', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (67, N'blended family', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (67, N'extended family', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (67, N'stepfamily', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (68, N'die', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (68, N'devote', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (68, N'sacrifice', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (68, N'give', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (69, N'suffer', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (69, N'keep', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (69, N'end', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (69, N'escape', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (70, N'under the same roof', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (70, N'under the same building', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (70, N'on the same roof', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (70, N'just the same', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (71, N'It was expanded in 1996.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (71, N'That`s good news.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (71, N'I did nôt hear about it.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (71, N'It depends on our director`s decision.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (72, N'It is a breathtaking view.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (72, N'You lied to me.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (72, N'But you are right.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (72, N'There is no doubt about it.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (73, N'suffer', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (73, N'keep', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (73, N'end', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (73, N'escape', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (74, N'It was the garden and garage that Billy found his cat.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (74, N'It wasn`t the garden that Billy did not find his cat.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (74, N'It wasn`t in the garden but in the garage that Billy found his cat.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (74, N'Billy could not find his cat anywhere, even in the garage.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (75, N'He advised to come back home soon.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (75, N'He offered to come back home soon.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (75, N'He promised to come back home soon.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (75, N'He suggested that he should come back home soon.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (76, N'Don`t make me feel guilty because I couldn`t do anything about it.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (76, N'I could not do anything about it because I am going through a hard time.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (76, N'Going through a hard time doesn`t help me do anything about it.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (76, N'I couldn`t do anything about it so I would stop.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (77, N'He is unlikely to come early.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (77, N'It is likely that he will not come too late.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (77, N'It looks as if he will come late.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (77, N'It seems that he will come lately.', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (78, N'try', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (78, N'strive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (78, N'reach', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (78, N'achieve', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (79, N'Solving', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (79, N'Adapting', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (79, N'Developing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (79, N'Mastering', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (80, N'determined', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (80, N'confident', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (80, N'successful', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (80, N'All are correct', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'catch up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'go in', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'put up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'get along well', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'air', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'ice', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'leg', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (81, N'rule', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (82, N'brings about', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (82, N'puts up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (82, N'takes over', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (82, N'turns into', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (83, N'carried on', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (83, N'grew up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (83, N'settled down', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (83, N'worked out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (84, N'impatiently', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (84, N'impatient', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (84, N'patient', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (84, N'patiently', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (85, N'relaxed', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (85, N'relax', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (85, N'relaxing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (85, N'relaxingly', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (86, N'been noticed', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (86, N'notice', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (86, N'noticing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (86, N'to notice', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (87, N'for', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (87, N'in', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (87, N'on', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (87, N'with', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (88, N'encourage', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (88, N'encouragement', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (88, N'courage', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (88, N'courageous', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (89, N'to expect/lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (89, N'to expect/to lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (89, N'expect/to lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (89, N'expecting/lend', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (90, N'not to work out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (90, N'work out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (90, N'to work out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (90, N'working out', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (91, N'to hear', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (91, N'to heard', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (91, N'not to hear', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (91, N'hearing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (92, N'creating/giving up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (92, N'to create/to give up', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (92, N'to create/give up ', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (92, N'creating/to give up ', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (93, N'customary', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (93, N'normal', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (93, N'usual', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (93, N'regular', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (94, N'play', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (94, N'playing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (94, N'to play', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (94, N'be playing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (95, N'receive', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (95, N'bring', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (95, N'follow', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (95, N'regard', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (96, N'located', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (96, N'standing', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (96, N'lied', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (96, N'situating', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (98, N'cx kinh', CAST(N'2021-10-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (98, N'1', CAST(N'2021-10-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (98, N'2', CAST(N'2021-10-31T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[QuestionChoices] ([QuestionId], [Option], [createdTime]) VALUES (98, N'3', CAST(N'2021-10-31T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 
GO
INSERT [dbo].[Quiz] ([q_id], [u_id], [topic_id], [required_time], [taken_date], [score], [status], [condition], [time]) VALUES (8, 16, 7, N'37', CAST(N'2021-10-31T10:40:00' AS SmallDateTime), 0, 1, 0, N'36:47')
GO
INSERT [dbo].[Quiz] ([q_id], [u_id], [topic_id], [required_time], [taken_date], [score], [status], [condition], [time]) VALUES (9, 16, 6, N'37', CAST(N'2021-10-31T15:16:00' AS SmallDateTime), 0, 1, 0, N'36:31')
GO
INSERT [dbo].[Quiz] ([q_id], [u_id], [topic_id], [required_time], [taken_date], [score], [status], [condition], [time]) VALUES (10, 16, 5, N'9', CAST(N'2021-10-31T16:24:00' AS SmallDateTime), 6, 1, 1, N'8:20')
GO
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[QuizTaken] ON 
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (61, 8, NULL, 1, 141)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (59, 8, NULL, 1, 142)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (63, 8, N'smelling', 1, 143)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (66, 8, N'conservative', 1, 144)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (72, 8, NULL, 1, 145)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (53, 8, NULL, 1, 146)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (52, 8, N'manner', 1, 147)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (62, 8, N'decisive', 1, 148)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (69, 8, N'keep', 1, 149)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (68, 8, NULL, 1, 150)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (58, 8, NULL, 1, 151)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (71, 8, NULL, 1, 152)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (56, 8, N'persuaded', 1, 153)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (55, 8, NULL, 1, 154)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (65, 8, NULL, 1, 155)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (51, 8, NULL, 1, 156)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (70, 8, N'under the same roof', 1, 157)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (73, 8, NULL, 1, 158)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (67, 8, N'extended family', 1, 159)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (60, 8, NULL, 1, 160)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (57, 8, N'grew up', 1, 161)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (37, 9, NULL, 1, 162)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (39, 9, NULL, 1, 163)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (29, 9, NULL, 1, 164)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (27, 9, N'surprisingly', 1, 165)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (43, 9, NULL, 1, 166)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (45, 9, NULL, 1, 167)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (35, 9, NULL, 1, 168)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (47, 9, NULL, 1, 169)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (46, 9, NULL, 1, 170)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (42, 9, NULL, 1, 171)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (36, 9, NULL, 1, 172)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (38, 9, NULL, 1, 173)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (33, 9, NULL, 1, 174)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (49, 9, NULL, 1, 175)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (30, 9, N'to expect/lend', 1, 176)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (48, 9, NULL, 1, 177)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (44, 9, NULL, 1, 178)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (31, 9, NULL, 1, 179)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (32, 9, NULL, 1, 180)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (28, 9, N'not to ask', 1, 181)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (41, 9, NULL, 1, 182)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (21, 10, N'to see', 1, 183)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (5, 10, N'Central Processing Unit', 1, 184)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (17, 10, N'capable', 1, 185)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (18, 10, N'responsible', 1, 186)
GO
INSERT [dbo].[QuizTaken] ([b_id], [q_id], [user_result], [status], [taken_id]) VALUES (12, 10, N'for', 1, 187)
GO
SET IDENTITY_INSERT [dbo].[QuizTaken] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'English for Career Development', 1, 26, N'This course is designed for non-native English speakers who are interested in advancing their careers in the global marketplace.  In this course, you will learn about the job search, application, and interview process in the United States, while comparing and contrasting the same process in your home country.', 0, N'https://th.bing.com/th/id/OIP.rDFKuHWE2loRkegtRYyFpAHaEC?pid=ImgDet&w=1480&h=808&rs=1', N'FPT University', N'https://fpt.edu.vn/Content/images/assets/img-logo-fe.png', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Speak English Professionally', 1, 29, N'Do you want to speak better English? This course will help you reach that goal. Speak English Professionally: In person, Online and On the Phone will boost your English speaking skills. In this 5 week course, you will learn how to identify and make a strong personal introduction.', 1, N'https://ieltsamericas.com/wp-content/uploads/2017/02/man-speaking-english.png', N'Havard University', N'https://th.bing.com/th/id/OIP.ixJlQpQGon62rGWW_U_YHQHaHa?pid=ImgDet&rs=1', 2, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Grammar and Punctuation', 1, 26, N'Do you need to review English grammar? Have you forgotten the grammar you once studied? If so, this course is perfect for you.', 1, N'https://cheaptraining.com/wp-content/uploads/2020/10/AdobeStock_103437308-2.jpeg', N'GLN Organizartion', N'https://th.bing.com/th/id/R.8271c2f3153964c7393497f4bfa1505b?rik=I3yB%2bp0i4BkgIA&pid=ImgRaw&r=0', 3, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Vietnamese for Beginner', 2, 21, N'Nowadays, there is an increasing number of people who are interested in Vietnamese culture and language. And it is useful to know about the language when coming to Vietnam for travel or business. This is an ABC Vietnamese course for beginners, including introduction of phonetics and daily expressions.', 1, N'https://sachdaylamgiau.com/wp-content/uploads/2018/12/vietnamese-course-for-beginners.jpg', N'HUST University', N'https://th.bing.com/th/id/R.0645d5e3970f99b74207f30bdaf0a60c?rik=%2bU2Yyjz0PRRoqA&pid=ImgRaw&r=0', 4, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Vietnamese Culture and Contemporary Vietnam', 2, 21, N'This course of Vietnamese Culture and Contemporary China will explore the foundations of Vietnamese civilization and the dimensions of Vietnamese culture. It will pay particular attention to the relationship between Vietnamese culture and the present-day life of the Vietnamese people.', 1, N'https://s3-ap-southeast-2.amazonaws.com/cae-wp-user-uploads/app/uploads/2016/08/18023259/Vietnam_banner_4000x2250.jpg', N'FPT University', N'https://fpt.edu.vn/Content/images/assets/img-logo-fe.png', 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Mathematics for Machine Learning', 3, 22, N'For a lot of higher level courses in Machine Learning and Data Science, you find you need to freshen up on the basics in mathematics - stuff you may have studied before in school or university, but which was taught in another context, or not very intuitively, such that you struggle to relate it to how it’s used in Computer Science.', 1, N'https://th.bing.com/th/id/OIP.1QPEhvWKM3RQHSR5tXIPcwHaHa?pid=ImgDet&rs=1', N'Imperial College London', N'https://th.bing.com/th/id/OIP.bHPNJtdmVhV2mcZJYJJYWgHaH7?pid=ImgDet&rs=1', 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Matrix Algebra for Engineers', 3, 23, N'This course sequence exposes students to the fundamental skills required to make sophisticated graphic design: process, historical context, and communication through image-making and typography.', 1, N'https://th.bing.com/th/id/R.f9717a449027202ec8f0d7df9f3fab9b?rik=jlWriCm%2b6xaCTQ&pid=ImgRaw&r=0', N'HUST University', N'https://th.bing.com/th/id/R.0645d5e3970f99b74207f30bdaf0a60c?rik=%2bU2Yyjz0PRRoqA&pid=ImgRaw&r=0g', 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Graphic Design', 4, 25, N'This course is designed for non-native English speakers who are interested in advancing their careers in the global marketplace.', 1, N'https://th.bing.com/th/id/R.736b8680fe95641e20e1f39f0b57ca77?rik=Wde1i15SeGIcEw&pid=ImgRaw&r=0', N'FPT University', N'https://fpt.edu.vn/Content/images/assets/img-logo-fe.png', 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'UI/UX Design', 4, 24, N'The UI/UX Design Specialization brings a design-centric approach to user interface and user experience design, and offers practical, skill-based instruction centered around a visual communications perspective, rather than on one focused on marketing or programming alone.', 1, N'https://th.bing.com/th/id/R.7b933168101c1813373a7a74ece9b7ef?rik=4W5Aap7RyI8ULQ&pid=ImgRaw&r=0', N'Imperial College London', N'https://th.bing.com/th/id/OIP.bHPNJtdmVhV2mcZJYJJYWgHaH7?pid=ImgDet&rs=1', 9, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Branding: The Creative Journey', 4, 25, N'This Specialization aims to make branding concepts accessible to every learner and to teach them to analyze and apply all the relevant concepts, using the broad and diverse toolkit of branding.', 1, N'https://th.bing.com/th/id/R.f5345314d9142090e461cd644a3c73ef?rik=HR3I64g1HtjUbw&pid=ImgRaw&r=0', N'Havard University', N'https://th.bing.com/th/id/OIP.ixJlQpQGon62rGWW_U_YHQHaHa?pid=ImgDet&rs=1', 10, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Music Production', 5, 27, N'This Specialization will give you the knowledge and tools you need to record and produce professional sounding music. You will begin by developing your identity, vision, and intention as an artist and producer.', 1, N'https://th.bing.com/th/id/R.a1e3f2f648dd9f8797b5fe4a2bca1dfa?rik=3jil40PF3f47fw&riu=http%3a%2f%2fparentedge.in%2fwp-content%2fuploads%2f2012%2f08%2fMusic-Production.jpg&ehk=s00eTz9lf%2b767%2bAoDOiL3tCU%2f4H%2fnKz1cqifIH6dYSo%3d&risl=&pid=ImgRaw&r=0', N'Imperial College London', N'https://th.bing.com/th/id/OIP.bHPNJtdmVhV2mcZJYJJYWgHaH7?pid=ImgDet&rs=1', 11, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Java Programming', 6, 28, N'Take your first step towards a career in software development with this introduction to Java—one of the most in-demand programming languages and the foundation of the Android operating system.', 1, N'https://th.bing.com/th/id/R.31b7c1abd91de4baee0f5652ff2586cb?rik=isdTmaRzaTazMA&pid=ImgRaw&r=0', N'FPT University', N'https://fpt.edu.vn/Content/images/assets/img-logo-fe.png', 12, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Object Oriented Programming in Java', 6, 28, N'This Specialization is for aspiring software developers with some programming experience in at least one other programming language (e.g., Python, C, JavaScript, etc.)', 1, N'https://www.techworm.net/programming/wp-content/uploads/2018/09/object-oriented-programming-oop.png', N'HUST University', N'https://th.bing.com/th/id/R.0645d5e3970f99b74207f30bdaf0a60c?rik=%2bU2Yyjz0PRRoqA&pid=ImgRaw&r=0', 13, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Core Java', 6, 28, N'This Core Java Specialization is part of a series of programming specializations, derived from LearnQuest private Java Bootcamps, designed to provide the skill set necessary to be hired as an IT developer using Java in many corporate environments.', 1, N'https://th.bing.com/th/id/OIP._ja2VP4WC_Y9n6_2HXSJZwHaD8?pid=ImgDet&rs=1', N'Havard University', N'https://th.bing.com/th/id/OIP.ixJlQpQGon62rGWW_U_YHQHaHa?pid=ImgDet&rs=1', 14, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Blockchain Revolution', 7, 29, N'Blockchain is poised to transform every industry and managerial function—redefining the ways we transact online, share ideas, and manage workflows. It’s a new technology that every business professional needs to understand.', 1, N'https://th.bing.com/th/id/R.dfd404208833b12796b575bf3209d353?rik=kNzCKrUc%2b%2bRU%2bg&riu=http%3a%2f%2fbitcoinist.com%2fwp-content%2fuploads%2f2018%2f05%2fss-blockchain-4IR.jpg&ehk=EBUS4vhfFF%2fyX3McnLcy1kOJvd1u8wOyiq%2bEb9FUVDs%3d&risl=&pid=ImgRaw&r=0', N'HUST University', N'https://th.bing.com/th/id/R.0645d5e3970f99b74207f30bdaf0a60c?rik=%2bU2Yyjz0PRRoqA&pid=ImgRaw&r=0', 15, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Bitcoin and Cryptocurrency Technologies', 7, 29, N'How does Bitcoin work? What makes Bitcoin different? How secure are your Bitcoins? How anonymous are Bitcoin users? What determines the price of Bitcoins? Can cryptocurrencies be regulated? What might the future hold?', 1, N'https://th.bing.com/th/id/R.f2fbe1a77dec4ee3d2ff2e8767997ceb?rik=3qRlLjNDJWRrNA&pid=ImgRaw&r=0', N'FPT University', N'null', 16, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Google Data Analytics', 8, 30, N'Prepare for a new career in the high-growth field of data analytics, no experience or degree required. Get professional training designed by Google and have the opportunity to connect with top employers. There are 337,400 U.S. job openings in data analytics with a $67,900 average entry-level salary.', 1, N'https://th.bing.com/th/id/R.ef761a8aa70323aa1ab5e7dcbc6330cd?rik=eLMUz%2bH6YQK4Qw&riu=http%3a%2f%2f2.bp.blogspot.com%2f-H8Lb_jp9kQg%2fUZXJVPmqZPI%2fAAAAAAAAIB0%2fYj1JIQ5Wdss%2fs1600%2fGoogle_bigquery.jpg&ehk=w4zFruaPlB9KLqpyJRZiWpyj359%2f0aVMe7%2bg0MVL6UY%3d&risl=&pid=ImgRaw&r=0', N'Havard University', N'https://th.bing.com/th/id/OIP.ixJlQpQGon62rGWW_U_YHQHaHa?pid=ImgDet&rs=1', 17, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Python Scripting for DevOps', 9, 30, N'In the course, you will learn some of the concepts of procedural programming: user input, console output, variable declaration and assignment, decision branching and iteration.', 1, N'https://th.bing.com/th/id/OIP.a34h9zdpGa7TbwrdMramQAHaEK?pid=ImgDet&rs=1', N'FPT University', N'https://fpt.edu.vn/Content/images/assets/img-logo-fe.png', 18, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'Continuous Delivery & DevOps', 9, 30, N'Bringing an organization to the state of the art (or even functional capability) in this area requires strong work in a combination of disciplines and a combination of both technical and managerial skills.', 1, N'https://th.bing.com/th/id/R.019a14fd7b088aa99c367e0c68faa8c1?rik=AtaKqhtU4wb5%2fw&riu=http%3a%2f%2fwww.sumologic.com%2fwp-content%2fuploads%2f2015%2f08%2fDevOps-infinity-loop.png&ehk=ak4A5JJDyiB4yMJLXdnoYqED%2bRJkLUf2kQEpkgwSIq0%3d&risl=&pid=ImgRaw&r=0', N'Imperial College London', N'https://th.bing.com/th/id/OIP.bHPNJtdmVhV2mcZJYJJYWgHaH7?pid=ImgDet&rs=1', 19, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Subject] ([name], [typeID], [instructor_id], [description], [status], [image], [organization], [logo], [s_id], [createdTime]) VALUES (N'IBM Full Stack Cloud Developer Professional', 9, 28, N'This Professional Certificate will equip you with all the key skills and technical know-how to kickstart your career as a Full-Stack Cloud Native Application Developer. Guided by experts at IBM, you will learn to build your own cloud-based applications and practice working with the technologies behind them.', 1, N'https://th.bing.com/th/id/R.0e3b7bb492b97bdc89fa88fdff28c8df?rik=%2bl3DqyIpYIbEIQ&pid=ImgRaw&r=0', N'Imperial College London', N'https://th.bing.com/th/id/OIP.bHPNJtdmVhV2mcZJYJJYWgHaH7?pid=ImgDet&rs=1', 20, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectCategory] ON 
GO
INSERT [dbo].[SubjectCategory] ([cat_id], [name], [status], [createdTime]) VALUES (1, N'Language Learning', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectCategory] ([cat_id], [name], [status], [createdTime]) VALUES (2, N'Math and Logic', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectCategory] ([cat_id], [name], [status], [createdTime]) VALUES (3, N'Arts and Humanities', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectCategory] ([cat_id], [name], [status], [createdTime]) VALUES (4, N'Computer Science', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectCategory] ([cat_id], [name], [status], [createdTime]) VALUES (5, N'Information Technology', 0, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectCategory] ([cat_id], [name], [status], [createdTime]) VALUES (6, N'Business', 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[SubjectCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectType] ON 
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'EngLish', 1, 1, 1, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Vietnamese', 1, 1, 2, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Linear Algebra', 2, 1, 3, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Design', 3, 1, 4, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Music', 3, 1, 5, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Java', 4, 1, 6, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Blockchain', 6, 1, 7, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'Google', 5, 0, 8, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubjectType] ([name], [cat_id], [status], [typeID], [createdTime]) VALUES (N'DevOps', 5, 1, 9, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[SubjectType] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (1, N'admin', N'huydthe150252', N'0000', 1, N'Duong Trung', N'Huy', CAST(N'2001-10-03T00:00:00' AS SmallDateTime), N'm', N'03687837952323', NULL, N'huydthe150252@fpt.edu.vn', N'Duong Trung Huy, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', N'd', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (2, N'admin', N'vuntdhe150637', N'0000', 1, N'Nguyen Tran', N'Duy Vu', CAST(N'2001-04-19T00:00:00' AS SmallDateTime), N'm', N'0939001374', N'https://scontent.fhan5-4.fna.fbcdn.net/v/t1.6435-9/36316650_2178077255754148_3741668116912930816_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=VPjbTg1i9loAX_yonmZ&tn=fQnj9WBuZpYGjz2k&_nc_ht=scontent.fhan5-4.fna&oh=004527db2144cc2add6dc4f21fd6511d&oe=6187160C', N'vuntdhe150637@fpt.edu.vn', N'Nguyen Tran Duy Vu, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'793276670622300', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (3, N'admin', N'hieupndhe153303', N'0000', 1, N'Phan Nguyen Duc', N'Hieu', CAST(N'2001-06-06T00:00:00' AS SmallDateTime), N'm', N'0815960062', N'https://scontent.fhan5-4.fna.fbcdn.net/v/t39.30808-6/242662178_3069830233338420_717062301363859372_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=8pQKdejBat8AX9v1O3m&_nc_ht=scontent.fhan5-4.fna&oh=5dbb90e3d252c5be26e983f0ae1ea37b&oe=616767DC', N'hieupndhe153303@fpt.edu.vn', N'Phan Nguyen Duc Hieu, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Nghe An', N'571744643119575', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (4, N'admin', N'phuongnnhe153074', N'0000', 1, N'Nguyen Nam', N'Phuong', CAST(N'2001-08-28T00:00:00' AS SmallDateTime), N'm', N'0384295199', N'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80', N'phuongnnhe153074@fpt.edu.vn', N'Nguyen Nam Phuong, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'786320326921695', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (5, N'admin', N'thanglvhe153248', N'0000', 1, N'Luong Viet', N'Thang', CAST(N'2001-11-15T00:00:00' AS SmallDateTime), N'f', N'03537771558', NULL, N'thanglvhe153248@fpt.edu.vn', N'Luong Viet Thang, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Nghe An', N'721585964424085', N'visa', N'', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (6, N'expert', N'nguyethta0001', N'1111', 1, N'Ha Thi', N'Anh Nguyet', CAST(N'1984-10-03T00:00:00' AS SmallDateTime), N'f', N'0368783795', N'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (7, N'expert', N'namdxezu0022', N'1111', 1, N'Dinh Xuan', N'Nam', CAST(N'1980-04-29T00:00:00' AS SmallDateTime), N'm', N'0734323087', N'https://images.unsplash.com/photo-1552058544-f2b08422138a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=399&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (8, N'expert', N'huyqhezu0023', N'1111', 0, N'Quang Huu', N'Huy', CAST(N'1992-11-15T00:00:00' AS SmallDateTime), N'm', N'0395733108', N'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=386&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (9, N'expert', N'sonnhtezu0024', N'1111', 1, N'Nguyen Hoang', N'Trung', CAST(N'1994-12-03T00:00:00' AS SmallDateTime), N'm', N'0946297846', N'https://images.unsplash.com/photo-1615813967515-e1838c1c5116?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (10, N'expert', N'thuydvtezu0025', N'1111', 1, N'Do Vu Thanh', N'Thuy', CAST(N'1986-11-12T00:00:00' AS SmallDateTime), N'm', N'0346620713', NULL, N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', N'', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (11, N'expert', N'nhungttezu0026', N'1111', 1, N'Tran Trang', N'Nhung', CAST(N'1984-07-21T00:00:00' AS SmallDateTime), N'f', N'0789041608', N'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (12, N'expert', N'tiennbezu0027', N'1111', 1, N'Nguyen Binh', N'Tien', CAST(N'1995-08-15T00:00:00' AS SmallDateTime), N'm', N'0538308995', N'https://images.unsplash.com/photo-1493863641943-9b68992a8d07?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1158&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (13, N'expert', N'loctdbezu0028', N'1111', 1, N'Tran Dao Ba', N'Loc', CAST(N'1979-09-24T00:00:00' AS SmallDateTime), N'm', N'0807085874', N'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (14, N'expert', N'hoangdtezu0029', N'1111', 0, N'Dinh Tien', N'Hoang', CAST(N'1972-06-07T00:00:00' AS SmallDateTime), N'm', N'0933401845', N'https://images.unsplash.com/photo-1497021707778-a743a0bb2961?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (15, N'expert', N'thucbaezu0030', N'1111', 1, N'Ha Thi', N'Anh Nguyet', CAST(N'1984-10-03T00:00:00' AS SmallDateTime), N'f', N'0566690808', N'https://images.unsplash.com/photo-1605405748313-a416a1b84491?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80', N'nguyethta0001@gmail.com', N'Ha Thi Anh Nguyet, Xiaobo Zhou, Professor of Computer Science, serves as the Interim Dean of College of Engineering.', N'Ha Noi', N'775227688098745', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (16, N'customer', N'cusrandom0016', N'12345678', 1, N'Tran Van', N'An', CAST(N'2005-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0016@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (17, N'customer', N'cusrandom0017', N'12345678', 1, N'Nguyen Thi', N'Cam Tu', CAST(N'2001-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (18, N'customer', N'cusrandom0018', N'12345678', 1, N'Do Khanh', N'Linh', CAST(N'2001-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (19, N'customer', N'cusrandom0019', N'12345678', 1, N'Nguyen Binh', N'Duong', CAST(N'2003-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0019@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (20, N'customer', N'cusrandom0020', N'12345678', 1, N'Cao Ba', N'Quat', CAST(N'2002-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0020@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (21, N'customer', N'cusrandom0021', N'12345678', 1, N'Tran Dinh Thanh', N'Lam', CAST(N'2001-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0021@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (22, N'customer', N'cusrandom0022', N'12345678', 1, N'Nguyen Hoai', N'Nam', CAST(N'2001-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0022@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (23, N'customer', N'cusrandom0023', N'12345678', 1, N'Bach Van Nhu', N'Nguyet', CAST(N'2001-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0201@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (24, N'customer', N'cusrandom0024', N'12345678', 1, N'Cao Dai Kieu', N'Anh', CAST(N'2001-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0201@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (25, N'customer', N'cusrandom0025', N'12345678', 0, N'Nguyen Can Hoai', N'Thu', CAST(N'2003-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0201@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (26, N'customer', N'cusrandom0026', N'12345678', 0, N'Tran Due', N'Nhi', CAST(N'2002-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0201@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (27, N'customer', N'cusrandom0027', N'12345678', 1, N'Dao Trong', N'Tuan', CAST(N'2002-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0027@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (28, N'customer', N'cusrandom0028', N'12345678', 1, N'Ho Hoai', N'Anh', CAST(N'2002-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0028@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (29, N'customer', N'cusrandom0029', N'12345678', 1, N'Dang Quyet', N'Dung', CAST(N'2003-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0029@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (30, N'customer', N'cusrandom0030', N'12345678', 1, N'Nguyen Ba', N'Loc', CAST(N'2005-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0030@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (31, N'customer', N'cusrandom0031', N'12345678', 1, N'Do Thi', N'Anh Thu', CAST(N'1998-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0031@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (32, N'customer', N'cusrandom0032', N'12345678', 1, N'Le Ngoc', N'Tram', CAST(N'1998-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0032@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (33, N'customer', N'cusrandom0033', N'12345678', 0, N'Tran Thanh', N'Chung', CAST(N'1990-10-17T00:00:00' AS SmallDateTime), N'm', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0033@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (34, N'customer', N'cusrandom0034', N'12345678', 1, N'Le Hai', N'Van', CAST(N'1995-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0034@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (35, N'customer', N'cusrandom0035', N'12345678', 1, N'Nguyen Thi Linh', N'Chi', CAST(N'1997-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0035@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (36, N'customer', N'cusrandom0036', N'12345678', 1, N'Tran Thi Ho', N'Linh', CAST(N'1999-04-07T00:00:00' AS SmallDateTime), N'f', N'0511125652', N'https://hiltonsheartland.com/wp-content/uploads/2013/08/unknown-avatar.jpg', N'cusrandom0036@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (37, N'saler', N'vudtqsale0071', N'1111', 1, N'Do Tran Quang', N'Vu', CAST(N'1980-02-01T00:00:00' AS SmallDateTime), N'm', N'0839478566', N'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80', N'vudtqsale0071@gmail.com', NULL, N'Ha Noi', N'579334554944655', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (38, N'saler', N'quyendttsale0072', N'1111', 1, N'Dinh Thi Thao', N'Quyen', CAST(N'1983-11-29T00:00:00' AS SmallDateTime), N'f', N'0961892015', N'https://images.unsplash.com/photo-1597586124394-fbd6ef244026?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80', N'quyendttsale0072@gmail.com', NULL, N'Ho Chi Minh', N'729512710688229', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (39, N'marketer', N'thunnamarketer0101', N'1111', 1, N'Ngoc Nu Anh', N'Thu', CAST(N'1993-01-27T00:00:00' AS SmallDateTime), N'f', N'0355846904', N'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80', N'thunnamarketer0101@gmail.com', NULL, N'Quang Binh', N'373569688727655', N'visa', NULL, NULL, NULL, NULL, CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (40, N'1', N'0394141591', N'1234', 1, N'huy', N'huy', CAST(N'2021-10-21T00:00:00' AS SmallDateTime), N'male', N'0394141591', N'MyAva', N'dithoi504@gmail.com', N'', N'98 Nguyen Tu Gian', N'', N'COD', N'', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (41, N'1', N'03941415912', N'1234', 1, N'huy', N'huy', CAST(N'2021-10-28T00:00:00' AS SmallDateTime), N'male', N'0394141591', N'MyAva', N'ditho2i504@gmail.com', N'', N'98 Nguyen Tu Gian', N'', N'COD', N'', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (42, N'1', N'03941415911', N'1234', 1, N'huy', N'huy2', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), N'male', N'0394141591', N'MyAva', N'dithoi5204@gmail.com', N'', N'98 Nguyen Tu Gian', N'', N'COD', N'', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
INSERT [dbo].[User] ([u_id], [role], [username], [password], [status], [first_name], [last_name], [birth], [gender], [phone], [avatar], [email], [description], [address], [visa], [paymentMethod], [position], [sign], [company], [school], [createdTime]) VALUES (43, N'1', N'03941415912323', N'1234', 1, N'huy', N'huy', CAST(N'2021-10-05T00:00:00' AS SmallDateTime), N'male', N'0394141591', N'MyAva', N'dithoi5232304@gmail.com', N'', N'98 Nguyen Tu Gian', N'', N'COD', N'', N'', N'', N'', CAST(N'2021-10-31T09:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
/****** Object:  Index [fkIdx_153]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_153] ON [dbo].[Blog]
(
	[author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_387]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_387] ON [dbo].[Blog]
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_278]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_278] ON [dbo].[Certificate]
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_281]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_281] ON [dbo].[Certificate]
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_176]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_176] ON [dbo].[div]
(
	[page_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_383]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_383] ON [dbo].[Lesson]
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_380]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_380] ON [dbo].[LessonTopic]
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_209]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_209] ON [dbo].[LoginHistory]
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_179]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_179] ON [dbo].[Page]
(
	[modyfier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_100]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_100] ON [dbo].[PricePackage]
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_232]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_232] ON [dbo].[QuestionBank]
(
	[l_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_326]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_326] ON [dbo].[Quiz]
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_464]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_464] ON [dbo].[Quiz]
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_144]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_144] ON [dbo].[QuizTaken]
(
	[b_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_147]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_147] ON [dbo].[QuizTaken]
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_365]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_365] ON [dbo].[Subject]
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_81]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_81] ON [dbo].[Subject]
(
	[instructor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_345]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_345] ON [dbo].[SubjectRegister]
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_348]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_348] ON [dbo].[SubjectRegister]
(
	[price_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_362]    Script Date: 11/7/2021 7:51:11 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_362] ON [dbo].[SubjectType]
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PricePackage] ADD  CONSTRAINT [DF_PricePackage_currency_unit]  DEFAULT ('dollar') FOR [currency_unit]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_151] FOREIGN KEY([author])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_151]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_385] FOREIGN KEY([typeID])
REFERENCES [dbo].[SubjectType] ([typeID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_385]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK_276] FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK_276]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK_279] FOREIGN KEY([s_id])
REFERENCES [dbo].[Subject] ([s_id])
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK_279]
GO
ALTER TABLE [dbo].[div]  WITH CHECK ADD  CONSTRAINT [FK_174] FOREIGN KEY([page_id])
REFERENCES [dbo].[Page] ([page_id])
GO
ALTER TABLE [dbo].[div] CHECK CONSTRAINT [FK_174]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[Subject] ([s_id])
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_381] FOREIGN KEY([topic_id])
REFERENCES [dbo].[LessonTopic] ([topic_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_381]
GO
ALTER TABLE [dbo].[LessonTopic]  WITH CHECK ADD  CONSTRAINT [FK_378] FOREIGN KEY([s_id])
REFERENCES [dbo].[Subject] ([s_id])
GO
ALTER TABLE [dbo].[LessonTopic] CHECK CONSTRAINT [FK_378]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_207] FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_207]
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_177] FOREIGN KEY([modyfier_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_177]
GO
ALTER TABLE [dbo].[PricePackage]  WITH CHECK ADD  CONSTRAINT [FK_98] FOREIGN KEY([s_id])
REFERENCES [dbo].[Subject] ([s_id])
GO
ALTER TABLE [dbo].[PricePackage] CHECK CONSTRAINT [FK_98]
GO
ALTER TABLE [dbo].[QuestionBank]  WITH CHECK ADD  CONSTRAINT [FK_230] FOREIGN KEY([l_id])
REFERENCES [dbo].[Lesson] ([l_id])
GO
ALTER TABLE [dbo].[QuestionBank] CHECK CONSTRAINT [FK_230]
GO
ALTER TABLE [dbo].[QuestionChoices]  WITH CHECK ADD  CONSTRAINT [FK_QuestionChoices_QuestionBank] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuestionBank] ([b_id])
GO
ALTER TABLE [dbo].[QuestionChoices] CHECK CONSTRAINT [FK_QuestionChoices_QuestionBank]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_324] FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_324]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_462] FOREIGN KEY([topic_id])
REFERENCES [dbo].[LessonTopic] ([topic_id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_462]
GO
ALTER TABLE [dbo].[QuizTaken]  WITH CHECK ADD  CONSTRAINT [FK_142] FOREIGN KEY([b_id])
REFERENCES [dbo].[QuestionBank] ([b_id])
GO
ALTER TABLE [dbo].[QuizTaken] CHECK CONSTRAINT [FK_142]
GO
ALTER TABLE [dbo].[QuizTaken]  WITH CHECK ADD  CONSTRAINT [FK_145] FOREIGN KEY([q_id])
REFERENCES [dbo].[Quiz] ([q_id])
GO
ALTER TABLE [dbo].[QuizTaken] CHECK CONSTRAINT [FK_145]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_363] FOREIGN KEY([typeID])
REFERENCES [dbo].[SubjectType] ([typeID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_363]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_79] FOREIGN KEY([instructor_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_79]
GO
ALTER TABLE [dbo].[SubjectRegister]  WITH CHECK ADD  CONSTRAINT [FK_343] FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([u_id])
GO
ALTER TABLE [dbo].[SubjectRegister] CHECK CONSTRAINT [FK_343]
GO
ALTER TABLE [dbo].[SubjectRegister]  WITH CHECK ADD  CONSTRAINT [FK_346] FOREIGN KEY([price_id])
REFERENCES [dbo].[PricePackage] ([price_id])
GO
ALTER TABLE [dbo].[SubjectRegister] CHECK CONSTRAINT [FK_346]
GO
ALTER TABLE [dbo].[SubjectType]  WITH CHECK ADD  CONSTRAINT [FK_360] FOREIGN KEY([cat_id])
REFERENCES [dbo].[SubjectCategory] ([cat_id])
GO
ALTER TABLE [dbo].[SubjectType] CHECK CONSTRAINT [FK_360]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Người viết bài' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blog', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'kiểu bài viết (về khoa học, hướng dẫn học, mẹo,...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blog', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Người chỉnh sửa sau cùng của bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blog', @level2type=N'COLUMN',@level2name=N'modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blog', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id của div (do front end đặt)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'div', @level2type=N'COLUMN',@level2name=N'div_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'link ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'div', @level2type=N'COLUMN',@level2name=N'img'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'div này thuộc page có page id nào' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'div', @level2type=N'COLUMN',@level2name=N'page_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'số thứ tự của lesson' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lesson', @level2type=N'COLUMN',@level2name=N'no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lesson', @level2type=N'COLUMN',@level2name=N'video'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lesson', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nguồn tham khảo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lesson', @level2type=N'COLUMN',@level2name=N'references'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nguồn tài liệu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lesson', @level2type=N'COLUMN',@level2name=N'documents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'hệ điều hành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoginHistory', @level2type=N'COLUMN',@level2name=N'OS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chrome, IE, Firefox,....' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoginHistory', @level2type=N'COLUMN',@level2name=N'browser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'user id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoginHistory', @level2type=N'COLUMN',@level2name=N'u_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tên page: home page, blog page,....' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Page', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'user id của người chỉnh sửa sau cùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Page', @level2type=N'COLUMN',@level2name=N'modyfier_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PricePackage', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'đơn vị tiền tệ (mặc định là dollar)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PricePackage', @level2type=N'COLUMN',@level2name=N'currency_unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'giảm giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PricePackage', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'độ khó của câu hỏi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'đáp án đúng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'câu hỏi của lesson nào' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'l_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'user nào đã làm quiz này' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Quiz', @level2type=N'COLUMN',@level2name=N'u_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'thời gian được cho phép để làm quiz' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Quiz', @level2type=N'COLUMN',@level2name=N'required_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ngày làm quiz' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Quiz', @level2type=N'COLUMN',@level2name=N'taken_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'trạng thái đậu hay trượt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Quiz', @level2type=N'COLUMN',@level2name=N'condition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian user làm quiz thực tế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Quiz', @level2type=N'COLUMN',@level2name=N'time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kết quả mà user trả lời' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuizTaken', @level2type=N'COLUMN',@level2name=N'user_result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'user id của người tạo subject' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'instructor_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'link ảnh của khoá học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổ chức tài trợ hoặc sở hữu khoá học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'organization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'link ảnh logo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subject', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'package đã đky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SubjectRegister', @level2type=N'COLUMN',@level2name=N'price_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ngày đăng kí' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SubjectRegister', @level2type=N'COLUMN',@level2name=N'register_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id của user đã đky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SubjectRegister', @level2type=N'COLUMN',@level2name=N'u_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Có 4 role chính: student, admin, expert, maketer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mặc định là 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lưu 1 trong 2 giá trị mà M hoặc F' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lưu link ảnh, lúc dùng chỉ cần nhúng vào thẻ img' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả của user. VD: giáo viên có x năm kinh nghiệm giảng dạy, ....' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lưu số thẻ VISA. Không lưu ngày hết hạn và mã vì lý do bảo mật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'visa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phương thức thanh toán. Có thể visa hoặc 1 phương thức khác như paypal,...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'paymentMethod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí công việc, vd: sinh viên năm 3, hiệu trưởng,...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chữ ký, dành cho người cấp chứng chỉ (optional)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'sign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Công ty/ tổ chức: dành cho mentor, instructor để lưu thông tin nơi họ đang làm việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trường học: dành cho hssv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'school'
GO
USE [master]
GO
ALTER DATABASE [QuizPractice] SET  READ_WRITE 
GO
