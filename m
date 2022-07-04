Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFBD5657F6
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 15:57:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8MZd-0006B7-LX; Mon, 04 Jul 2022 13:57:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o8MZU-0006Ay-If
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PHZLOKqVexXpNMBlmQrkg97tWjTZZ5TZCu+Fx+IMbto=; b=QhRtcf6Ud0pGXN1hB2L261+PAV
 GHkIVJ/p7SCb7RYTzJYvZwEa8jDMtGXR09WO97Iu3CuWCcdUsNbtwp+kF7Em9Y0OwHfA7xzmL05HK
 rzTj84+0xcxczf21+WSdJpX7cNWHn31b80e7IagvatJXWX0fQ46ARSq2KH0VFhnqZto0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PHZLOKqVexXpNMBlmQrkg97tWjTZZ5TZCu+Fx+IMbto=; b=Ojp+f4z5m7VyMPY64nNtvXEPqZ
 goHN5uVLfNGYnsFBml5pNWh44t+Nvd5B1iD6/DbBTDdleAgeRWlV4kSFjnPibjPu6Sb7U7d/Y80Cv
 8bz60IfuWNHKK7xfdEqVw7FLMfLcQrQkfN4UN0+3ZOebzZgj1Ru/U1Stc1NFVRbGw7TI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8MZS-0007Mn-NN
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=PHZLOKqVexXpNMBlmQrkg97tWjTZZ5TZCu+Fx+IMbto=; b=tD/DC5wyjqIM8VotuVGbJy0+YY
 H3WbZmLA13uLtM9uun3S0tHNrAhp6ytv6Z2H3d/H3MEzLS5OG9aH2Xo1d9etZaXdOPHlNNf2bU/9c
 BQhQTZk+3zZz9f5kIHFEar3hCs15kiKVlHypW0T+7FRKFaHg4P5whDMKoZXR+c6zjj1csCt1mj5hs
 3z72arWezxQ/s/Ln2BUDyDPogHx/j6bdtO4bppXPcHrRstc9jQYkKgQlfGiHpROxyEvrDv5RS6qn+
 xCXgkPKbE6E3+uW/G0Wimg1GCinYisHgnEctjRSRgLakiNy6bJ8Wg9j7EqwmZ6TlsxvO+cciKeqTU
 fwcxLq7tXDQ/Cq8Bm3RRF/2X6x7w8DIwQqwWS+i+SL8B7/dgwvukXITCPAQnqUzg7P0+LJajLBOFx
 ggpBiTxkDJjBVGTKfTv4WAUfyqzXr7L7ceNkSrJ5x79GSoYlehQ48PU/ctjAzwfeojm+MFqXdP8zs
 z9lY06Q2KcwAZYWRuOPPq7v1Xzlt3K7GH9i7ETg/PkwZAUcPNZe+Pdrpq+9OuD/mfhlErrPx+2VD3
 +7YGC/d9/Rhk7IwHY/8nvvLSKAYdV3Y1DIJTp2f4J/eMX488Mhg9KmASplxeOyO3C+SA8iz0B3Qez
 FSv31ulf93OfzBypolUJBvo/Kq4xQwGwVsOEBztZc=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Kent Overstreet <kent.overstreet@gmail.com>
Date: Mon, 04 Jul 2022 15:56:55 +0200
Message-ID: <72042449.h6Bkk5LDil@silver>
In-Reply-To: <YsLluKb1v5SqN2xD@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <2335194.JbyEHpbE5P@silver> <YsLluKb1v5SqN2xD@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag,
 4. Juli 2022 15:06:00 CEST Dominique Martinet wrote:
 > Christian Schoenebeck wrote on Mon, Jul 04, 2022 at 01:12:51PM +0200: >
 > On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wro [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8MZS-0007Mn-NN
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 4. Juli 2022 15:06:00 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Jul 04, 2022 at 01:12:51PM +0200:
> > On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
[...]
> > However that's exactly what I was going to address with my already posted
> > patches (relevant patches regarding this issue here being 9..12):
> > https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/
> > And in the cover letter (section "STILL TODO" ... "3.") I was suggesting
> > to
> > subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size
> > categories? Because that's what my already posted patches do anyway.
> 
> Yes, I hinted at that by asking if it'd be worth a second mempool for 8k
> buffers, but I'm not sure it is -- I think kmalloc will just be as fast
> for these in practice? That would need checking.
> 
> But I also took a fresh look just now and didn't remember we had so many
> different cases there, and that msize is no longer really used -- now
> this is just a gut feeling, but I think we'd benefit from rounding up to
> some pooled sizes e.g. I assume it'll be faster to allocate 1MB from the
> cache three times than try to get 500k/600k/1MB from kmalloc.
> 
> That's a lot of assuming though and this is going to need checking...

Yeah, that's the reason why omitted this aspect so far, because I also thought 
it deserves actual benchmarking how much cache granularity really makes sense, 
instead of blindly subdividing them into random separate cache size 
categories.

> > Hoo, Dominique, please hold your horses. I currently can't keep up with
> > reviewing and testing all pending 9p patches right now.
> > 
> > Personally I would hold these patches back for now. They would make sense
> > on current situation on master, because ATM basically all 9p requests
> > simply allocate exactly 'msize' for any 9p request.
> 
> So I think they're orthogonal really:
> what mempool does is that it'll reserve the minimum amount of memory
> required for x allocations (whatever min is set during init, so here 4
> parallel RPCs) -- if normal allocation goes through it'll go through
> normal slab allocation first, and if that fails we'll get a buffer from
> the pool instead, and if there is none left it'll wait for a previous
> request to be freed up possibly throttling the number of parallel
> requests down but never failing like we currently do.

Understood.

> With this the worst that can happen is some RPCs will be delayed, and
> the patch already falls back to allocating a msize buffer from pool even
> if less is requrested if that kmalloc failed, so I think it should work
> out ok as a first iteration.
> 
> (I appreciate the need for testing, but this feels much less risky than
> the iovec series we've had recently... Famous last words?)

Got it, consider my famous last words dropped. ;-)

> For later iterations we might want to optimize with multiple sizes of
> pools and pick the closest majoring size or something, but I think
> that'll be tricky to get right so I'd rather not rush such an
> optimization.
> 
> > How about I address the already discussed issues and post a v5 of those
> > patches this week and then we can continue from there?
> 
> I would have been happy to rebase your patches 9..12 on top of Kent's
> this weekend but if you want to refresh them this week we can continue
> from there, sure.

I'll rebase them on master and address what we discussed so far. Then we'll 
see.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
