Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09374C1B1F
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 Sep 2019 07:49:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iEoYu-0000E4-Ow; Mon, 30 Sep 2019 05:49:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1iEoYt-0000Du-QG
 for v9fs-developer@lists.sourceforge.net; Mon, 30 Sep 2019 05:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EAnZIEzfuyAmhtDtDe4XGxHIp6MX51C1RF1LVyUBFLI=; b=Ggqfu0YAEdoC24rJjVOGLdp/io
 0abcLR+wntzPPDBXcxj7Vgr5Yc05Yxhgcq68kDuon9gSqkssT9MhpcMq5ykgLYZ5AHFhgY0fcxRX4
 kvxryld+6gvtiprXgzoIkTGzgXfujcAThb0s+yRapfHLMf3CJEC7EfLXSlFfEqwU5+EM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EAnZIEzfuyAmhtDtDe4XGxHIp6MX51C1RF1LVyUBFLI=; b=jf2fY3tUlpPpaAtcl/04V85q9M
 cpDwBwtTafmiNGT6sY8iLOjLE/4uqh6aAfOvMM5aHkecKfrrjjPTDjoHRICvdrr0e5c+J8J9VBT9h
 9xEXLbAweLzmK6HYeX6nM58EZcP7f6CixFkewhKuNZQAE9YzHKil3/OSe9tZTzpbWows=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iEoYr-00B73G-W0
 for v9fs-developer@lists.sourceforge.net; Mon, 30 Sep 2019 05:49:31 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 28964C009; Mon, 30 Sep 2019 07:49:23 +0200 (CEST)
Date: Mon, 30 Sep 2019 07:49:08 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Mounesh Badiger <mounesh.b@gmail.com>
Message-ID: <20190930054908.GB28400@nautica>
References: <CAOGU1pxuDbnCW6MZtfoOcvkttVnAh=yK-YpQ1xFErhczyFQ5Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOGU1pxuDbnCW6MZtfoOcvkttVnAh=yK-YpQ1xFErhczyFQ5Ug@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iEoYr-00B73G-W0
Subject: Re: [V9fs-developer] v9fs - loose cache usage
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
Cc: V9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

Mounesh Badiger wrote on Sun, Sep 29, 2019:
> Hi Dominique,

Please post these to the v9fs-developer list, I'm sure more would be
interested and/or would know better.

I've added the list in Cc now so quoting the full text.

> we are using 9p protocol for exposing our file system.
> 
> For caching metadata we are using cache=loose of v9fs.
> 
> Specifically we have modified v9fs to bypass cache for read/write of data,
> we only using loose cache for metadata.
> 
> Now we are seeing issue, that after unlink most of fids are in cache and
> v9fs is not sending final clunk and underlying filesystme accumulating lot
> of unlinked fids but client perspective they are closed, but space is not
> released.
> 
> 
> I have debugged the issue and found that fids are stuck in cache, I used
> d_prune_aliases() in v9fs_remove() to release inodes from cache.
> 
> Now I would like to understand is it safe to use d_prune_aliases() in
> unlink path

I'm not familiar with this part of the VFS but would say no for an
obvious reason: d_prune_aliases will find an inode's hardlinks and kill
their dentries ; unlink only removes a single hardlink so it's a bit
unreasonable to kill all the aliases here.
Even if that weren't the case it's doing __dentry_kill directly which is
likely unsafe in a number of cases if others are using the dentry, it's
going to rain use-after-frees...

The unlink path might use an extra dput() on the dentry that was just
unlinked though; that might need safeguards (not sure how two racing
unlinks would be handled in the current code) but should work in
general.


However; you're pointing at a much more general problem, the 9p cache
model is absolutely horrible - it's not just unlinked fids that aren't
clunked, it's always keeping a fid on -all- entries it's ever seen, I
personally never use it for this reason.

The whole cache system is very optimistic and could use having some
limits, even something as simple as an LRU might help contain the
disaster a bit... Removing from LRU + dput on unlink would definitely
make sense if one were to pop.
Cache revalidation like NFS does (checking directory mtime to see if
something changed and stuff like that) is probably going to be too
complex but a simple LRU might be doable ; this is just keeping entries
in cache for as long as the client has memory available but this isn't
reasonable for a networked filesystem that keeps resources reserved per
inode in cache (on the server and client).


As a work-around for your problem though a simple flush on your client
('echo 2 > /proc/sys/vm/drop_caches') might do the trick... maybe...

> And can we safely bypass read/write call from cache and use cache only for
> metadata. ?

I don't think anyone has done that, but yet a new cache mode md-only
shouldn't be hard to do and would probably work. You might want
something like the cache=mmap setting for read/write otherwise some
applications will fail.

Quite a lot of code explicitely checks for v9ses->cache being
CACHE_LOOSE or CACHE_FSCACHE though so instead of adding a third close
here having a static inline helper to check if metadata should be cached
might make more readable code...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
