Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE53B565679
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 15:06:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8Lmc-0002rN-KI; Mon, 04 Jul 2022 13:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o8Lmb-0002rA-NN
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cxLipKId9//KpoYaYTVtTMphD/C/dvBBPxKmF4PDz5k=; b=RadwdnWFEj5/d0s189XRE9rSJF
 mhq4K3zo4gkVAwLiEWuQ+UsPZutx6BUwU6RA/MzHyM4QAIgbpDDAwHqKKCnHvfwMset2nQFxu8ZS/
 jTgisH/HGQyQbkJMWirWDk30wWE6VJWA8bTEyvAKCZbuxOco3w76WqJZOJqTq9I9GxrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cxLipKId9//KpoYaYTVtTMphD/C/dvBBPxKmF4PDz5k=; b=mOBfv9QwkCxE06LyQOzEJeJ1Es
 LFaKpAxVIuefQFWw/4j1DBS3M9tQPQZ/YwBqfbJWaGxg0OeENxlyBqh+9k7lbNl3dghPSBWzLdp+f
 9JENiUPeHra3aWud4LZEhpHAoWiWF8Bf8TQkrAZzKNJ1HvPnctO/T6vfaxg7JhfoFHHA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8LmX-0004ti-OL
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:06:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4F862C009; Mon,  4 Jul 2022 15:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656939983; bh=cxLipKId9//KpoYaYTVtTMphD/C/dvBBPxKmF4PDz5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vPCPiQCv3Kp1oiXMgLagjXjT9EMRQN/rARGNp+zZWdNK3pYhQwXm4dPiUUdhv/RZu
 SCS/CEj8V0HQQTdPSBsaTBpkhIXHBvcah6cvk7Ogh4hs/acJoVuKucp6FMLBvh2U/t
 qjCOlXPokhH8mAXnUoi6gcGwZD3nSZkwycegEgu0+Oj85/hiyIZPMjZCCM5BGgACxY
 1dzKVOT32dM949ZPebvp/ISP0H2YC90VM1hZJh+TdZYG42gfaDfwwaFhQph27fX48O
 gTdd6YidcpaAYDK6zrudfzi2aNPXs/yR3zdUKkmFNXLNWMmGNbeT7d8NbUWz99KUOD
 NeYiHdMJ7rX5A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8E36AC009;
 Mon,  4 Jul 2022 15:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656939982; bh=cxLipKId9//KpoYaYTVtTMphD/C/dvBBPxKmF4PDz5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xOInZ1wThYJWs6BruA7q6Jjsz1GxvxBtRETt/n1Aeo4Bhm5s7hLyPfq0qeyqJFhTh
 ihsOdRz8G98jdGxbycPKii11c07Tk8qE1PC64ilxZpx9oW3yWyxvwpLfg96+uDjaf6
 V6Uk4V4BQYL3Ip9fB+0J0QeXJMVKfQpaX8OQtpPpFRmlkmbTFx/xeoTiKmFPHbDBKU
 e/JEqRnm7kS5oXc5K1/ietCmp9aMd9DWeFmZlxiteLmNjvOdNgqJPbjSPh4QerES4e
 48slT9ewiT6DRXpMmQEPD5d82wurelk70jAUxQMiQ1GSj93kXrWHgSsiFqC50ka5Eo
 wbQx4Ob4DH2qQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 006f3d3d;
 Mon, 4 Jul 2022 13:06:15 +0000 (UTC)
Date: Mon, 4 Jul 2022 22:06:00 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YsLluKb1v5SqN2xD@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
 <YsJgxoTyYxX1NwyW@codewreck.org> <2335194.JbyEHpbE5P@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2335194.JbyEHpbE5P@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Jul 04,
 2022 at 01:12:51PM
 +0200: > On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
 > > +Christian, sorry I just noticed you weren't in Ccs again -- [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o8LmX-0004ti-OL
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Jul 04, 2022 at 01:12:51PM +0200:
> On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
> > +Christian, sorry I just noticed you weren't in Ccs again --
> > the patches are currently there if you want a look:
> > https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool
> 
> I wonder whether it would make sense to update 9p section in MAINTAINERS to 
> better reflect current reality, at least in a way such that contributors would 
> CC me right away?

I almost suggested that, but Al Viro didn't cc Eric/Latchesar on the
previous series so I'm not sure how much people rely on MAINTAINERS and
how much of it is muscle memory...
Well, can't hurt to try at least -- giving Eric and Latchesar a chance
to reply.



Replying out of order

> However that's exactly what I was going to address with my already posted 
> patches (relevant patches regarding this issue here being 9..12):
> https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/
> And in the cover letter (section "STILL TODO" ... "3.") I was suggesting to 
> subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size 
> categories? Because that's what my already posted patches do anyway.

Yes, I hinted at that by asking if it'd be worth a second mempool for 8k
buffers, but I'm not sure it is -- I think kmalloc will just be as fast
for these in practice? That would need checking.

But I also took a fresh look just now and didn't remember we had so many
different cases there, and that msize is no longer really used -- now
this is just a gut feeling, but I think we'd benefit from rounding up to
some pooled sizes e.g. I assume it'll be faster to allocate 1MB from the
cache three times than try to get 500k/600k/1MB from kmalloc.

That's a lot of assuming though and this is going to need checking...


> Hoo, Dominique, please hold your horses. I currently can't keep up with 
> reviewing and testing all pending 9p patches right now.
> 
> Personally I would hold these patches back for now. They would make sense on 
> current situation on master, because ATM basically all 9p requests simply 
> allocate exactly 'msize' for any 9p request.

So I think they're orthogonal really:
what mempool does is that it'll reserve the minimum amount of memory
required for x allocations (whatever min is set during init, so here 4
parallel RPCs) -- if normal allocation goes through it'll go through
normal slab allocation first, and if that fails we'll get a buffer from
the pool instead, and if there is none left it'll wait for a previous
request to be freed up possibly throttling the number of parallel
requests down but never failing like we currently do.

What will happen with your patches is we'll get less large buffers
allocated so we can reduce the reserved amount of buffers, but there
will still be some so Kent is still going to be just as likely to see
high order allocation failures. The memory pressure and difficulty to
allocate high order pages doesn't necessarily comes from other 9p
requests so just having less msize-sized buffers might help a bit but I
don't think it'll be enough (I remember some similar failures with
lustre and 256k allocs, and it's just buffer cache and whats
not... because we're doing these allocs with NOFS these can't be
reclaimed)
With this the worst that can happen is some RPCs will be delayed, and
the patch already falls back to allocating a msize buffer from pool even
if less is requrested if that kmalloc failed, so I think it should work
out ok as a first iteration.

(I appreciate the need for testing, but this feels much less risky than
the iovec series we've had recently... Famous last words?)


For later iterations we might want to optimize with multiple sizes of
pools and pick the closest majoring size or something, but I think
that'll be tricky to get right so I'd rather not rush such an
optimization.


> How about I address the already discussed issues and post a v5 of those 
> patches this week and then we can continue from there?

I would have been happy to rebase your patches 9..12 on top of Kent's
this weekend but if you want to refresh them this week we can continue
from there, sure.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
