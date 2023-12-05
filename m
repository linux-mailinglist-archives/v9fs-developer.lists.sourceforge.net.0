Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE27A804A9F
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Dec 2023 07:53:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rAPJQ-0007Ks-NJ;
	Tue, 05 Dec 2023 06:53:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <myinfo@hpfc.net.in>) id 1rAPJP-0007Km-FI
 for v9fs-developer@lists.sourceforge.net;
 Tue, 05 Dec 2023 06:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:From:Subject:Sender:Message-ID:To:
 MIME-Version:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=51ZiEaqz6el8iQ+rlG1qy7zgBHnatm9P4gZ8ViWyG70=; b=Gf6yjIUufXGl0EZyFDE/6LAir6
 mqLnUNBAiEhwq9eoFcEu1N7pZg8VV1nW/a8ZXb9s6BMvieV8MaqZiZHwKVNc6Nt5XIe3ZWVyo9sB5
 5r8fND3kx5cHXWeqIy0Z2BXdJarytoPWM8I0/lZH+jvz0/EKV/snEHNkzjqkpe+NcwPw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:From:Subject:Sender:Message-ID:To:MIME-Version:Date:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=51ZiEaqz6el8iQ+rlG1qy7zgBHnatm9P4gZ8ViWyG70=; b=H
 2I58g7obVHUtEcVOlRezIHNZuW8F7equcP2TlP4t7iY1yEV8tcVNNp2pclsk5dwE6b+PAurHL9DIR
 sfvlnIaQGzNfLk5V6hiG4pv1ZOarkhvcUi0nWQYaOlLpya61RZA9RofV6B+CZ05VqiW9WpjN2JjT8
 /fL6hcPgsY6bhdrM=;
Received: from pro152-31.mxout.rediffmailpro.com ([119.252.152.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAPJN-0002fy-Aw for v9fs-developer@lists.sourceforge.net;
 Tue, 05 Dec 2023 06:53:42 +0000
Received: from pro-230-135.rediffmailpro.com (unknown [10.50.252.5])
 by pro152-31.mxout.rediffmailpro.com (Postfix) with ESMTP id 53B091E3A68
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  5 Dec 2023 10:54:33 +0530 (IST)
X-REDIFF-Delivered-Remotely-To: v9fs-developer@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
 s=epro; t=1701753872;
 bh=51ZiEaqz6el8iQ+rlG1qy7zgBHnatm9P4gZ8ViWyG70=;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 b=QB9JGnyNz/fmsBbrbjR8ZX92wigBLC+hpyytOR33+4kDBe8KeSJi1sAAvewVKoKeG
 eXtxWI03MTxJIGTSHdkdVohp5ievlMzY2lZaqRQlllt6nMgYsBOAVKeecNB5uLfH/K
 tnXtqqEv6Ju8bM9LU34huOcBFhdCNogtuvQaxldA=
Received: (qmail 25161 invoked by uid 510); 5 Dec 2023 05:24:32 -0000
x-m-msg: e7d98aa97e401b1c174f30c5250accff; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 101\PHISHING
X-OUT-VDRT-SpamScore: 300
X-OUT-VDRT-SpamCause: "gggruggvucftvghtrhhoucdtuddrgedvkedrudejjedgkeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutffgfffkhffhnecuuegrihhlohhuthemuceftddtnecunddoufgtrghmhidqrfhhihhshhhinhhgqdgvnhculdeftddtmdenucfjughrpeffggfvkfhsuffhtgesrgdtreertddtjeenucfhrhhomhepfdhinhhfohdrrggumhhinhdfuceomhihihhnfhhosehhphhftgdrnhgvthdrihhnqeenucggtffrrghtthgvrhhnpeefgfegkefhgffhtddufffhueeigeffjeeffeevkedvueefleeggeduhefgtdeludenucffohhmrghinhepihhmqdgtrhgvrghtohhrrdgtohhmnecukfhppedukedurddvudegrdduieejrddvhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhihihhnfhhosehhphhftgdrnhgvthdrihhnpdhnsggprhgtphhtthhopeehpdhrtghpthhtoheptghhrhhishhtihgrnhessghrrghunhgvrhdrihhopdhrtghpthhtohepjhhovghlsehjohgvlhhfvghrnhgrnhguvghsrdhorhhgpdhrtghpthhtohepmhgrtghosegrnhgurhhoihgurdgtohhmpdhrtghpthhtohepthhkjhhoshesrghnughrohhiugdrtghomhdprhgtphhtthhopegrrhhvvgesrghnughrohhiugdrtghomhdpmhhouggvpehsmhhtphhouhht"
X-Dedup-Identifier: 1701753872_25153_25151_pro-230-135
Date: 5 Dec 2023 05:24:32 -0000
MIME-Version: 1.0
To: <security@kernel.org>, <klassert@kernel.org>, <alex.aring@gmail.com>,
 <jukka.rissanen@linux.intel.com>, <linux-bluetooth@vger.kernel.org>,
 <linux-wpan@vger.kernel.org>, <ajk@comnets.uni-bremen.de>,
 <linux-hams@vger.kernel.org>, <johannes@sipsolutions.net>,
 <hkallweit1@gmail.com>, <nic_swsd@realtek.com>,
 <linux-serial@vger.kernel.org>, <ericvh@gmail.com>, <lucho@ionkov.net>,
 <asmadeus@codewreck.org>, <v9fs-developer@lists.sourceforge.net>,
 <crope@iki.fi>, <linux-api@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <syednwaris@gmail.com>, <jes@trained-monkey.org>, <linux-acenic@sunsite.dk>,
 <peter@piie.net>, <jlee@suse.com>, <rjw@rjwysocki.net>, <lenb@kernel.org>,
 <bp@alien8.de>, <devel@acpica.org>, <sudeep.holla@arm.com>,
 <andy@kernel.org>, <shuo.a.liu@intel.com>, <acrn-dev@lists.projectacrn.org>,
 <linux-parisc@vger.kernel.org>, <jikos@kernel.org>, <sakari.ailus@iki.fi>,
 <colin@colino.net>, <airlied@linux.ie>, <fischer@norbit.de>,
 <hverkuil@xs4all.nl>, <bcrl@kvack.org>, <linux-aio@kvack.org>,
 <linosanfilippo@gmx.de>, <duncan.sands@free.fr>, <manuel.lauss@gmail.com>,
 <r.marek@assembler.cz>, <tomislav.denis@avl.com>,
 <m.tretter@pengutronix.de>, <kernel@pengutronix.de>, <mripard@kernel.org>,
 <tiny.windzz@gmail.com>, <anarsoul@gmail.com>,
 <paul.kocialkowski@bootlin.com>, <ink@jurassic.park.msu.ru>,
 <mattst88@gmail.com>, <linux-alpha@vger.kernel.org>,
 <thor.thayer@linux.intel.com>, <ley.foon.tan@intel.com>,
 <joyce.ooi@intel.com>, <talel@amazon.com>, <talelshenhar@gmail.com>,
 <netanel@amazon.com>, <akiyano@amazon.com>, <gtzalik@amazon.com>,
 <saeedb@amazon.com>, <galpress@amazon.com>, <sleybo@amazon.com>,
 <brijesh.singh@amd.com>, <harry.wentland@amd.com>, <sunpeng.li@amd.com>,
 <amd-gfx@lists.freedesktop.org>, <nchatrad@amd.com>, <info@metux.net>,
 <linux-geode@lists.infradead.org>, <dilinger@queued.net>,
 <felix.kuehling@amd.com>, <sanju.mehta@amd.com>, <syniurge@gmail.com>,
 <nehal-bakulchandra.shah@amd.com>, <shyam-sundar.s-k@amd.com>,
 <evan.quan@amd.com>, <brijeshkumar.singh@amd.com>,
 <suravee.suthikulpanit@amd.com>, <sandeep.singh@amd.com>, <ceggers@arri.de>,
 <alexandru.tachici@analog.com>, <marcelo.schmitt1@gmail.com>,
 <renatogeh@gmail.com>, <mircea.caprioru@analog.com>,
 <dragos.bogdan@analog.com>, <kieran.bingham@ideasonboard.com>,
 <nish.malpani25@gmail.com>, <paul.walmsley@sifive.com>,
 <nickhu@andestech.com>, <green.hu@gmail.com>, <deanbo422@gmail.com>,
 <arve@android.com>, <tkjos@android.com>, <maco@android.com>,
 <joel@joelfernandes.org>, <christian@brauner.io>
Received: from unknown 181.214.167.251 by rediffmailpro.com via HTTP; 05 Dec
 2023 05:24:32 -0000
Message-ID: <20231205105432.1701753872.25074@pro-230-135>
Sensitivity: Normal
From: "info.admin" <myinfo@hpfc.net.in>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear User, &nbsp;
 The Classic version of Ionos will be replaced
 by our new version on the 6th of December 2023. So it&#39;s time to upgrade,
 before you lose your email access. &nbsp; Sign in &nbsp; Note: &nbsp;P [...]
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: rediffmailpro.com]
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [119.252.152.31 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [119.252.152.31 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [119.252.152.31 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAPJN-0002fy-Aw
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Action_Required?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Dear User,

&nbsp;
The Classic version of Ionos will be replaced by our new version on the 6th of December 2023. So it&#39;s time to upgrade, before you lose your email access.
&nbsp;
Sign in
&nbsp;
Note: &nbsp;Please do not ignore this email to avoid your account being closed.
Thanks for choosing Ionos
&nbsp;

Ionos account team
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
