Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6806719FA5B
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 18:41:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLUoP-0005fz-Dn; Mon, 06 Apr 2020 16:41:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jLUoO-0005fs-Of
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:41:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A6G5S12nClEOGr9aNFM3fArG+QBRNh0wlse9tQQ84l8=; b=bOAXiM0oL7ORwH3MNJGC7pA58D
 fm02LgMgNAi4JTtofwMk6tfyy0UdhWuJTldUzrxf65JHvZvJ1llW8EkcxrL9jb2YH+MFmnsDxGzE5
 4SXwXvvzyG8TbByTYHtNubwlXU6ANJPOK6CgSNjGQL1AmmLGyfqtQeNUI6omRltJHUZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A6G5S12nClEOGr9aNFM3fArG+QBRNh0wlse9tQQ84l8=; b=EJPVZZy35MuTcSf6/AgCdmEs68
 JrLme7xx80GyinVT0a6Er21uK78Q7UTr5Gm6otAdsyrPuqDiO8Y0lOySe+dlODGbOj7Ay6FR35MRq
 p2WrkynRxuUhyWMQYi+EyiRUoPZfcSL3tgKsetiV+6wJJsUwEAXauKVVBTBIE1YuZh2Q=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLUoL-004d1F-1g
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:41:24 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 6AB69C009; Mon,  6 Apr 2020 18:41:12 +0200 (CEST)
Date: Mon, 6 Apr 2020 18:40:57 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200406164057.GA18312@nautica>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLUoL-004d1F-1g
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
 v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Alirzaev <l29ah@cock.li>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds wrote on Mon, Apr 06, 2020:
> On Mon, Apr 6, 2020 at 4:07 AM Dominique Martinet
> <asmadeus@codewreck.org> wrote:
> > - Fix read with O_NONBLOCK to allow incomplete read and return
> > immediately
> 
> Hmm. This is kind of special semantics (normally a POSIX filesystem
> ignores O_NONBLOCK), but I guess it makes sense for a network
> filesystem.
> 
> It might be worth a bti more documentation/commenting because of the
> special semantics. For example, since you don't have 'poll()',
> O_NONBLOCK doesn't really mean "nonblocking", it means "stop earlier"
> if I read that patch right. You can't just return -EAGAIN because
> there's no way to then avoid busy looping..

Yes, I think you got this right.

Basically there is no way to tell if the server will return immediately
or not, so even with O_NONBLOCK the read() will still be 'blocking' if
the server decides to wait for something before sending a reply.

This patch will just make the read stop after a single round-trip with
the server instead of looping to fill the buffer if O_NONBLOCK is set.

The use-case here is stuff like reading from synthetic files (think fake
pipes) where data comes in like a pipe and one would want read to return
as soon as data is available.
Just thinking out loud it might be possible to make pipes go through the
server and somewhat work, but this might bring its own share of other
problems and existing programs would need to be changed (e.g. wmii's
synthetic filesystem exposes this kind of files as well as regular
files, which works fine for their userspace client (wmiir) but can't
really be used with a linux client)
(Added Sergey in Cc for opinion)



Anyway, I agree looking at O_NONBLOCK for that isn't obvious.
I agree with the usecase here and posix allows short reads regardless of
the flag so the behaviour is legal either way ; the filesystem is
allowed to return whenever it wants on a whim - let's just add some docs
as you suggest unless Sergey has something to add.

I will add a few lines on that in Documentation/filesystems/9p.txt and
send another pull request in a couple of days to give whoever wants to
review time to comment on wording.

Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
