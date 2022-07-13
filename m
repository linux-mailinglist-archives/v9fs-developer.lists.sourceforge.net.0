Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 807D15730C8
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 10:19:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBXaZ-0002cA-Ge; Wed, 13 Jul 2022 08:19:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBXaY-0002c1-Lb
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 08:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kFnzNWxCZBAtAzvncVijnyMsZ788g9J2zeGCrsvs2KI=; b=iUVFujriJZAPsZg6mJAoB5///e
 pGuxpVfoUGmLDLKlF1LaSfkJ4/goIyHI7ji6SBA+8mqwyAQh7I2G3Aa7VFebU+zoY91Tqk2OtBwIc
 U11qrNJLovfphcJzc1GuLSnSd3zeP+FxqW8+WpDWvUnQlmSvGqeEeeNeuenQ5MkOwbFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kFnzNWxCZBAtAzvncVijnyMsZ788g9J2zeGCrsvs2KI=; b=ewLy5BF7JYGZrYLRhvmBgunwS+
 kriLpzHKhV/nmIpPIeAkorvA6UZ7Hzaz4ERnXWZXDmk8AMAb3GCfpIDhHThMCsykgVOFOqAErVFGa
 cU7WtDtmDwzfsyP6RC/dp6+k0g5Yq1gXNdI6+lE7MzTXSGGn1h6dO52KZlfQP/LqW/+4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBXaW-0004vM-FJ
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 08:19:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 13072C009; Wed, 13 Jul 2022 10:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657700348; bh=kFnzNWxCZBAtAzvncVijnyMsZ788g9J2zeGCrsvs2KI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ptzpd2L/oFlh4QFgdq3KW1Ln/nXmq+6hwqe4jFZZw9DZ2ekDXvhSdlCRe3Db828JU
 PTrKr1HyWOmWWMtlCrRBxMr9G3s+VA5o40LiDcPlhEuLBma/AP3dtdoyKqjJCme1fH
 X+9x4E/+XfNFegJb6R5mPgZmeD+pp7AWYxm15r2bYVJHbDvJ1YsiOOqVi63+tWL5T8
 Dq6N2FtZaUHCdyDatV8dM6e4FogWNUTTJx7lrXRj5G9KmgR5/tsKl403ruMM3rtAjj
 YFGU0aG6y3reLHFpnx6viASGylS2sv/LmgDxYeJTfDXKcM60RM7f1IdiAMwn8EAbBH
 niKKm91C3NMhA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6D7B5C009;
 Wed, 13 Jul 2022 10:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657700346; bh=kFnzNWxCZBAtAzvncVijnyMsZ788g9J2zeGCrsvs2KI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cBwR0TywevLZkr1EL7yOuaBuNlvTBdDQSBNdh+oapLKhMxpeZ8PsQoEGT/L7yvd1K
 ZY37kU+pzgrRAaN8i9f360QYnOgMEIwejeG2701D36Bwk6cfpeJBoYgkqUVl27Wx7L
 9IZebPQP+KHecYEtZG2ktJ/K+3YeO1bBx+cVHYX+qYjcU0u1rZpHHofa5SSQOQbJ1C
 mdfntXkpvEVTIj2lENnsbyWveLFLxdpz/LedOmOU0rgLlC0layS1UVVQ1FehgxEa57
 7fiTM64NpJAGJ7wRdZvhe9snJSnap4h2DT+yoXJjBI2b7HjFLfS13l7ewCR+eMQIQL
 ReaKexNDnB1sw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 88e820a3;
 Wed, 13 Jul 2022 08:19:00 +0000 (UTC)
Date: Wed, 13 Jul 2022 17:18:45 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Kent Overstreet <kent.overstreet@gmail.com>
Message-ID: <Ys5/5RJCM6ur7oCc@codewreck.org>
References: <12950409.o0bIpVV1Ut@silver>
 <20220713041700.2502404-1-asmadeus@codewreck.org>
 <0aa8323d-9461-a861-ac35-6952e7aeaf93@gmail.com>
 <Ys5wRdSwtTeLF6nc@codewreck.org>
 <a4d7f359-c430-6487-ec38-009bc2af2e97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4d7f359-c430-6487-ec38-009bc2af2e97@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Kent Overstreet wrote on Wed, Jul 13,
 2022 at 03:40:10AM -0400:
 >> I don't think it really matters either way -- I'm much more worried >>
 about the two points I gave in the commit comment section: mem [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBXaW-0004vM-FJ
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 Suren Baghdasaryan <surenb@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Kent Overstreet wrote on Wed, Jul 13, 2022 at 03:40:10AM -0400:
>> I don't think it really matters either way -- I'm much more worried
>> about the two points I gave in the commit comment section: mempools not
>> being shared leading to increased memory usage when many mostly-idle
>> mounts (I know users who need that), and more importantly that the
>> mempool waiting is uninterruptible/non-failible might be "nice" from the
>> using mempool side but I'd really prefer users to be able to ^C out of
>> a mount made on a bad server getting stuck in mempool_alloc at least.
> 
> We should never get stuck allocating memory - if that happens, game over,
> system can no longer make forward progress.

Well, that boils down to how much you want to trust your server.
The qemu server has been working rather well but I just pulled out
nfs-ganesha back from its grave for trans_fd tests earlier and got it to
crash on fsstress in 5 minutes, because upstream hasn't had anyone
working on the 9p side of things lately.

In that particular case the socket closes and client gets out of
requests, but if the server just stops replying you'll get requests
stuck as 9p cannot get out of flushes -- another long standing bug, this
one is even worse as it's unkillable.
And as long as that waits it won't free up buffers.

Even if that gets fixed, the buffers won't be freed until the server
replies, which can be arbitrarily slow -- ^C on a process that waits
for a free buffer must work.

> > It looked good before I realized all the ways this could hang, but now I
> > just think for something like 9p it makes more sense to fail the
> > allocation and the IO than to bounce forever trying to allocate memory
> > we don't have.
> 
> A filesystem that randomly fails IOs is, fundamentally, not a filesystem
> that _works_. This whole thing started because 9pfs failing IOs has been
> breaking my xfstests runs - and 9pfs isn't the thing I'm trying to test!

I can agree with that and I probably wasn't clear, what I'm talking
about here is interruptability.
If all works well I agree some amount of waiting makes sense, but for
networked stuff some fallback also is important.
(if I could be greedy, some timeout would also make sense to me, but we
can agree to disagree on this one and I'll live without one)

> Local filesystems and the local IO stack have always had this understanding
> - that IO needs to _just work_ and be able to make forward progress without
> allocating additional memory, otherwise everything falls over because memory
> reclaim requires doing IO. It's fundamentally no different with network
> filesystems, the cultural expectation just hasn't been there historically
> and not for any good technical reason - it's just that in -net land dropping
> packets is generally a fine thing to do when you have to - but it's really
> not in filesystem land, not if you want to make something that's reliable
> under memory pressure!

Well... I agree memory pressure isn't a good reason and am happy to
spend some precious free time improving this, but while network
reliability shouldn't be a problem (9p only works on reliable
transports), I wouldn't be trusting 9p with too much.
For virtio this isn't much of a problem but to give an example if the
connection drops (server restart, or if over wan some stateful firewall
restart) then the client gets lost and never recovers unless it's
remounted.
For this particular case, I know of a company that did an implementation
to remember rebuild state (reopen fids etc) from the dentry paths but
that was never made public nor would be applicable as is anyway.

Priorities also aren't the same for everyone: while it probably is
perfectly acceptable to put aside 2MB of memory in your case (single
mount, 4x2x256KB msize), I've seen a usecase which requires many mounts
(three per user logged in on the machine, possibly dozens) with large
RPCs for performance (msize=1MB); clogging up 24MB of memory per user
for filesystems they might not even use doesn't seem right to me.


Well, frankly I've just been advising to get away from 9p whenever I
could, it's simple so it's nice for testing, but I'm always surprised it
keeps getting new users... So I probably shouldn't be maintaining this :)


Anyway, for qemu it's probably possible to improve things some more:

> > Let's first see if you still see if you still see high order allocation
> > failures when these are made much less likely with Chritisan's patch.
> 
> Which patch is that? Unless you're talking about my mempool patch?

You'll need his 4 patches to apply cleanly, it's what we were talking
about for not allocating such large buffers for all requests.

aa32658b1ca1 net/9p: split message size argument into 't_size' and 'r_size' pair
86b277a492be 9p: add P9_ERRMAX for 9p2000 and 9p2000.u
17c59311f84d net/9p: add p9_msg_buf_size()
4b9eca5829ed net/9p: allocate appropriate reduced message buffers

The first three prepare and last one enables it. Most requests will
allocate much smaller buffers, so if you have parallel IOs in particular
it should be quite less likely to hit allocation failures.
They'll still happen for the larger messages (read/readdir/write) if you
can't allocate a single contiguous segment, but even these would only
need one such buffer instead of the current two, so that still helps a
bit.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
