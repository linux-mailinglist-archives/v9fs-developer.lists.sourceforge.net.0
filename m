Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7376B80613E
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Dec 2023 23:02:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rAdUT-0003Lt-Ay;
	Tue, 05 Dec 2023 22:02:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <myinfo@hpfc.net.in>) id 1rAdUS-0003Ln-IX
 for v9fs-developer@lists.sourceforge.net;
 Tue, 05 Dec 2023 22:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:From:Subject:Sender:Message-ID:To:
 MIME-Version:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZJNa1pfjPgYpiUfbojnjVZcXXaBXHQKyYa9pa2KtfJk=; b=W7XLw6tDVE0kag8gykzO0OqRTD
 2zNv6G0lQXO4sMIIDNzqcHxi3ZghbJlonFkE0E0hXUZb8LbCX+sRN1cip/peV5Lnhe9v0a8ELYCuN
 5OB+DE87dxRsb6Kv2LjsV+wwFbDKTqk4XHAkxGHWD48JrS4HTqrM7cxFotTUmCfZE3ns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:From:Subject:Sender:Message-ID:To:MIME-Version:Date:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZJNa1pfjPgYpiUfbojnjVZcXXaBXHQKyYa9pa2KtfJk=; b=T
 mIe5HTjGCUno8Wc3M0e+DspQn2ar9NuLamcDzbmOZvbBQCCjdRIkl1FSEHgc3hj0CUiq7ABO10Gav
 BFAYw+aPgiLz8PtOfftGGuErTtr1dBo42KoFhIFxA9SK/li90Ulq+Wc+QxczoAegGjHkQzZ93fJfC
 0do0Qp5lZ/lK1edU=;
Received: from pro152-43.mxout.rediffmailpro.com ([119.252.152.43]
 helo=pro152-51.mxout.rediffmailpro.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rAdUO-0004ht-Ok for v9fs-developer@lists.sourceforge.net;
 Tue, 05 Dec 2023 22:02:04 +0000
Received: from pro-230-153.rediffmailpro.com (unknown [10.50.252.5])
 by pro152-51.mxout.rediffmailpro.com (Postfix) with ESMTP id 98B901E1D42
 for <v9fs-developer@lists.sourceforge.net>;
 Wed,  6 Dec 2023 03:31:47 +0530 (IST)
X-REDIFF-Delivered-Remotely-To: v9fs-developer@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
 s=epro; t=1701813708;
 bh=ZJNa1pfjPgYpiUfbojnjVZcXXaBXHQKyYa9pa2KtfJk=;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 b=SjFSRxdSnZ8QYwvn3LiKfTlI/gqD6TIqlaPR6BRoiBbpd3Bv2vBuJGXICbqAYtD8B
 7Kh3lcQe1Aab+X6nzLlQkRK+KXomiOp7ug/LdJA773G/xO4ly6LH1uW6wilNAo2pAp
 bVVt1hRGEi4lqCfoBkAolrhENlWFEBaImWdu5IvU=
Received: (qmail 19110 invoked by uid 510); 5 Dec 2023 22:01:48 -0000
x-m-msg: a340c9d793f6a24ba123b614a7e03114; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 101\PHISHING
X-OUT-VDRT-SpamScore: 300
X-OUT-VDRT-SpamCause: "gggruggvucftvghtrhhoucdtuddrgedvkedrudejkedgudehhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucftgfffkffhhfenuceurghilhhouhhtmecufedttdenucgorfhhihhshhhinhhgqdfjohhsthculdeftddtmdenucfjughrpeffggfvkfhsuffhtgesrgdtreertddtjeenucfhrhhomhepfdhinhhfohdrrggumhhinhdfuceomhihihhnfhhosehhphhftgdrnhgvthdrihhnqeenucggtffrrghtthgvrhhnpeefgfegkefhgffhtddufffhueeigeffjeeffeevkedvueefleeggeduhefgtdeludenucffohhmrghinhepihhmqdgtrhgvrghtohhrrdgtohhmnecukfhppeekledrudegledrudehrddvheenucfuphgrmhfkphepkeelrddugeelrdduhedrvdehnecuufhprghmkfhppfgvthifohhrkhepkeelrddugeelrdduhedrvdehnecurfhhihhshhhinhhgjfhoshhtpeiffiifrdhimhdqtghrvggrthhorhdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmhihinhhfoheshhhpfhgtrdhnvghtrdhinhdpnhgspghrtghpthhtohephedprhgtphhtthhopegsrhhijhgvshhhkhhumhgrrhdrshhinhhghhesrghmugdrtghomhdprhgtphhtthhopegvvhgrnhdrqhhurghnsegrmhgurdgtohhmpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhrtghpthhtohepnhgvhhgrlhdqsggrkhh
 ulhgthhgrnhgurhgrrdhshhgrhhesrghmugdrtghomhdprhgtphhtthhopehshihnihhurhhgvgesghhmrghilhdrtghomhdpmhhouggvpehsmhhtphhouhht"
X-Dedup-Identifier: 1701813708_19109_19108_pro-230-153
Date: 5 Dec 2023 22:01:48 -0000
MIME-Version: 1.0
To: <office@qcperio.com>, <bfields@redhat.com>,
 <jhswint@swintconsultingservice.com>, <blcksmth@reagan.com>,
 <firechief@villageofpayne.com>, <gottliebatty@aol.com>,
 <sue.tronchetti@landus.ag>, <yenrug@willard-oh.com>, <cbradley@netins.net>,
 <friendsforsteiger@gmail.com>, <yenrug@willard-oh.com>,
 <sue.tronchetti@landus.ag>, <cbradley@netins.net>,
 <friendsforsteiger@gmail.com>, <compliance@ionos.de>,
 <registries@antagus.de>, <baymaxhuang@gmail.com>,
 <morganwall354@gmail.comsecurity>, <klassert@kernel.org>,
 <alex.aring@gmail.com>, <jukka.rissanen@linux.intel.com>,
 <linux-bluetooth@vger.kernel.org>, <linux-wpan@vger.kernel.org>,
 <ajk@comnets.uni-bremen.de>, <linux-hams@vger.kernel.org>,
 <johannes@sipsolutions.net>, <hkallweit1@gmail.com>, <nic_swsd@realtek.com>,
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
 <evan.quan@amd.com>, <brijeshkumar.singh@amd.com>
Received: from unknown 89.149.15.25 by rediffmailpro.com via HTTP; 05 Dec 2023
 22:01:48 -0000
Message-ID: <20231206033148.1701813708.19097@pro-230-153>
Sensitivity: Normal
From: "info.admin" <myinfo@hpfc.net.in>
X-Spam-Score: 1.5 (+)
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
 Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: im-creator.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [119.252.152.43 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [119.252.152.43 listed in list.dnswl.org]
 1.0 FORGED_SPF_HELO        No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAdUO-0004ht-Ok
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?UPDATE_NOTIFICATION?=
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
