Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 903DF458525
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Nov 2021 17:57:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1moqA0-0002SC-5t; Sun, 21 Nov 2021 16:57:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1moq9z-0002S5-8v
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Nov 2021 16:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GCTm8a1TeKdZq6+0dzPV/WSF9+hB7rLfwgR447PHKYE=; b=cu2qSArgmONPNLMNw+8UIWYt+q
 Slg5X2Ytpq81Zu2qOCZtbHKeh9L5kumBB9CcWaVzsdCAlmYvb7gPFc0RxfSiA5Pwhp2Hf36nJYY5y
 qO2ZOUtLyGP4/rWchhqheCCRCsU503ub1O0AtKV+SgWwtDzJ/hKh95yylumBAXI5Fjys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GCTm8a1TeKdZq6+0dzPV/WSF9+hB7rLfwgR447PHKYE=; b=CHo0zVyVx1thtJ1lJ2ceYMXLiV
 oDQHB3nTHjiitGZemGcPZk64IxV7QqAJa7S/haT9k1khsPGSpAQ4OpwLXTvyf1QrviUP2iar0Yupz
 GO9qDWSLmCNcWomG/3K44QVyJjyF+ZRXokltk3jnnGdMcx/5Flkfvta85pzhq07PBSFc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1moq9w-003Ynd-6K
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Nov 2021 16:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=GCTm8a1TeKdZq6+0dzPV/WSF9+hB7rLfwgR447PHKYE=; b=aTj7gOYEYY1/jbtpj526j+qNhM
 CIetpiBbmejU1a1N+/ttjtVR37dbE6s/LJywe3yhOvDjlbWy3+lk6watq0rLscOGpVH7jQ9mNxHtd
 2xvZfT/BZaoaQZyuNGsS1y3SQzqtiK9F3Z0NckRBPrDJlPmLRvqGDmIQ1GMpfpIKPmKEiEQM/jMQX
 tMs+QZpIIh3WY5prfcSAmwKOA2sTpClbe7jg17UoT56kP9Ati8vNAyDbPBeUOr2qGPOUMzo9NW5mB
 vN/X/Sz5/NPK0TRVSB3Vwdy9aJlmje9AisM9f6mkhwdTNm8OJ/B38bRZ3z95rBs6HaE2r0+HY1YMF
 f1r4A8Lm3H3SyADIzHGptv+/YP89kevWBy8w9qv7HINpZxVvH0NE3J9kyYwggwTEasWgqYPCmjUbj
 B2ojxfTzwKWx2CU8ecLG6hOi21I+Gi386e8meTZhLjeJpr6mEXw1dP+unnh64oB+9SNiR4tn9iBMO
 RskzG3s6RECg1mokt0ndXPzD4KsYYa1NT9uoP7VtAnkQ71ghmqbI5lTK8NdTCZ2Qzpp436Wjl1owS
 fibjS/C+qaWlVrOMCHV3LC4/LIiv0KYxDWnoZhUZkGNHMmYvS4OL+S9haZwHgBqzfiLm/OTnPcJtv
 +64PZ/fJ/3R3kaunN/2+NySXeoknY4TEodjHO36A4=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 21 Nov 2021 17:57:30 +0100
Message-ID: <4244024.q9Xco3kuGk@silver>
In-Reply-To: <YZl+eD6r0iIGzS43@codewreck.org>
References: <YZl+eD6r0iIGzS43@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 21. November 2021 00:02:16 CET Dominique Martinet
 wrote: > Christian, > > Christian Schoenebeck wrote on Sat, Nov 20, 2021
 at 03:46:19PM +0100: > > > So in practice, you will be capped at [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1moq9w-003Ynd-6K
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

On Sonntag, 21. November 2021 00:02:16 CET Dominique Martinet wrote:
> Christian,
> 
> Christian Schoenebeck wrote on Sat, Nov 20, 2021 at 03:46:19PM +0100:
> > > So in practice, you will be capped at 2MB as that is the biggest the
> > > slab will be able to hand over in a single chunk.
> > 
> > I did not encounter a 2MB limit here. But kmalloc() clearly has a 4MB
> > limit, so when trying an msize larger than 4MB it inevitably causes a
> > memory allocation error. In my tests this allocation error would always
> > happen immediately at mount time causing an instant kernel oops.
> 
> Interesting, I was assuming it'd have the same limit.

That's one of the things in the Linux kernel's memory allocation APIs that 
could be improved. IMO it should be clear to developers what the max. size for 
kmalloc() is, by either a dedicated function or a macro *and* that being 
officially and clearly documented. Right now it is more a "I think it is ..." 
and eventually trying out. You might use the value of MAX_ORDER, but does not 
feel like an official way to me.

> There must be some fallback path I didn't know about... I wonder if it
> handles non-contiguous memory ranges too then, in which case it's not as
> bad as I'd have expected depending on how finely it's willing to sew
> things back together: I'll check

AFAICS that was a misconception in the past in 9p code (I see 
is_vmalloc_addr() being used); there are basically two types of kernel buffers 
that you can allocate today:

1. Buffer with guaranteed contiguous physical pages, e.g. kmalloc():

   These are limited to exactly 4 MB.

or

2. Buffer with potential non-contiguous physical pages, e.g. vmalloc().

   For 32-bit systems the limit here is either 120 MB or 128 MB. On higher 
   systems it is usually only limited by the physical memory being available.

In both cases you get exactly one memory address that can very simply be 
treated by driver code as if that address was pointing to a single linear 
buffer, just like you would in regular user space apps.

However (2.) is not an option for 9p driver, because that memory type yields 
in non-logical addresses which cannot be accessed by a device through DMA. I 
actually tried replacing kmalloc() call by kvmalloc() as a quick hack for 
attempting to bypass the 4 MB limit without significant code changes, however 
it fails on QEMU side with the following QEMU error, as host cannot access 
such kind of memory address in general:

  virtio: bogus descriptor or out of resources

So in my very slow msize=128MB virtio stress test I ended up using kvmalloc() 
for 9p client side, plus alloc_pages() for virtio/DMA side and copying between 
the two sides back and forth as a hack. But copying should not be an option 
for production code, as it is very slow.

> > > Ideally we'd only allocate on an as-need basis, most of the protocol
> > > calls bound how much data is supposed to come back and we know how much
> > > we want to send (it's a format string actually, but we can majorate it
> > > quite easily), so one would need to adjust all protocol calls to pass
> > > this info to p9_client_rpc/p9_client_zc_rpc so it only allocates buffers
> > > as required, if necessary in multiple reasonably-sized segments (I'd
> > > love 2MB hugepages-backed folios...), and have all transports use these
> > > buffers.
> > 
> > It is not that bad in sense of pending work. One major thing that needs to
> > be done is to cap the majority of 9p message types to allocate only as
> > much as they need, which is for most message types <8k. Right now they
> > always simply kmalloc(msize), which hurts with increasing msize values.
> > That task does not need many changes though.
> 
> Yes, that could be a first step.
> Although frankly as I said if we're going to do this, we actual can
> majorate the actual max for all operations pretty easily thanks to the
> count parameter -- I guess it's a bit more work but we can put arbitrary
> values (e.g. 8k for all the small stuff) instead of trying to figure it
> out more precisely; I'd just like the code path to be able to do it so
> we only do that rechurn once.

Looks like we had a similar idea on this. My plan was something like this:

static int max_msg_size(enum msg_type) {
    switch (msg_type) {
        /* large zero copy messages */
        case Twrite:
        case Tread:
        case Treaddir:
            BUG_ON(true);

        /* small messages */
        case Tversion:
        ....
            return 8k; /* to be replaced with appropriate max value */
    }
}

That would be a quick start and allow to fine grade in future. It would also 
provide a safety net, e.g. the compiler would bark if a new message type is 
added in future.

> Note I've been rather aggressive with checkpatch warning fixes in my
> last update for 5.16, hopefully it won't conflict too much with your
> work... Let me deal with conflicts if it's a problem.

Good to know! I just tried a quick rebase, no conflicts fortunately.

> > > I have a rough idea on how to do all this but honestly less than 0 time
> > > for that, so happy to give advices or review any patch, but it's going
> > > to be a lot of work that stand in the way of really big IOs.
> > 
> > Reviews of the patches would actually help a lot to bring this overall
> > effort forward, but probably rather starting with the upcoming next
> > version of the kernel patches, not this old v3.
> 
> Happy to review anything you send over, yes :)

Perfect!

> Nikolay,
> 
> > > > (Not sure about this, I'll test these patches tomorrow, but since
> > > > something failed I'm not surprised you have less than what you could
> > > > have here: what do you get with a more reasonable value like 1M
> > > > first?)
> > 
> > It worked with 1MB, I can stick to this for the time being.
> > 
> > Are the kernel patches supposed to be included in the KVM host kernel or
> > would the guest kernel suffice?
> 
> The patches are only required in the guest.

Correct, plus preferably latest git version of QEMU, a.k.a upcoming QEMU 6.2 
release (already in hard freeze).

https://wiki.qemu.org/Planning/6.2
https://wiki.qemu.org/ChangeLog/6.2#9pfs

That QEMU 6.2 version is still limited to 4 MB virtio transfer size though.

I proposed patches for QEMU that allow up to 128 MB virtio transfer size. That 
ended in a very long discussion on qemu-devel and the conclusion that a 
refinement of the virtio specs should be done:
https://lore.kernel.org/all/cover.1633376313.git.qemu_oss@crudebyte.com/

Virtio spec changes proposed (v1):
https://github.com/oasis-tcs/virtio-spec/issues/122

You can probably subscribe on that virtio-spec issue if you want to receive 
updates on its progress.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
