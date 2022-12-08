Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CE2647034
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Dec 2022 13:57:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3GSx-0001Ys-II;
	Thu, 08 Dec 2022 12:57:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p3GSv-0001Yh-Hp;
 Thu, 08 Dec 2022 12:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lqhhrrAH/1fWl7MTKT/+evVzehuCU0nBWveQrVKeIFs=; b=dG8wEM64Zbx6LkQPZZAbx11NN2
 AWkgHcGg0h7JXCOg3TE6Zfjzg9FHSFKyAljgrtdXLfAlyNvbV255EpfgW3sjZ9PlITbz9OqYDubn/
 JXn7yi+XbDQAzsUvLUsNLjr+BoQly0jeKkdHxfOrX9Wg6XgDPDMlYUxYXCtN71PLHp5s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lqhhrrAH/1fWl7MTKT/+evVzehuCU0nBWveQrVKeIFs=; b=YQURgfSAKf0fbJEbFVZlNXjInm
 Lr0BsQTyDaw/La+IVj/tD4FESgImOdICFC41i9MyFuZOB2Sor8cM4PKSN+IJ5w6JkiBAt+NZaTRwC
 vZEm/iOEhCA6xYTdOxJXGXnI3rCi5XBaau4WG+uYl8LAYH8UFNuIhgZc9NPQKuSooiOo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3GSr-00AG1P-0w; Thu, 08 Dec 2022 12:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=lqhhrrAH/1fWl7MTKT/+evVzehuCU0nBWveQrVKeIFs=; b=bVsUYidcteQMSL2lUWiwEIzM23
 h32zcaFTvggU8nwYHZkZ8uxPePSQ6I25HKvs7Yib9SX5i2h+T4//4I8LPtvQ8okIAVXa6EV0RpnP6
 3iLHsDNhd/04YQp+Vo4qvqR/GLNewxDpdZ3xf6Qd9Mv8zP7O2/J5seEnBvfpc/ZVH+Xk0cHpKLSHJ
 KZxrIUpfRRlj1OwTKkT2rMeSMTfKJO8mU1KMy4i66CF53Ivd4L1paTRPWSZvEELeRdQJFOuS9w4KC
 4oagssQ4ZaB4q1FMUqUwa+ZaQ+DH+v7kGLEQkvl1+XcOvQx86TxVs9FI1xF4MjvZ0YcuWa0BExtoN
 yzAemZUqLb1T7N2zMUt9c2EcJwEtKea8OXtrhJUPQWStWgMMDuoGdYekZkO0RflUnkUAldZZ/T6ck
 WmeIBKIYozF53KnQUi1e7Mc6QvBTg/N1n9jB3qh66iUqKpU65dIhNud1ekyxndjuNGqfz1ziv89g9
 /Mj+JbRKWenNTxl2D49fnHiCHOBAp/vR4h/2Bhc6nw5akNn+pE5hcRD3ZiwHgePbluacn1kcOwz9A
 IcoaWJEJmiF8VGUmukcd3YcZfmtykru2qC3tA4OjTMXsG8sDY1LyfdVntMXVftc1T+kicdaflb1NV
 ah0lN5syTdnFGacLUWUgU3LRrO+KszaotrI8szcpk=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 08 Dec 2022 13:57:12 +0100
Message-ID: <5781766.0gPXg4q8St@silver>
In-Reply-To: <Y5EvoGhao+z5nH84@codewreck.org>
References: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
 <Y5EvoGhao+z5nH84@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thursday, December 8,
 2022 1:28:16 AM CET Dominique Martinet
 wrote: > Hi Eric! > > Eric Van Hensbergen wrote on Wed, Dec 07,
 2022 at 08:15:40AM
 -0600: > > TLDR; I'm mucking about in the caching cod [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p3GSr-00AG1P-0w
Subject: Re: [V9fs-developer] 9p cache code
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
Cc: David Howells <dhowells@redhat.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 "v9fs-users@lists.sourceforge.net" <v9fs-users@lists.sourceforge.net>,
 Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thursday, December 8, 2022 1:28:16 AM CET Dominique Martinet wrote:
> Hi Eric!
> 
> Eric Van Hensbergen wrote on Wed, Dec 07, 2022 at 08:15:40AM -0600:
> > TLDR; I'm mucking about in the caching code, if someone else is doing
> > something there please let me know so we aren't working at odds or
> > duplicating effort.
> 
> I don't think anyone is actively working on it, added Christian in Cc
> who's been helping a lot lately (he's also on the developers list at
> least, but mail filters...)

I'm actually not subscribed to any LKML, nor on v9fs*@sf.net. So unless
somebody CCs me, I won't receive it.

> afaik David Howells haven't really finished his netfs conversion, iirc
> the write helpers aren't completely finished? But that was last year so
> things might have improved under the rug without any change at 9p level...
> But either way I don't think David is working on 9p at all right now
> either, also added him in Ccs.
> (I think the problem at the time was the writes were done a folio at a
> time and there wasn't any mechanism to batch them unlike reads; but I
> never really looked further)
> 
> > As some of you know I'm mucking about in the 9p caching code - wil try and
> > upstream some RFC patches shortly.  Overall goal is to make simple forms of
> > caching (readahead/writeback(maybe)) default on 9p2000.L while leavine
> > cache=none default for 9p2000 and earlier.  My intent is to do some work on

Awesome! And that would make my 'remove msize limit' patches much more useful:

https://lore.kernel.org/all/cover.1657636554.git.linux_oss@crudebyte.com

Patches 7..11 were merged already, but the actual virtio patches 1..6 that
remove the msize limit are not yet. I lost a bit of interest on that, as with
current direct-only read/write behaviour the chunk sizes are constrained by
kernel's IOV_MAX. With readahead etc. that would allow to unleash the full
potential, as it would not be constrained by IOV_MAX at all.


> > directory level caching next.  For the moment, I'm primarily concerned with
> > in-memory caching (not fscache per se).  My draft experiments are here (but
> > this is not what I will try and upstream as its a mess):
> > https://github.com/v9fs/linux/tree/ericvh/v9fsperf
> > 
> > I've been crawling through the code including the new folio changes and
> > have done some experiments on what needs to be done to get file-level
> > caching working and be somewhat consistent.  I also think I know what I
> > need to do to get directory caching coherent (as opposed to loose) but have
> > not prototyped it yet.
> > 
> > One question I had for the community is if anyone has been using the
> > fscache code (code=fscache).  On inspection there are several things that
> > are clearly (to my eye) wrong -- several of them let in on my watch 10
> > years ago when we were doing the 9p work at IBM.  So, before I do any heavy

I use 9p-fscache a lot.

My biggest issue with current 9p fscache implementation is that it seems to
gather fids indefinitely. So apparently ATM there is no limit at where fscache
would free cached files after not being used for a long time. So memory usage
on Linux client side and fid count on 9p server side grow and grow. That
should definitely be fixed in some way.

> > surgery here I wanted to make sure I wasn't going to be upsetting anyones'
> > applecart and make sure i have regression tests for desired functionality.
> > I was going to eventually get around to trying to fix fscache for 9p (if it
> > is indeed broken), but it is at the bottom of my priority list at the
> > moment so we'll see how much of this I get through over December (which is
> > roughly the time I have allocated to work on this -- a 9p vacation if you
> > will).
> > 
> > I'm going through a process of function checking the different cache levels
> > using various test suites and also doing performance studies (some of the
> > baseline of the latter can be seen in:
> > https://github.com/v9fs/notebook/blob/main/perf.ipynb).
> 
> On that end I think having cache by default for virtio/qemu would be
> appreciated as it's working "well enough" from my impressions.
> 
> Ganesha has a limit to the number of fids open and quickly explodes, but
> I'm not aware of any nfs-ganesha 9p user right now, if there are any
> they can restore cache=none... The problem with ganesha seems to be that
> we lack any reclaim mechanism; files or directories seen will stay
> partly open forever, and ganesha runs out of fids.
> qemu closes unused fids after a while so doesn't have as much of a
> problem, but that's still memory used on client and server so perhaps
> something to look at eventually, but if it's not on your list I guess
> it's fine for now.

Yes, QEMU automatically closes unused FIDs when it comes close to the max.
open files limit on host, and it re-opens FIDs if they become used again.

Eric, for testing I recommend using latest QEMU (i.e. upcoming 7.2 which is
released in few days) or at least apply the following patch:

https://wiki.qemu.org/ChangeLog/7.2#9pfs

This patch brings a *massive* performance improvement by around x6 .. x12
which especially did hurt before when there was a large amount of open FIDs.

> Either way any fix or improvement would be more than welcome, I'm sure
> there are bugs in here that were just waiting for you ;)
> 
> 
> Cheers,
> 





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
