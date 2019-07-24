Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4B37337F
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 18:17:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqJxH-0006BY-Cj; Wed, 24 Jul 2019 16:17:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hqJxG-0006BR-2G
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 16:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BIVAqstvGX26jQ0E0HvwDdxyzPiMv/yqf/HR0mHjnP0=; b=FRNV/J1b72KzV2ptP4lpZRWCEQ
 GVTdAEeg35x27BNwZ+z1jol6ZOdb+S009Xk/amkgMr9JaQFWwILGOChpEbmHeR9ZY6ts0KV2trllN
 JzFDfpUPnO4oxqKF4CERc7PKZ2AL/rH7chsWoryxbUlcDqe1v3Vvdm0JpWPFj+2rnu6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BIVAqstvGX26jQ0E0HvwDdxyzPiMv/yqf/HR0mHjnP0=; b=C4+LwDu7lUK/l2QjHqQD2YT+vd
 kKZFJtngCu8Pwxuj4QeDOABF4DHT9tpLOjxaoAQFj9PD2uhEooU0KMo/NZ6TRBQaSKcCsj1hriLFM
 ZXM7F/mJoOYL4HJDuTrpEQq3T46itY9bP23YR7ZVQP/xtTLlcXCAMRaKGdacnAaw/0xw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqJxE-00Dx9S-3v
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 16:17:26 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 6DA86C009; Wed, 24 Jul 2019 18:17:17 +0200 (CEST)
Date: Wed, 24 Jul 2019 18:17:02 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190724161702.GA17344@nautica>
References: <20190718135255.GA21431@nautica>
 <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
 <20190718155744.GA31023@nautica>
 <CAKuKrB=BaJLV87e3RVwpda5KYZB4ikwh20+kvbYk0JYYwNOZig@mail.gmail.com>
 <20190724154610.GA11211@nautica>
 <CAKuKrBnSpgPhTeih_yHCTZKEzvbu_8j1+KsE90vNsDzDDqGbpA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKuKrBnSpgPhTeih_yHCTZKEzvbu_8j1+KsE90vNsDzDDqGbpA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
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
X-Headers-End: 1hqJxE-00Dx9S-3v
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthieu Baerts wrote on Wed, Jul 24, 2019:
> On Wed, Jul 24, 2019 at 5:46 PM Dominique Martinet
> <asmadeus@codewreck.org> wrote:
> > That stack trace had kernel_init which made me look at your rootflags
> > again, and this is actually normal: the root mount is 9p2000.u which
> > will use this function, while the outshare mount is 9p2000.L, so all is
> > working as expected here as well.
> >
> > I just forgot there were two different mounts involved and didn't expect
> > them to use different mount options (and much less to interact with each
> > other at this level), but since you found the culprit we don't need to
> > look that way anymore.
> 
> That's indeed interesting to see the options are different. To be
> honest, I didn't configure this and the test I was running is part of
> an old test framework. I don't know why the options are different.
> Do you think it would be better to use "9p2000.L" for the root mount as well?

Well... I honestly think it should have no impact, the two mounts are
separate enough and should not interact with each other.

The greedy me thinks it's better to keep it different to have more
problems and report them :D

The nicer one thinks it's probably safer to make them both 9p2000.L at
some point even if it shouldn't matter too much.

Your call :)

> Have a good (hot) afternoon/evening!

(Look at the positives, free sauna for everyone!)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
