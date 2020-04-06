Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F91419FD5B
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 20:42:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLWhd-0002xT-0n; Mon, 06 Apr 2020 18:42:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jLWhc-0002xM-51
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 18:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eJcFKZN5StRER9FwVVfpDtAZuRiaEah+vyJ/+Irxc/8=; b=d5VUUjxxMEjkP/9Pk1wUzqsV8S
 5q6jlFREKey6G37BE8kjNPq8mfkDiPbxMaG/PG5WlUzebIdq5FLSH91yIe2+h0H+6NJ5GU3iYq5Kr
 w1WtWh062tBIgnATRR70TElE2sCn7GFx0YteBS/wM8Dcv25KA9SVuIbmKm+vXclXjM6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eJcFKZN5StRER9FwVVfpDtAZuRiaEah+vyJ/+Irxc/8=; b=kHRZA7nYDSu6Niuzj3Kpahwzi+
 HSV2GFfQd/oD0TEEx+iKdrsrGxP81OvrTXl6dy7fNAx6NmjO8KIvT3x+FE/8igLLlfqVX/fTI6pra
 kmMjvs9sxTd3I42S5ergc/NAOqvXDYcaXIsDU5eVwsS48iQy3QX9Wxsoo9Ku8L46OXaM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLWhY-009TLU-Jb
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 18:42:32 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id F03BAC01A; Mon,  6 Apr 2020 20:42:21 +0200 (CEST)
Date: Mon, 6 Apr 2020 20:42:06 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200406184206.GA19275@nautica>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200406164641.GF21484@bombadil.infradead.org>
 <CAHk-=wiAiGMH=bw5N1nOVWYkE9=Pcx+mxyMwjYfGEt+14hFOVQ@mail.gmail.com>
 <20200406173957.GI21484@bombadil.infradead.org>
 <CAHk-=wjh0szm+btaHptV1_XMMih=c1zP5wU8MQmREVKmJSYUcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjh0szm+btaHptV1_XMMih=c1zP5wU8MQmREVKmJSYUcA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLWhY-009TLU-Jb
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, Sergey Alirzaev <l29ah@cock.li>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds wrote on Mon, Apr 06, 2020:
> I think the O_NONBLOCK difference is one of the more benign ones.
> 
> I just think it should be documented more.

Hadn't explicitely added you in Ccs, but I did post something to
document it:
http://lkml.kernel.org/r/1586193572-1375-1-git-send-email-asmadeus@codewreck.org

(small enough to just quote:)
--------------
diff --git a/Documentation/filesystems/9p.txt b/Documentation/filesystems/9p.txt
index fec7144e817c..3fb780ffdf23 100644
--- a/Documentation/filesystems/9p.txt
+++ b/Documentation/filesystems/9p.txt
@@ -133,6 +133,16 @@ OPTIONS
 		cache tags for existing cache sessions can be listed at
 		/sys/fs/9p/caches. (applies only to cache=fscache)
 
+BEHAVIOR
+========
+
+This section aims at describing 9p 'quirks' that can be different
+from a local filesystem behaviors.
+
+ - Setting O_NONBLOCK on a file will make client reads return as early
+   as the server returns some data instead of trying to fill the read
+   buffer with the requested amount of bytes or end of file is reached.
+
 RESOURCES
 =========

--------------

Will submit the pull request again with that in a couple of days unless
anything bad happens.

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
