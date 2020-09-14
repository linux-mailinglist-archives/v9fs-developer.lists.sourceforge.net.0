Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6394226873E
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 10:32:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHjuV-0004uV-6T; Mon, 14 Sep 2020 08:32:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kHjuS-0004uK-7t
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=slhrZCKrdO4mAuUHqBFgn9Y9HHsE+QNov3f8GqgmZN8=; b=G0jAmn4Duk4/8kMDUvX/oTBXAS
 PXj2se161Te5DcUJYGPp9YMiQqWZKeCxzhLi1QsQ50km99xDQ4z90GbHSBbzSjipvWzcDvMb5E1rS
 gK1Fh6x06yynwFp+mCT1BubZ8orQIQaNUE1LATNqFWCFMxv6eau8lwhfJktFFfAUlNgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=slhrZCKrdO4mAuUHqBFgn9Y9HHsE+QNov3f8GqgmZN8=; b=Z
 8E6r5UCro7pMUJjZ85gW/TqexU+IclppUBMClHpzMBD2m1tlhIO/7wsJXKfU3gQRcPKZ/HDdsEY7Y
 I6hy4jVVPQR8GN2eT0WSwWuCp5fYNuGcmcBMCCrli4E6YfVHmYr39nwW5J/Vte6+gR77f78OMj5rC
 rj97waCckc1fgV0Y=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHjuP-0089Rz-Q9
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:32:24 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 77BEFC009; Mon, 14 Sep 2020 10:32:15 +0200 (CEST)
Date: Mon, 14 Sep 2020 10:32:00 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Message-ID: <20200914083200.GA9259@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HE1PR0802MB255594D67D97733CFDFE777EF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <HE1PR0802MB25555E7AAFA66DA3FE025D0AF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FAKE_REPLY_C           No description available.
X-Headers-End: 1kHjuP-0089Rz-Q9
Subject: Re: [V9fs-developer] [PATCH RFC 4/4] 9p: fix race issue in fid
 contention.
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
Cc: "lucho@ionkov.net" <lucho@ionkov.net>, Justin He <Justin.He@arm.com>,
 "ericvh@gmail.com" <ericvh@gmail.com>, Greg Kurz <groug@kaod.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Mon, Sep 14, 2020:
> > Not having exceptions for that will also make the code around
> > fid_atomic_dec much simpler: just have clunk do an atomic dec and only do
> > the actual clunk if that hit zero, and we should be able to get rid of that
> > helper?
> 
> Sorry, I think always-one refcount  won't work at this point, as the
> fid will be clunked only by file context itself not the every consumer
> of every fid. We can't decrease the refcounter at just one static
> point.
> Am I wrong?

I don't understand the "We can't decrease the refcounter at just one
static point".
Basically everywhere you added a fid_atomic_dec() will just need to be
changed to clunk -- the basic rule of refcounting is that anywhere you
take a ref you need to put it back.

All these places take a fid to do some RPC already so it's not a problem
to add a clunk and do one more; especially since the "clunk" will just
be just a deref.
For consistency I'd advocate for the kref API as we use that for
requests already; it might be better to rename the clunk calls to
p9_fid_put or something but I think that's more churn than it's
worth....


Is there anywhere you think cannot do that?

> This enum value is not functionally necessary, but I think it can
> reduce the contention of fid, as there are really lots of scenarios
> that fid from inode is not necessary.

I really don't think it makes things slower if done correctly (e.g. no
waiting as currently done but the last deref does the actual clunk), and
would rather keep code simpler unless the difference is big (so would
need to do an actual benchmark of both if you're convinced it helps) --
sorry.

>> If possible put the patch first in the series so commits can be
>> tested independently.
> 
> Ah, this patch depends on the previous patches, how can I put it as
> the first of the series?

Basically build the logic in the first patch, then either apply the
other three as close as they currently are as possible and add the
missing refcalls in a new patch or incorporate the refcounting in them
as well.
It's fine if you keep it it last, that was just a greedy request on my
part to be able to test async clunk more easily ; forget about it.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
