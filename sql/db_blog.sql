-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 04:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'GPU'),
(2, 'ANDROID'),
(3, 'IOS'),
(4, 'MAC OS'),
(7, 'CPU'),
(8, 'WINDOWS'),
(9, 'SOCIAL'),
(10, 'LINUX');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(8, 'Abdur', 'Rahman', 'abdurrahman@gmail.com', 'Hello I am Abdur Rahman. You are doing a great job in this blog. I really appreciate your work. Keep it up.', 0, '2021-11-30 14:09:02'),
(9, 'Rodela', 'Jaman', 'rodela@yahoo.com', 'Hi I am Rodela. I read your posts daily and they are fantastic. I am also an editor in this sector and please let me know if you need an editor in the future. Best regards.', 0, '2021-11-30 14:11:41'),
(10, 'Naim', 'Khan', 'naim@outlook.com', 'Hello Tech Daily. Your site is great for knowing up to date information about technologies. Very good. Keep up the good work.', 1, '2021-11-30 14:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Tech Daily.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p><strong>Admin</strong>&nbsp; Rashed Hassan Siam</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Authors</strong>&nbsp; Md. Imran</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Shojol Mahmud</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Editors</strong>&nbsp; Gulzar Ahmed</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ratul Islam</p>'),
(2, 'Privacy Policy', '<p dir=\"ltr\">This Privacy Policy Statement applies to personal data collected, used, and stored by Tech Daily having its registered office at Barishal, Bangladesh and registered with the Chamber of Commerce and its affiliated companies, hereinafter &ldquo;Tech Daily&rdquo;.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">Tech Daily takes your privacy very seriously. We do everything we can to convey the information on our Platform with the greatest possible accuracy. This Privacy Policy Statement explains the types of personal data we collect from and about you and how we use, disclose and protect that data as well as your ability to control certain uses of it.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\"><span>The collection, use and disclosure of personal data collected through the Platform is safeguarded by technological and organisational security measures with the objective to protect the personal data against loss, misuse and unauthorised access, alteration, disclosure or destruction. These measures are continually improved in line with technological developments.</span></p>'),
(3, 'Terms Of Use', '<p>These Terms of Use (\"<strong><em>Terms</em></strong>\") apply to your access to, and use of, this website&nbsp;or other online products or services of Tech Daily (collectively, the \"<strong><em>Services</em></strong>\"). These Terms do not alter in any way the terms or conditions of any other agreement you may have with Tech Daily for products, services or otherwise. If you are using the Services on behalf of any entity, you represent and warrant that you are authorized to accept these Terms on such entity\'s behalf, and that such entity will be responsible to Tech Daily if you violate these Terms.</p>\r\n<p>Tech Daily reserves the right to change or modify these Terms, or any policy or guideline of the Services, at any time and in our sole discretion. If we make changes or modifications to these Terms, we will provide you with notice of such changes, such as by sending an email. Your continued use of the Services following the posting of changes or modifications will confirm your acceptance of such changes or modifications. Therefore, you should frequently review the Terms and applicable policies to understand the terms and conditions that apply to your use of the Services. If you do not agree to the amended terms, you must stop using the Services.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(11, 3, 'iOS 15: Apple releases major new update for Iphone', '<p>Apple has released iOS 15, its major new update for the iPhone.</p>\r\n<p>The new operating system is now available to download. As usual, it can be found by opening the Settings app and clicking &ldquo;general&rdquo;.</p>\r\n<p>Eventually, Apple will encourage users to download the new update through notifications and other alerts. But it tends to give users time to download it on their own first &ndash; presumably in part to minimise the traffic on its servers, which can often slow down considerably when a major new update comes out, and can leave users waiting a long time until the update downloads.</p>\r\n<p>Though Apple has rebranded the iPad operating system as iPadOS, they both arrive at the same time and with many of the features, and those tablets should be able to download their own update too.</p>\r\n<p>iOS 15 brings a host of new features, including changing to notifications, the ability to FaceTime people who don&rsquo;t have iPhones, and a Safari redesign that has proven somewhat controversial and gone through a number of different versions.</p>\r\n<p>One of the big features of the new update &ndash; SharePlay, which adds the option to watch TV shows and films together in a video call &ndash; was delayed after it was announced, and will come in a later version of iOS 15.</p>\r\n<p>An update for the Apple Watch, known as watchOS 8, has also arrived at the same time. It includes new photo tools, better ways of controlling your home, and updated health and fitness features.</p>\r\n<p>Apple&rsquo;s Macs will be getting their own updates too, in the form of Monterey, which refreshes the design and brings updates to built-in apps such as Messages and Maps. The MacOS update tends to arrive later in the year, and Apple has not yet announced a release date.</p>\r\n<p>Apple announced the release date of iOS 15 last week, when it revealed a new Apple Watch, iPads and the iPhone 13. Those iPhones go on sale on Friday, with a range of new features including upgraded cameras and better batteries.</p>', 'upload/48f59cae01.jpg', 'Shojol', 'ios, iphone, apple', '2021-11-23 16:05:45', 6),
(12, 7, 'Intel Core i9-12900K is already showing seriously impressive overclocking potential', '<p>Intel&rsquo;s Core i9-12900K has only just been unveiled, and it&rsquo;s already breaking world records on the performance front.</p>\r\n<p>As Tom&rsquo;s Hardware reports, the freshly revealed Alder Lake flagship processor managed to set three new records when pushed hard by Tom&rsquo;s resident overclocking expert Allen &lsquo;Splave&rsquo; Golibersuch &ndash; and that&rsquo;s just for starters, no doubt.</p>\r\n<p>Splave overclocked the Core i9-12900K to 6.8GHz on its performance cores (up from 5.2GHz), and 5.3GHz (up from 3.9GHz) on the efficiency cores (yes, they can be ramped up too), using liquid nitrogen to keep the CPU cool while running benchmarks on Geekbench (and also Intel&rsquo;s Extreme Tuning Utility or XTU).</p>\r\n<p>The 12900K set new world records on both Geekbench 4 and Geekbench 5 for single-core, with tallies of 11,669 and 2,740 respectively, and also for multi-core (in the 16-core category) with results of 93,232 and 26,649 respectively. As Tom&rsquo;s points out, in Geekbench 5, those scores beat out the previous single-core leader &ndash; Intel&rsquo;s predecessor flagship, the 11900K &ndash; by 19%, and the old multi-core top dog &ndash; AMD&rsquo;s Ryzen 9 5950X &ndash; by an even more impressive 27%.</p>\r\n<p>With XTU 2.0, Splave had to drop the overclock on the performance cores a notch to 6.7GHz to keep the CPU stable enough to run the full benchmark, where the 12900K scored 12,765, another new record as mentioned.</p>\r\n<p>If you&rsquo;re curious about the PC used for this batch of benchmarks, the Core i9-12900K was nestling in an ASRock Z690 Aqua OC Edition motherboard, and paired with Klevv&rsquo;s DDR5-4800 system RAM (overclocked to 6200MHz), with an EVGA Supernova 1600W PSU providing the juice for all this.</p>', 'upload/f4a9355ddf.jpg', 'Rashed', 'cpu, intel', '2021-11-23 16:07:45', 1),
(13, 1, 'Intel could bring out new GPUs every year to take the fight to AMD and Nvidia', '<p>Intel&rsquo;s Arc Druid graphics cards, which would be the 4th-gen models, following on in alphabetical order from 1st-gen Alchemist, could be out in 2025, an employee has hinted &ndash; meaning that Intel could set a seriously fast pace for releasing new product lines in the GPU world.</p>\r\n<p>This comes from VideoCardz, which spotted a tweet from Intel&rsquo;s Arc Community Advocate and Driver Guru, who posted regarding the relative importance of components in a PC build, to which somebody replied with a joke about Nvidia&rsquo;s RTX 6000 series being out in 2025 with colossal wattage demands.</p>\r\n<p>As you can see, Bryce took the opportunity to tease the possibility that Intel might just have Druid GPUs launched in that year, all being well. While we obviously have to take that with huge piles of condiments, it does seem to indicate that Intel&rsquo;s plan is to get a new generation of graphics cards out every year.</p>\r\n<p>We have Arc Alchemist coming early in 2022, or at least mobile versions, followed by desktop GPUs in Q2 according to the rumor mill, and if Druid is slated for 2025, that means Battlemage and Celestial, the generations in-between as confirmed by Intel&rsquo;s official roadmap, will slot in for 2023 and 2024 &ndash; in theory.</p>\r\n<p>Indeed, Battlemage has already been rumored to start weaving its magic in 2023 going by the GPU grapevine.</p>', 'upload/e7b9d08551.jpg', 'Rashed', 'gpu, intel', '2021-11-23 16:09:17', 1),
(15, 4, 'Common MacOS Catalina problems and how to fix them', '<p>MacOS Catalina brings plenty of features and apps to get excited about, but as with all software updates, you can expect some bumps along the way. That shouldn&rsquo;t come as a surprise, though, as Apple is ambitiously supporting a wide range of hardware &mdash; dating back to 2012 Mac models, in some cases.</p>\r\n<p>Whether you&rsquo;ve encountered problems installing Catalina or are having issues getting your Mac up and running post-install, we&rsquo;ve got some helpful tips to remedy some of the bugs.</p>\r\n<p>For the latest on MacOS, be sure to check out our articles on how to download MacOS Big Sur and common problems in Big Sur and how to fix them.</p>\r\n<p>The first step of your Catalina journey on an existing Mac is to get the operating system installed. While the upgrade process to Catalina is fairly straightforward &mdash; you&rsquo;ll find the update in Apple&rsquo;s Mac App Store &mdash; some users have reported issues with being able to download the update.Common error codes, at least in the first few days of Catalina being made available for download, included messages like The network connection was lost or Installation of MacOS could not continue.</p>\r\n<p>If you&rsquo;ve encountered these error messages, stay calm and carry on (doing other things in the meantime), as it likely just means that Apple&rsquo;s servers have been swamped. A likely culprit is that a lot of your fellow Mac users have been attempting to do the upgrade at the same time, and that&rsquo;s putting extra stress on Apple&rsquo;s servers. If you&rsquo;re attempting to download the files over Wi-Fi, you may want to consider switching to a more stable wired Ethernet cable (if your Mac has an ethernet port) for better results.</p>\r\n<p>Sidecar supports the iPad 6 or newer, iPad mini 5, iPad Air 3, and the line of iPad Pro products. Be sure to download the latest iPadOS onto your iPad to take advantage of Sidecar, or your Mac won&rsquo;t be able to use this feature. And even though Catalina works on older Mac systems, Sidecar, as a feature, requires more modern hardware. This means you will need a late 2015 iMac 27-inch or newer, 2016 MacBook Pro or newer, 2018 Mac Mini, 2019 Mac Pro, 2018 MacBook Air, or an early 2016 MacBook or newer model computer.</p>\r\n<p>You&rsquo;ll find the Sidecar settings in the System Preferences app on your Mac, and you will need to enable Wi-Fi, Bluetooth, and Handoff. It should be noted that laptop users will need to connect directly to a Wi-Fi network, and you can&rsquo;t use Sidecar while tethered to your iPad&rsquo;s internet connection.</p>\r\n<p>If you&rsquo;re having a hard time connecting Bluetooth accessories or peripherals to Catalina, you&rsquo;re not alone. The first step is to open the settings in the upper right corner of your screen, and then launch the Bluetooth preferences menu. Click on the devices you&rsquo;re having issues with, delete them, and repair them.</p>\r\n<p>This should address most of the Bluetooth issues, but if you&rsquo;re still having problems, you will want to open up your Finder search and then click on Go in the menu. Select Go to Folder and type in /Library/Preferences. You&rsquo;ll be able to see a file titled com.apple.Bluetooth.plist.</p>\r\n<p>You&rsquo;ll want to delete that file &mdash; if you prefer, you can also save a copy to an external flash drive before deleting to be safe. Once the file has been deleted, you need to restart your Mac and attempt to pair your Bluetooth devices again.</p>\r\n<p>Apple Support is the best resource for any additional problems you may experience while using Catalina. Apple offers phone, chat, or in-person help at their retail locations. And if you want to learn more about Catalina, be sure to read our MacOS review and check out some of our favorite tips and tricks to getting the most out of your Mac.</p>', 'upload/07eb651f5f.png', 'Imran', 'macos', '2021-11-28 17:34:52', 2),
(16, 2, 'Android 12: Everything you need to know', '<p>The newest version of Google&rsquo;s flagship operating system, Android 12, is officially live for all supported Pixel phones, starting with the Google Pixel 3, and it ships out of the box for the Pixel 6 and Pixel 6 Pro.</p>\r\n<p>Here&rsquo;s everything you need to know about Android 12.</p>\r\n<p>Google released Android 12 to the Android Open Source Project (AOSP) on October 4, with a consumer release coming shortly afterward for all eligible Pixel devices, including the Pixel 3, 3a, 4, 4a, 5, and 5a, on October 19. It&rsquo;s also worth noting that the Pixel 3 and Pixel 3a are not expected to get Android 12L (more on that below), while the Pixel 4 and newer will.</p>\r\n<p>Easily the biggest change to Android 12 comes in the form of a design refresh. Buttons are bigger and bolder, everything has large and rounded corners, and Google isn&rsquo;t as concerned about taking up more space on the display. Android 12, it seems, is more about using space smartly than trying to pack more stuff into it.</p>\r\n<p>These bigger icons seem to apply to pretty much every aspect of Android 12. Everything more or less works the same, but Settings menu options, Quick Settings panel, sliders, and so on are all much larger, bolder, and more colorful. Even the lock screen has gotten the treatment &mdash; when there aren&rsquo;t any notifications, the clock takes up a majority of the display, and even with notifications, it&rsquo;s large enough to easily see at a glance.</p>', 'upload/6d3e4d8274.jpg', 'Rashed', 'android', '2021-11-28 17:35:48', 1),
(17, 8, 'Windows 11 review: The start of a new era', '<p>It\'s been six long years since the last mainline version of Windows shipped, and a lot has changed in the OS space since then. Microsoft is back with a roaring passion to create a modern version of the Windows user experience that\'s simple to use, beautifully designed, and well-connected, all in an effort to make you more productive in your professional or creative workflows.</p>\r\n<p>In a world where more and more people are back using PCs in their day-to-day lives, Microsoft thought it was important to deliver a fresh OS designed from the ground up for working from home, while also catering to a new generation of people who have and are still growing up with smartphones and tablets as their primary \"computer.\"</p>\r\n<p>Windows 11 is now generally available as an update for eligible Windows 10 PCs. Microsoft is taking a measured and phased approach to the rollout, however, meaning not everybody will be offered the update immediately. When your PC is ready, a big popup will appear in Windows Update that will allow you to initiate the download and install process, and Windows will do the rest.</p>\r\n<p>Windows 11 focuses on three key areas: a fresh and modern UX designed to make using Windows simpler, new features and tweaks built around making you more productive, and a renewed focus on the Microsoft Store.</p>\r\n<p>Most of the top-level user interfaces have been updated with a fresh look with new animations, iconography, and sounds. Everything from the Start menu and Taskbar right down to the context menus and in-box apps have been updated to look more consistent with the rest of the new Windows 11 design.</p>\r\n<p>One of Microsoft\'s goals with Windows 11 has been to declutter and simplify the user experience (UX) where possible. Microsoft is trying to make the Windows UX easier to use for casual PC users who may be more familiar with modern OS experiences such as iOS and Android, but this comes at the cost of simplifying some common features or behaviors that some old-school Windows die-hards may struggle to adapt to.</p>\r\n<p>The good news is, for those who prefer simplicity over complexity, Windows 11 is going to be a great release for you. It\'s an absolute joy to use, with a fluid UX that is almost perfect. Windows 11 is a breath of fresh air for those who enjoy the spectacle of software design, and a great release for those who value productivity enhancements and \"getting to work\" over everything else.</p>\r\n<p>Windows 11 has the potential to be the best version of Windows yet, but some of the choices Microsoft has made around Teams Chat, Widgets, setting browser defaults, the incomplete dark mode, and functionality of the taskbar really hold it back from being that. Hopefully the next release of Windows 11 fixes these issues.</p>', 'upload/71df6e06e8.jpg', 'Imran', 'windows', '2021-11-30 15:12:58', 2),
(18, 10, 'In 2021, The linux foundation became a trusted resource for public health and industry partners‭, and open treatments tackled rare diseases', '<p>Since its founding a little over a year ago, the organization has become a go-to resource for governments and industry partners to get advice on the latest technologies coming to market. Over 50 jurisdictions worldwide have come to trust LFPH for unbiased, clear guidance on how to take advantage of technologies within our program areas of exposure notification and COVID credentials. National and global institutions such as the WHO, CDC, UN, and GAO have also invited LFPH to present at meetings, contribute to reports, and assist them in their own understanding of this technology.</p>\r\n<p>Meanwhile, LFPH projects and initiatives continue to grow. The Global COVID Certificate Network and standard developments happening at the COVID-19 Credentials Initiative are becoming some of the leading groups solving the challenges of interoperability between divergent systems and standards emerging around the world. The organization&rsquo;s leadership role in the Good Health Pass Collaborative has established LFPH&rsquo;s voice as one of the leads in the ethical, privacy-first design of public health software. With the addition of Herald, Cardea, and MedCreds, the foundation&rsquo;s projects are now used in over a dozen states, provinces, and countries worldwide to help fight COVID-19 and safely reopen borders.</p>\r\n<p>While COVID is not going anywhere, LFPH is charting a path forward beyond pandemic response. The pandemic has highlighted the need to overhaul public health infrastructure worldwide to create better ways to share data within and across borders. Open source software will be a crucial piece of solving that puzzle worldwide.</p>\r\n<p>In March of 2021, the Linux Foundation announced that it would be hosting RareCamp and the OpenTreatments Foundation. RareCamp enables treatments for rare genetic diseases regardless of rarity and geography.</p>\r\n<p>Four hundred million patients worldwide are affected by more than 7,000 rare diseases, yet treatments for rare genetic disorders are underserved. More than 95 percent of rare diseases do not have an approved treatment, and new treatments are estimated to cost more than $1 billion.</p>\r\n<p>The RareCamp open source project provides open governance for the software and scientific community to collaborate and create the software tools to aid in creating treatments for rare diseases. The community includes software engineers, UX designers, content writers, and scientists who are collaborating now to build the software that will power the OpenTreatments platform. The project uses the open source Javascript framework NextJS for frontend and the Amazon Web Services (AWS) Serverless stack &ndash; including AWS Lambda, Amazon API Gateway, and Amazon DynamoDB &ndash; to power the backend. The project uses the open source toolchain Serverless Framework to develop and deploy the software and is licensed under Apache 2.0 and available for anyone to use.</p>\r\n<p>The project is supported by individual contributors and collaborations from companies that include Baylor College of Medicine, Castle IRB, Charles River, Columbus Children&rsquo;s Foundation, GlobalGenes, Odylia Therapeutics, RARE-X, and Turing.com.</p>\r\n<p>These efforts are made possible by the dozens of enterprises that support the LFPH and OpenTreatments foundations.</p>', 'upload/e4ae00ab1b.png', 'Shojol', 'linux', '2021-11-30 15:25:05', 6),
(19, 9, 'Twitter’s Jack Dorsey steps down from C.E.O. role', '<p>Jack Dorsey stepped down on Monday as chief executive of Twitter, the social media site he co-founded in 2006 and navigated through the tumultuous years of the Trump administration and increasing calls for regulation from lawmakers around the world.</p>\r\n<p>He was replaced by Parag Agrawal, who as the company&rsquo;s chief technology officer had recently been working on technologies associated with cryptocurrencies, which have become a fascination of the tech industry&rsquo;s power brokers, including Mr. Dorsey.</p>\r\n<p>Mr. Dorsey&rsquo;s exit marks a significant shift at the company, which has navigated years of pressure from investors who thought it did not make enough money and criticism from Washington, particularly from Republican lawmakers who have complained Twitter has helped stifle conservative voices in social media.</p>\r\n<p>Mr. Dorsey, 45, who is also the chief executive of the payments company Square, was fired from the top job at Twitter in 2008 but returned in 2015. His departure represents the second recent significant shake up at a major social media company. Last month, Facebook rebranded itself as Meta. The change was accompanied by a new corporate logo and an emphasis on a virtual world called the metaverse, but Mark Zuckerberg, its high-profile chief executive, will still run the company.</p>\r\n<p>The departure of Mr. Dorsey is a critical changing of the guard for the company. Mr. Dorsey&rsquo;s name has been as closely associated with Twitter as Mr. Zuckerberg&rsquo;s has been with Facebook, although Twitter is nowhere near as large. Mr. Dorsey has become a celebrity outside of Silicon Valley, parodied on &ldquo;Saturday Night Live&rdquo; and needled on his own social media platform for his long facial hair and his personal wellness pursuits.</p>\r\n<p>Like Mr. Zuckerberg, Mr. Dorsey has been called to Washington to testify about his company&rsquo;s content moderation and censorship complaints. But the decision to remove Mr. Trump&rsquo;s account was made by one of Mr. Dorsey&rsquo;s lieutenants, a contrast with Mr. Zuckerberg&rsquo;s direct involvement in high-profile moderation decisions. Mr. Dorsey was working on a private island in French Polynesia when it happened &mdash; adding to concern that he was not fully engaged with his company.</p>\r\n<p>Mr. Dorsey said in an email to Twitter employees, which he also posted publicly, that he wanted Twitter to stop being a founder-led company, which could be a weakness over time.</p>', 'upload/35839c9765.png', 'Rashed', 'social, twitter', '2021-11-30 15:32:52', 1),
(20, 7, 'Raptoreum crypto\'s love of large L3 caches could lead to an AMD CPU shortage', '<p>Bitcoin Press reports that Raptoreum (RTM), which launched earlier this year following three years in testnet, could potentially worsen shortages of AMD CPUs with massive L3 caches, such as Ryzen, Threadripper, and Epyc processors.</p>\r\n<p>Proof-of-work (PoW) coin Raptoreum is based on the GhostRider mining algorithm to keep the Raptoreum blockchain network clean from ASICs. Combining modified Cryptonite and x16r algorithms, GhostRider utilizes the L3 cache for mining, meaning miners are scrambling to grab AMD CPUs such as the Ryzen 9 3000/5000 series (up to 64MB of L3), Threadripper (up to 128MB), and EPYC (up to 256MB).</p>\r\n<p>Profitability tables show that the AMD Ryzen 9 3900 can bring 4600 H/s in Raptoreum without optimizations, while the Ryzen 9 5950X can reach up to 6800 H/s, though the latter chip&rsquo;s higher price needs to be taken into account when looking at profitability. For comparison, Intel&rsquo;s new Core i9-12900K with its 30MB of cache offers 3700 H/s.</p>\r\n<p>This Raptoreum calculator shows that using a Ryzen 9 3900X can net users 101 Raptoreum per day. With an energy cost of $0.12, that works out at an average profit of $2.98 per day. Based on the CPU&rsquo;s $469 Amazon price, miners will be in profit by around 157 days. As with all crypto, the price of Raptoreum does fluctuate wildly, so these figures can change.</p>\r\n<p>Some people are already snapping up Ryzen CPUs in huge quantities to create Raptoreum mining farms such as the one above that was published by El Chapuzas Informatico (via VideoCardz). It uses 28 ASUS Prime X570P motherboards and 28 Ryzen 9 CPUs.</p>\r\n<p>With the run-up to the holidays and the chip crisis, some CPUs are in short supply. Moreover, AMD recently reduced the price of certain Ryzen 5000-series processors as a response to Alder Lake, making team red&rsquo;s chips even more appealing to Raptoreum miners.</p>', 'upload/2d73310768.png', 'Shojol', 'cpu, amd', '2021-11-30 15:38:00', 6),
(21, 2, 'The Amazon Appstore is broken for Android 12 users', '<p>Although the Google Play Store remains the preferred option for Android apps, there are multiple alternatives out there. One of them is the Amazon Appstore which was built for Amazon&rsquo;s Fire OS devices. New reports suggest that Amazon&rsquo;s dedicated app hub could be facing issues with the latest Android 12 update.</p>\r\n<p>Users have taken to Amazon&rsquo;s support forum to voice their concerns (via), and it appears to be more widespread than initially anticipated. Some speculate that the issue could be caused due to Amazon&rsquo;s DRM, affecting both paid and free apps on the platform. Other users are facing trouble finding their app library on the Amazon Appstore.</p>\r\n<p>The issue first popped up in October as devices started receiving the Android 12 update. With more phones getting the new software update, the complaints are expectedly growing in number. It&rsquo;s unclear whether Amazon is actively working on a fix, given that complaints have appeared for at least a month. But considering how many people rely on the Amazon Appstore, the company could be sending out a fix soon.</p>\r\n<p>In the interim, the company is running a notice for its users which reads &ndash; &ldquo;We&rsquo;re excited about Android 12 too. Unfortunately we&rsquo;re working through some issues. Thank you for your patience as we get your Appstore back.&rdquo;</p>\r\n<p>Android 12 betas had been around for several months before the stable update started rolling out. So it&rsquo;s surprising that Amazon couldn&rsquo;t foresee this during the early testing of the new software. If your device doesn&rsquo;t have Android 12 yet, the Amazon Appstore should continue to work normally.</p>\r\n<p>Fortunately for Amazon, Android 12 is only available on Pixel devices and Samsung&rsquo;s early 2021 flagships. However, more devices are getting the update in the coming weeks. So if you rely on the Amazon Appstore for apps and games, we recommend holding off on the new software update until a fix is available.</p>', 'upload/bbb0d4b2fe.png', 'Imran', 'android, amazon', '2021-11-30 15:48:49', 2),
(22, 8, 'New Windows 10 zero-day gives admin rights, gets unofficial patch', '<p>Free unofficial patches have been released to protect Windows users from a local privilege escalation (LPE) zero-day vulnerability in the Mobile Device Management Service impacting Windows 10, version 1809 and later.</p>\r\n<p>The security flaw resides under the \"Access work or school\" settings, and it bypasses a patch released by Microsoft in February to address an information disclosure bug tracked as CVE-2021-24084.</p>\r\n<p>However, security researcher Abdelhamid Naceri (who also reported the initial vulnerability) discovered this month that the incompletely patched flaw could also be exploited to gain admin privileges after publicly disclosing the newly spotted bug in June.</p>\r\n<p>\"Namely, as HiveNightmare/SeriousSAM has taught us, an arbitrary file disclosure can be upgraded to local privilege escalation if you know which files to take and what to do with them,\" 0patch co-founder Mitja Kolsek explained today.</p>\r\n<p>\"We confirmed this by using the procedure described in this blog post by Raj Chandel in conjunction with Abdelhamid\'s bug - and being able to run code as local administrator.\"</p>\r\n<p>While Microsoft has most likely also noticed Naceri\'s June disclosure, the company is yet to patch this LPE bug, exposing Windows 10 systems with the latest November 2021 security updates to attacks.</p>\r\n<p>To install the unofficial patch on your system, you will need to register a 0patch account and install the 0patch agent.</p>\r\n<p>Once you launch the agent on your device, the patch will be applied automatically (if there are no custom patching enterprise policies enabled to block it) without requiring a restart.</p>\r\n<p>This is the second Windows zero-day that received a micropatch this month after Naceri found that patches for another bug (CVE-2021-34484) in the Windows User Profile Service could be bypassed to escalate privileges on all Windows versions, even if fully patched.</p>\r\n<p>Microsoft also needs to patch a third zero-day bug in the Microsoft Windows Installer with a proof-of-concept (PoC) exploit released by Naceri over the weekend.</p>\r\n<p>If successfully exploited, the zero-day allows attackers to gain SYSTEM privileges on up-to-date devices running the latest Windows versions, including Windows 10, Windows 11, and Windows Server 2022.</p>\r\n<p>Malware creators have since started testing the PoC exploit in low volume attacks likely focused on testing and tweaking it for future full-blown campaigns.</p>', 'upload/4f735f02a5.png', 'Shojol', 'windows', '2021-11-30 15:55:12', 6),
(23, 1, 'NVIDIA GeForce RTX 2060 12 GB to be more than an RTX 2060 with double the VRAM', '<p>VideoCardz has discovered more details about the RTX 2060 12 GB, a re-run of a graphics card that NVIDIA released in January 2019. Subsequently, the company refreshed the mid-range card in July 2019 with the RTX 2060 SUPER and started shipping versions with a cutdown TU104 GPU in January 2020.</p>\r\n<p>NVIDIA has been rumoured for a while that it plans to return the RTX 2060 to shelves, supposedly to alleviate pressure on the newer RTX 30 series. Initially, various leaks suggested that the RTX 2060 12 GB would receive a new GPU and mainboard, but only to accommodate more VRAM.</p>\r\n<p>Multiple RTX 2060 SKU registrations with the EEC supported this, as we discussed earlier this month. However, VideoCardz now claims that the RTX 2060 12 GB will have more CUDA, RT and Tensor cores than the original RTX 2060. Reputedly, the RTX 2060 12 GB will feature 2,176 CUDA cores, 64 RT cores and 136 Tensor cores, matching the RTX 2060 SUPER.</p>\r\n<p>The RTX 2060 12 GB is not an RTX 2060 SUPER with 12 GB of VRAM, though. Instead, VideoCardz states that the RTX 2060 has a 192-bit memory bus, mirroring the original RTX 2060. As a result, VideoCardz expects the RTX 2060 12 GB to have a 336 GB/s memory bandwidth, well down on the RTX 2060 SUPER.</p>\r\n<p>Oddly, the RTX 2060 12 GB could also have a 184 W TGP, which would be higher than the RTX 2060, RTX 2060 SUPER and the RTX 3060. Hence, it remains to be seen how the RTX 2060 12 GB will fare against the RTX 2060 SUPER and the RTX 3060. NVIDIA is tipped to unveil the RTX 2060 12 GB on December 7.</p>', 'upload/086ce9e435.jpeg', 'Imran', 'gpu, nvidia', '2021-11-30 16:01:37', 2),
(24, 10, 'New side-channel vulnerability in the linux kernel enabling DNS cache poisoning', '<p>A recent research paper by a team at University of California, Riverside, shows the existence of previously overlooked side channels in the Linux kernels that can be exploited to attack DNS servers.</p>\r\n<p>According to the researchers, the issue with DNS roots in its design, that never really took security as a key concern and that made it extremely hard to retrofit strong security features into it.</p>\r\n<p>While DNS security features are available, including DNSSEC and DNS cookies, they are not widely deployed due to backward compatibility, say the researchers. Instead, the only approach to make DNS more secure has been the randomization of UDP ports, known as ephemeral ports, with the aim to makes it harder for an attacker to discover them.</p>\r\n<p>As a result of this, several attacks to DNS have been discovered in the past, including the recent SAD DNS, a variant of DNS cache poisoning that allows an attacker to inject malicious DNS records into a DNS cache, thus redirecting any traffic to their own server and becoming a man-in-the-middle (MITM).</p>\r\n<p>More recently, some of the researchers who first disclosed SAD DNS have uncovered side channels vulnerabilities that had gone undetected inside the Linux kernel for over a decade. Those vulnerabilities enable the use of ICMP probes to scan UDP ephemeral ports and allowed the researchers to develop new DNS cache poisoning attacks.</p>\r\n<p>Specifically, the research focused on two types of ICMP error messages, ICMP fragment needed (or ICMP packet too big in IPv6) and ICMP redirect. As the researchers show, the Linux kernel processes those messages using shared resources that form side channels. What this means, roughly, is that an attacker can target a specific port where they send ICMP probes. If the targeted port is correct, this will cause some change in the shared resource state that can be observed indirectly, thus confirming the guess was right. For example, an attack could lower a server\'s MTU, which would manifest itself in subsequent responses being fragmented.</p>\r\n<p>The newly discovered side channels affect the most popular DNS software, say the researchers, including BIND, Unbound, and dnsmasq running on top of Linux. An estimated 13.85% of open resolvers are affected. Additionally, the researchers show an end-to-end attack against the latest BIND resolver and a home router only taking minutes to succeed.</p>\r\n<p>This novel attack can be prevented by setting proper socket options, e.g. by instructing the OS not to accept the ICMP frag needed messages, which will eliminate the side-channel altogether; by randomizing the kernel shared caching structure itself; and by rejecting ICMP redirects.</p>\r\n<p>As a consequence of the disclosure of this new vulnerability, the Linux kernel has been patched both for IPv4 and IPv6 to randomize the shared kernel structure. Additionally, BIND 9.16.20 sets IP_PMTUDISC_OMIT on IPv6 sockets.</p>', 'upload/d4b92ba5e6.png', 'Imran', 'linux', '2021-11-30 16:07:16', 2),
(25, 4, 'MacOS 13 Mammoth: Everything there is to know so far', '<p>macOS Monterey is an impressive OS update, introducing a number of significant changes to the Mac experience. Headline features include Universal Control that allows mice, trackpads and keyboards to be used across multiple devices at once, along with SharePlay functionality, better synchronisation with iOS devices and much more.</p>\r\n<p>But while the feature-packed update was only released in October 2021, Apple is likely already hard at work on the next version of macOS due for release in 2022. Rumoured to be dubbed macOS Mammoth, here&rsquo;s everything there is to know about macOS 13 at this early stage.</p>\r\n<p>While it&rsquo;s hard to say for sure, it&rsquo;s looking increasingly likely that the next big macOS update could be called macOS Mammoth.</p>\r\n<p>Apple actually trademarked Mammoth way back in March 2013 alongside other possible macOS names, but unlike others, Apple has continued to renew the trademark on an ongoing basis.</p>\r\n<p>In fact, an extension was granted most recently on 11 November 2021, suggesting that Apple does still have plans to use the name in a future version of macOS. The trademark is active and listed under the &ldquo;computer operating software&rdquo; goods and services category, all but confirming its purpose.</p>\r\n<p>Mammoth might seem like a random name given Apple&rsquo;s ongoing theme of naming its desktop OS after US national parks, but there is a Mammoth Lake and Mammoth Mountain in California, situated nearby Sierra, Yosemite and El Capitan.</p>\r\n<p>It could also be a &lsquo;mammoth&rsquo; update to macOS, focused on getting the most out of the new Apple silicon chips &ndash; but more on that later.</p>\r\n<p>Of course, Apple could choose a different name entirely &ndash; the update isn&rsquo;t due to be revealed until mid-2022 with plenty of time for plans to change &ndash; but right now, macOS Mammoth seems very likely.</p>', 'upload/ad9972d036.jpg', 'Rashed', 'macos, apple', '2021-11-30 16:12:01', 1),
(26, 3, 'iOS 15\'s AirPods feature makes sure you don\'t leave your Apple earbuds behind', '<p>Apple\'s AirPods are compact and easy to carry, but that also means they\'re prone to getting lost. One way Apple is trying to address that in iOS 15 is with its new Notify When Left Behind feature, which is exactly what it sounds like.</p>\r\n<p>When this setting is turned on, your iPhone will alert you when you\'ve left a location without your AirPods. You can also tell your iPhone not to send a notification when you\'ve left your AirPods somewhere familiar so that you don\'t receive an alert each time you leave the house.</p>\r\n<p>It\'s a useful feature that can come in handy if you\'re worried about leaving your AirPods on the bus or at the gym. And it\'s not just for AirPods; you can turn on this setting for AirTags and certain other Apple products, too. Here\'s how to set it up.</p>\r\n<p>First, make sure your iPhone is running on iOS 15. Open the Settings app, tap General and choose Software Update.</p>\r\n<p>Then, open the Find My app on your iPhone. You should see a Devices tab with the products that have been registered to your Apple ID. Find your AirPods in the list and tap them.</p>\r\n<p>Under the Notifications section, tap the Notify When Left Behind option and make sure the switch is toggled on.</p>\r\n<p>You can also choose not to be notified if you leave your AirPods at specific locations, like your home. Your home address may already be listed here, but you can always tap the New Location option to add it if needed.</p>\r\n<p>That\'s all there is to it. When you leave your AirPods behind at a location that hasn\'t been specified as an exception in the app, you\'ll receive an alert that takes you straight to the Find My app.</p>', 'upload/31cc2cd5a8.jpg', 'Imran', 'ios, iphone, apple', '2021-11-30 16:18:03', 2),
(27, 9, 'Facebook changes company name to Meta', '<p>Facebook on Thursday announced that it has changed its company name to Meta.</p>\r\n<p>The name change was announced at the Facebook Connect augmented and virtual reality conference. The new name reflects the company&rsquo;s growing ambitions beyond social media. Facebook, now known as Meta, has adopted the new moniker, based on the sci-fi term metaverse, to describe its vision for working and playing in a virtual world.</p>\r\n<p>&ldquo;Today we are seen as a social media company, but in our DNA we are a company that builds technology to connect people, and the metaverse is the next frontier just like social networking was when we got started,&rdquo; Meta CEO Mark Zuckerberg said.</p>\r\n<p>The company also said in announcing the new name that it will change its stock ticker from FB to MVRS, effective Dec. 1.</p>\r\n<p>Meta&rsquo;s stock price closed up on Thursday. In July, the company announced the formation of a team that would work on the metaverse. Two months later, the company said it would elevate Andrew &ldquo;Boz&rdquo; Bosworth, who is currently the head of the company&rsquo;s hardware division, to the role of chief technology officer in 2022. And in its third-quarter earnings results on Monday, the company announced that it will break out Reality Labs, its hardware division, into its own reporting segment, starting in the fourth quarter.</p>\r\n<p>Over the past few years, the company has ramped up its efforts in hardware, introducing a line of Portal video-calling devices, launching the Ray-Ban Stories glasses and rolling out various versions of the Oculus virtual-reality headsets. The company has indicated that augmented and virtual reality will be a key part of its strategy in the coming years.</p>\r\n<p>The company also said this week it&rsquo;d spend about $10 billion over the next year developing the technologies required for building the metaverse.</p>\r\n<p>Zuckerberg on Thursday provided a demonstration of the company&rsquo;s ambitions for the metaverse.</p>\r\n<p>The demo was a Pixar-like animation of software the company hopes to build some day. The demo included users hanging out in space as cartoon-like versions of themselves or fantastical characters, like a robot, that represent their virtual selves. Zuckerberg used part of it to accuse other tech firms of stifling innovation with high developer fees.</p>\r\n<p>Zuckerberg said a lot of this is a long way off, with elements of the metaverse potentially becoming mainstream in five to 10 years. The company expects &ldquo;to invest many billions of dollars for years to come before the metaverse reaches scale,&rdquo; Zuckerberg added.</p>\r\n<p>Additionally, Meta announced a new virtual reality headset named Project Cambria. The device will be a high-end product available at a higher price point than the $299 Quest 2 headset, the company said in a blog post. Project Cambria will be released next year, Zuckerberg said.</p>\r\n<p>The re-branding comes amid a barrage of news reports over the past month after Frances Haugen, a former employee turned whistleblower, released a trove of internal company documents to news outlets, lawmakers and regulators.</p>\r\n<p>The reports show that the company is aware of many of the harms its apps and services cause but either doesn&rsquo;t rectify the issues or struggles to address them. More documents are expected to be shared daily over the coming weeks.</p>', 'upload/2dba0709d0.jpg', 'Rashed', 'social, facebook, meta', '2021-11-30 16:24:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'Intel CPU Factory', 'upload/slider/fe663115d8.jpg'),
(2, 'Apple\'s Iphone 13 Series', 'upload/slider/a871898669.jpg'),
(4, 'Social Media Giants Across The World', 'upload/slider/8f715f489b.jpg'),
(5, 'The Advancements Of AI And Robotics', 'upload/slider/8a3b4ee854.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Rashed Hassan Siam', 'Rashed', '202cb962ac59075b964b07152d234b70', 'siam.cse5.bu@gmail.com', '<p>Rashed Hassan Siam is the admin of Tech Daily. He is a student of CSE at the University of Barishal.</p>', 0),
(2, 'Md. Imran', 'Imran', '202cb962ac59075b964b07152d234b70', 'imran@yahoo.com', '<p>Md. Imran is one of the post authors of Tech Daily. He is a student of CSE at the University of Rajshahi.</p>', 1),
(3, 'Gulzar Ahmed', 'Gulzar', '202cb962ac59075b964b07152d234b70', 'gulzar@outlook.com', '<p>Gulzar Ahmed is one of the editors of Tech Daily. He is a student of CSE at the University of Dhaka.</p>', 2),
(6, 'Shojol Mahmud', 'Shojol', '202cb962ac59075b964b07152d234b70', 'shojol@hotmail.com', '<p>Shojol Mahmud is one of the post authors of Tech Daily. He is a student of CSE at the Jahangirnagar University.</p>', 1),
(7, 'Ratul Islam', 'Ratul', '202cb962ac59075b964b07152d234b70', 'ratul@gmail.com', '<p>Ratul Islam is one of the editors of Tech Daily. He is a student of CSE at the University of Khulna.</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Tech Daily', 'The Number 1 Place To Know About Technologies!', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
