Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC25457ED6
	for <lists+v9fs-developer@lfdr.de>; Sat, 20 Nov 2021 16:07:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1moRxC-0006fK-Io; Sat, 20 Nov 2021 15:06:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1moRxA-0006f1-Ae
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 15:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J1uXot19sq40KhBVoO/2frmljl7T+O0vbEX5x0lP4h4=; b=U5zolHPO4Q3CkZng5axgTZWzQn
 c6mn3OGmmyVgxHBmJ5NLt/PY1nXU9u7DGtJKfeR2HxkC+hmN8Qb61AXRnsLFz4BHh4Mu6nlz86s9Z
 XWrHBRbVw2XaXkBmZ8IXgas2kh5B5ECv3S/JY3aLqMkuGXWs0EYA2TxC9KY1ZD7m1K5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J1uXot19sq40KhBVoO/2frmljl7T+O0vbEX5x0lP4h4=; b=gR/XEne8vEPaAzfRvq6l2N1MAQ
 5aLKyuICrYPRsQ8Cp0KVdl9IHXdfXmefGyNlRevz1IusTmHXk9FGB5Jtk28ZPbqM6gqfpU1/fDD9P
 /AXrtOla93zA9/QN1WC2g8810H7nJcTnT2oIOBt+ImdPvHH7XGJZPgv/ikZlihSRcwxk=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1moRx6-002PRL-Ex
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 15:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=J1uXot19sq40KhBVoO/2frmljl7T+O0vbEX5x0lP4h4=; b=YVuXK/eiLgE/DbdrLn+gyIqkLv
 BJro/IcVdCE3eOjCdRHMO5QNO/Xbv2KgWEQK1wj1LqRA+lbj4sL77b3lAqsmCbBEL4AA479iYBRFK
 fgl6PHd/woQm31FLpMUnAUuSJjURKwRG5r8UoZvSE9Dz/R5VDuDh0+B289nYCcWOgAy4Swu5Wh64N
 V3bXh5jCyiTEs5RYTqd5nyiwNvm0YCtHdjN0f48etnpUZWQh8HSJXo7Bso7x23wD55wPConaTiUtb
 u2UIuxv1+59ZmsYSIYWrwzyU/jHDnLS09mmT2XSkKIDtVAwc8Rz3I542ByLPfNWw8A0f5deGNhVui
 XfuN6pXNqyxgPPDkVysX7yI8x9zz2TUXCgwbXpbXQN+YOwiF9mtFCrIRi2PGLCMUxIA3jvNJX3VG8
 mkZS5XoZP6dJ3B/V0ArMGyAQa719O379DIwlWtMogvPIsLjMc980zOEg5dBVyA2lQ8B7HJq39wIfR
 0AewHHgqSt6BUaA/mvwl0ue5bFn8ZmNF21KCCeqoPWr2vJdt1ppBHmgNp9e6SxqnqlzDmFPriVTef
 llgWNdN4s1iN5tME2z8gCivpFaLC/nnq0jyzNLkJqIkM5NM5XMV0qWB/sE0U5l0QbrYIdgbX3yUne
 DK2WJZ4kMYnmkntZ1ZPlD0a/efPR8lGXN3qpr0bIo=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sat, 20 Nov 2021 15:46:19 +0100
Message-ID: <2717208.9V0g2NVZY4@silver>
In-Reply-To: <YZjfxT24by0Cse6q@codewreck.org>
References: <cover.1632327421.git.linux_oss@crudebyte.com>
 <cef6a6c6f8313a609ef104cc64ee6cf9d0ed6adb.camel@oldum.net>
 <YZjfxT24by0Cse6q@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 20. November 2021 12:45:09 CET Dominique Martinet
 wrote: > (Thanks for restarting this thread, this had totally slipped out
 of my > mind...) Hi guys, I have (more or less) silently been working on
 these patches on all ends in the meantime. If desired I try to find some time
 next week to summarize current status of this overall effort and what still
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1moRx6-002PRL-Ex
Subject: Re: [V9fs-developer] [PATCH v3 6/7] 9p/trans_virtio: support larger
 msize values
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 20. November 2021 12:45:09 CET Dominique Martinet wrote:
> (Thanks for restarting this thread, this had totally slipped out of my
> mind...)

Hi guys,

I have (more or less) silently been working on these patches on all ends in 
the meantime. If desired I try to find some time next week to summarize 
current status of this overall effort and what still needs to be done.

> Nikolay Kichukov wrote on Sat, Nov 20, 2021 at 12:20:35PM +0100:
> > When the client mounts the share via virtio, requested msize is:
> > 10485760 or 104857600
> > 
> > however the mount succeeds with:
> > msize=507904 in the end as per the /proc filesystem. This is less than
> > the previous maximum value.
> 
> (Not sure about this, I'll test these patches tomorrow, but since
> something failed I'm not surprised you have less than what you could
> have here: what do you get with a more reasonable value like 1M first?)

The highest 'msize' value possible for me with this particular version of the 
kernel patches is 4186212 (so slightly below 4MB).

Some benchmarks, linear reading a 12 GB file:

msize    average      notes

8 kB     52.0 MB/s    default msize of Linux kernel <v5.15
128 kB   624.8 MB/s   default msize of Linux kernel >=v5.15
512 kB   1961 MB/s    current max. msize with any Linux kernel <=v5.15
1 MB     2551 MB/s    this msize would violate current virtio specs
2 MB     2521 MB/s    this msize would violate current virtio specs
4 MB     2628 MB/s    planned milestone

That does not mean it already makes sense to use these patches in this version 
as is to increase overall performance yet, but the numbers already suggest 
that increasing msize can improve performance on large sequential I/O. There 
are still some things to do though to fix other use patterns from slowing down 
with rising msize, which I will describe in a separate email.

I also have an experimental version of kernel patches and QEMU that goes as 
high as msize=128MB. But that's a highly hacked version that copies buffers 
between 9p client level and virtio level back and forth and with intentional 
large buffer sizes on every 9p message type. This was solely meant as a stress 
test, i.e. whether it was possible to go as high as virtio's theoretical 
protocol limit in the first place, and whether it was stable. This stress test 
was not about performance at all. And yes, I had it running with 128MB for 
weeks without issues (except of being very slow of course due to hacks used).

> > In addition to the above, when the kernel on the guest boots and loads
> > 9pfs support, the attached memory allocation failure trace is generated.
> > 
> > Is anyone else seeing similar and was anybody able to get msize set to
> > 10MB via virtio protocol with these patches?
> 
> I don't think the kernel would ever allow this with the given code, as
> the "common" part of 9p is not smart enough to use scatter-gather and
> tries to do a big allocation (almost) the size of the msize:
> 
> ---
>         clnt->fcall_cache =
>                 kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
>                                            0, 0, P9_HDRSZ + 4,
>                                            clnt->msize - (P9_HDRSZ + 4),
>                                            NULL);
> 
> ...
> 		fc->sdata = kmem_cache_alloc(c->fcall_cache, GFP_NOFS);
> ---
> So in practice, you will be capped at 2MB as that is the biggest the
> slab will be able to hand over in a single chunk.

I did not encounter a 2MB limit here. But kmalloc() clearly has a 4MB limit, 
so when trying an msize larger than 4MB it inevitably causes a memory 
allocation error. In my tests this allocation error would always happen 
immediately at mount time causing an instant kernel oops.

> It'll also make allocation failures quite likely as soon as the system
> has had some uptime (depending on your workload, look at /proc/buddyinfo
> if your machines normally have 2MB chunks available), so I would really
> not recommend running with buffers bigger than e.g. 512k on real
> workloads -- it looks great on benchmarks, especially as it's on its own
> slab so as long as you're doing a lot of requests it will dish out
> buffers fast, but it'll likely be unreliable over time.
> (oh, and we allocate two of these per request...)
> 
> 
> The next step to support large buffers really would be splitting htat
> buffer to:
>  1/ not allocate huge buffers for small metadata ops, e.g. an open call
> certainly doesn't need to allocate 10MB of memory
>  2/ support splitting the buffer in some scattergather array
> 
> Ideally we'd only allocate on an as-need basis, most of the protocol
> calls bound how much data is supposed to come back and we know how much
> we want to send (it's a format string actually, but we can majorate it
> quite easily), so one would need to adjust all protocol calls to pass
> this info to p9_client_rpc/p9_client_zc_rpc so it only allocates buffers
> as required, if necessary in multiple reasonably-sized segments (I'd
> love 2MB hugepages-backed folios...), and have all transports use these
> buffers.

It is not that bad in sense of pending work. One major thing that needs to be 
done is to cap the majority of 9p message types to allocate only as much as 
they need, which is for most message types <8k. Right now they always simply 
kmalloc(msize), which hurts with increasing msize values. That task does not 
need many changes though.

> I have a rough idea on how to do all this but honestly less than 0 time
> for that, so happy to give advices or review any patch, but it's going
> to be a lot of work that stand in the way of really big IOs.

Reviews of the patches would actually help a lot to bring this overall effort 
forward, but probably rather starting with the upcoming next version of the 
kernel patches, not this old v3.

> > [    1.527981] 9p: Installing v9fs 9p2000 file system support
> > [    1.528173] ------------[ cut here ]------------
> > [    1.528174] WARNING: CPU: 1 PID: 791 at mm/page_alloc.c:5356
> > __alloc_pages+0x1ed/0x290
> This warning is exactly what I was saying about the allocation cap:
> you've requested an allocation that was bigger than the max __alloc_page
> is willing to provide (MAX_ORDER, 11, so 2MB as I was saying)

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
