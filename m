Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6F037BC7B
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 14:26:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgnwp-0004eE-Rg; Wed, 12 May 2021 12:26:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lgnwo-0004dg-Pz
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 12:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qRiEqFkARgBkMB/Fjc0OdbBaBkXH4b8kFypa6t8BEow=; b=MFab4XkGMri2NmGfRqL/r3Jawm
 REMyPLS++zrwQL3PwcR7Ov8GpxKoVLVr5ytGMbOsWHUm6IHXD3QtVtl5uMIlO1VxDGcvkxhZ/d3IH
 iAC4xKU76QBf+illlymeJl/OUG/OmnB2tjCAZ+qwV54iA3+DskvV6s9O6/veEReqp6jY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qRiEqFkARgBkMB/Fjc0OdbBaBkXH4b8kFypa6t8BEow=; b=lM4nwY9sXGMZfMT5GKyFkD45Or
 tv4p5Gix3trN7ntt+3zEYIqaxzzc4l+ag5ChiwEBfLA4EPdCs3481k6YFJnYWHo0wlYTx2HGJcyIW
 6zVz60Ta9VlriAsKD7vWCpJgsl053oyCgrIijeau2NkDRKY9uYScrvROdYQ3vRQDTLzw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgnwb-0004O6-Bv
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 12:26:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A585FC01A; Wed, 12 May 2021 14:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620822382; bh=qRiEqFkARgBkMB/Fjc0OdbBaBkXH4b8kFypa6t8BEow=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=scHnOKsdnhVcwu0hQnueE+cYG7l5yJnpN5A5ieyQH87/Gi68f4U9vULVkMMDMFkwj
 qOOPbzsjPFnIGL5BbnvEKfRQWnijcTjlKK/skd9MDxZFF2g4SkNgfZUdGYUYsZuiHX
 aVwm9cloG0RjCbV9mHePnt4x5qegFC9xoUfa7ckO0/mYyraiuJAe2rVEjxzGxVTWRS
 rkX8330C8hEDGgDNosuKUWi1KmsuO1yxwkzI+CTJlCUFQoJv8h8Z620KmMC2V55tfo
 624BMFW3R4PYwn+yjQvez1q5kTIpUulBaQoEIBZ+FOsIHM/GIeOQWL5GzjGOFgCAek
 o4O2flcoiPxmg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 84612C009;
 Wed, 12 May 2021 14:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620822382; bh=qRiEqFkARgBkMB/Fjc0OdbBaBkXH4b8kFypa6t8BEow=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=scHnOKsdnhVcwu0hQnueE+cYG7l5yJnpN5A5ieyQH87/Gi68f4U9vULVkMMDMFkwj
 qOOPbzsjPFnIGL5BbnvEKfRQWnijcTjlKK/skd9MDxZFF2g4SkNgfZUdGYUYsZuiHX
 aVwm9cloG0RjCbV9mHePnt4x5qegFC9xoUfa7ckO0/mYyraiuJAe2rVEjxzGxVTWRS
 rkX8330C8hEDGgDNosuKUWi1KmsuO1yxwkzI+CTJlCUFQoJv8h8Z620KmMC2V55tfo
 624BMFW3R4PYwn+yjQvez1q5kTIpUulBaQoEIBZ+FOsIHM/GIeOQWL5GzjGOFgCAek
 o4O2flcoiPxmg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f0ca766e;
 Wed, 12 May 2021 12:26:17 +0000 (UTC)
Date: Wed, 12 May 2021 21:26:02 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Luis Henriques <lhenriques@suse.de>
Message-ID: <YJvJWj/CEyEUWeIu@codewreck.org>
References: <87tun8z2nd.fsf@suse.de> <87czu45gcs.fsf@suse.de>
 <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk>
 <87fsysyxh9.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fsysyxh9.fsf@suse.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lgnwb-0004O6-Bv
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
Cc: David Howells <dhowells@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-fsdevel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Luis Henriques wrote on Wed, May 12, 2021 at 12:58:58PM +0100:
> <...>-20591   [000] ...2    67.538644: fscache_cookie: GET prn c=000000003080d900 u=50 p=0000000042542ee5 Nc=48 Na=1 f=22
> <...>-20591   [000] ...1    67.538645: fscache_acquire: c=0000000011fa06b1 p=000000003080d900 pu=50 pc=49 pf=22 n=9p.inod
> <...>-20599   [003] .N.2    67.542180: 9p_fscache_cookie: v9fs_drop_inode cookie: 0000000097476aaa
> [...]
>
> So, this is... annoying, I guess.

Oh, this actually looks different from what I had in mind.

So if I'm reading this right, the dup acquire happens before drop on
another thread, meaning iget5_locked somehow returned an inode with
I_NEW on same i_ino than that of the inode that is dropped later?...

How much trust can we actually put in trace ordering off different cpus?
My theory would really have wanted just that drop before the acquire :D



Anyway, I think there's no room for doubt that it's possible to get a
new inode for the same underlying file before the evict finished; which
leaves room for a few questions:
 - as David brought up on IRC (#linuxfs@OFTC), what about the flushing
of dirty data that happens in evict()? wouldn't it be possible for
operations on the new inode to read stale data while the old inode is
being flushed? I think that warrants asking someone who understands this
better than me as it's probably not 9p specific even if 9p makes it
easier to get a new inode in such a racy way...

 - for 9p in particular, Christian Schoenebeck (helping with 9p in qemu)
brought up that we evict inodes too fast too often, so I think it'd help
to have some sort of inode lifetime management and keep inodes alive for
a bit.
As a network filesystem with no coherency built in the protocol I don't
think we can afford to keep inodes cached too long, and I know some
servers have troubles if we keep too many fids open, but it would be
nice to have a few knobs to just keep inodes around a bit longer... This
won't solve the fundamental problem but if the inode isn't evicted at a
point where it's likely to be used again then this particular problem
should be much harder to hit (like other filesystems, actually :P)

I'm not sure how that works though, and won't have much time to work on
it short term anyway, but it's an idea :/

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
