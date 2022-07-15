Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1148575F48
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Jul 2022 12:23:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCIU6-0002Qb-La; Fri, 15 Jul 2022 10:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oCIU4-0002QT-1x
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 10:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2zH3+RcOpj3VapBgSNlj16MjgFWurQleDzs92H3K2SM=; b=NMLMhM7p2mm/LQCol//SbM4Q49
 GjyT0o9E3i0lWXiNm6GA0k3u9oyQZ2kxSICCAs/P/bzmv2nY7tjke6WmYGbt1g3AEmZKbvrIVd0XD
 Jx8xicoAEKYWBBQNqbAzv1raeIyg3bVJNmt64JSvQQfqJVpLb+DCW2pVWnQEhAc8gxZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2zH3+RcOpj3VapBgSNlj16MjgFWurQleDzs92H3K2SM=; b=R66hZ2yx3v5Khcyk+v1tjAWeDH
 E8FYKfTBqaIj+MiCZ4OlD33ISjdb1lDLbzw27oVyG/IER21QpuvsA8pU8ZuQjtXaLQFrgz1o/w5sw
 cOmtjVrasaay5oBVL6zhpMTP5+VHHkLreQ5fIpZqN9EEv4nza/IATzv81O+55reZppzM=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCITz-00072c-Rg
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 10:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=2zH3+RcOpj3VapBgSNlj16MjgFWurQleDzs92H3K2SM=; b=GRMr1WmBZYXKzWoQUG20M7KR27
 z3ncbLYQHo4c5EADNbVIavx2+QX6rxB9HBNK/T7WdVAc5i9+q2VoGVCXEHWUwIwZspgK5QPuMIGSi
 QpJgpuJmrLEpBlUbkxeQRo+H3YTufrhSC6WDrEwcTt8SahUy/j4nFxH8B4GRQcbzrp+BStpShg/zS
 RKDmKXTTYKzW8YoTDpD1E92qOp1vWqZheCFDj9ufHd1PaJJl+MTCNqv+Y9uN5oaXGsZCGTVZskziE
 plnbO+kvzopLG2O6C06YhYkPW99lT9i76noxrIb8zn7MSJAl90Fe3R4Kz9lJfzX+W9GD0+ag6NGla
 BNPPPEACL1s+l0NuuW728HD6zf1et2dR0LrDXGKfgDjCDgBXPv90O3ENhI6zowICeeIWksWsHD4RN
 ckTlaKazHeMXSgKm2B42P5HAKQYBkr55Ol43FbaZomVaOenLt1sSj74PZttVYsfA3+JQh6tOX4qFL
 772iP6sv9wNF4TJSdb9wq4y98AZbPZ4wLGWIICL5ehKi1C+5DWrSDY1O/inG+cp++w5DjmHEhyg7M
 CMv0GuqUg9OPHvNf665hqqz7Y0kcgC5H5EbNRoduOx2r7d3iwS7wJQ65wnF8RIDNHF4iqrCXu67hV
 A45JLbfSw96jrnXDlxz5Nfd94Di5Hkftdd+hR+Ook=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 15 Jul 2022 12:23:25 +0200
Message-ID: <2060964.beLPFR4sfc@silver>
In-Reply-To: <YtCZWmPxqbL8VlTl@codewreck.org>
References: <12950409.o0bIpVV1Ut@silver> <2229731.hRsvSkCM7u@silver>
 <YtCZWmPxqbL8VlTl@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 15. Juli 2022 00:31:54 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Thu, Jul 14, 2022 at 09:16:14PM +0200:
 > > Patch looks fine on first impression, but I'll postpone te [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oCITz-00072c-Rg
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: forbid use of mempool for
 TFLUSH
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kurz <groug@kaod.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 15. Juli 2022 00:31:54 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Thu, Jul 14, 2022 at 09:16:14PM +0200:
> > Patch looks fine on first impression, but I'll postpone testing this. And
> > yes, I also think that exempting Tflush should be fair. If 4k (soon)
> > cannot be allocated, then you probably have worse problems than that.
> 
> Yes, would be for a later cycle anyway -- no hurry.
> 
> > > Here's a concrete version of what I had in mind: literally just make
> > > allocation fail if the initial alloc failed.
> > > 
> > > I can't reproduce any bad hang with a sane server here, but we still
> > > risk hanging with a bad server that ignores flushes as these are still
> > > unkillable (someday I'll finish my async requests work...)
> > > 
> > > So ultimately there are two things I'm not so happy about with mempools:
> > >  - this real possibility of client hangs if a server mishandles some
> > > 
> > > replies -- this might make fuzzing difficult in particular, I think it's
> > 
> > Concrete example of such a mishap?
> 
> The example I gave Kent in another reply is just server misbehaving -- I
> have had histories of troubles with ganesha in the past -- but even with
> low memory qemu and fio and ^C it felt more likely to get stuck? it
> looked killable e.g. pkill -9 fio would get me out of it with this
> patch, but ^C ought to work in my opinion.

Ah, I thought you had concrete message sequences in mind or something. NP

> In particular with the io_uring engine some of the workers aren't
> visible at all from userspace (I only found out about them through
> qemu's gdb and lx-ps), so it's really hard to see we're stuck on an
> allocation if that ever happens...

So also a candiate for showing the amount of workers et al. in a future proc 
entry.

> Ultimately I think mempool is great for short-lived allocations
> e.g. temporary buffers, where we can be sure the memory will be freed up
> after a short bounded time, but it might just not be a great fit for 9p.
> I'm not sure what to suggest instead, though; this is really worst-case
> thinking and just having ^c work e.g. make mempool_alloc interruptible
> and failible would probably be enough to convince me.
> 
> > > easier to deal with failed IO (as long as it fails all the way back to
> > > userspace) than to hang forever.
> > > I'm sure there are others who prefer to wait instead, but I think this
> > > should at least have a timeout or something.
> > 
> > Not sure if it was easy to pick an appropriate timeout value. I've seen
> > things slowing down extremely with 9p after a while. But to be fair,
> > these were on production machines with ancient kernel versions, so maybe
> > already fixed.
> I'm not sure what kind of timeframe you're thinking of, for exmple
> lustre has 5 minutes timeouts in some places -- although depending on
> the failure some things will also wait forever.
> I was thining something similar, but realistically this isn't going to
> happen anyway, at least not here, so let's not waste too much time on
> this point...

I think these were approximately in the scope of around 10s? But given that I 
observed that only after running it for a while, it might also increase over 
time.

But OTOH, if that issue really still exists (not certain), then it would make 
more sense for me to find out why that happens in the first place. Because a 
latency of several seconds on a local system is simply odd.

> > A proc interface would be useful though to be able to identify things like
> > piling up too many fids and other performance related numbers.
> 
> That would be nice, yes.
> We can probably pull in some stats from either idr (requests for tags
> and fids) quite easily -- that might be a nice side project if someone
> wants to do this.

Already on my todo list. :)

> > >  - One of the reasons I wanted to drop the old request cache before is
> > > 
> > > that these caches are per mount/connection. If you have a dozen of
> > > mounts that each cache 4 requests worth as here, with msize=1MB and two
> > > buffers per request we're locking down 8 * 12 = 96 MB of ram just for
> > > mounting.
> > > That being said, as long as hanging is a real risk I'm not comfortable
> > > sharing the mempools between all the clients either, so I'm not sure
> > > what to suggest.
> > 
> > Why would a shared mempool increase the chance of a hang or worsen its
> > outcome?
> 
> In the tcp/really remote server case, if a server stops responding
> that'll get these requests not freed for a while (until the user gives
> up, possibly never); if the client also is under enough memory pressure
> to just fail a single alloc then on a still working mount we'll
> potentially have no buffer to give it and get that other working mount
> stuck.

OK, I got that, but if the mempools were shared among multiple 9p mounts, then 
it would also be less likely to trigger the case as less memory is used 
overall, no?

> Another example would be re-exporting a network filesystem, e.g. at
> previous job we'd run a 9p server re-exporting multiple lustre
> mountpoints on different servers, so one could get stuck while others
> still work. That this would impact the 9p client on different mounts on
> the client side is a bit of a bummer.

OK, that would indeed be a scenario making a difference, as one mount could 
tear down the other ones.

> Anyway, this is just looking for trouble and I'm sure most users would
> only see improvements with this -- we're talking about some allocations
> that would have failed anyway which should be rare enough in the first
> place, and in the nominal case we'd get this to work when it doesn't.
> I'm just not fully comfortable with the failure mode at this point.
> --
> Dominique





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
