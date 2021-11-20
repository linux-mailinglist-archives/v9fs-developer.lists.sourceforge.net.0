Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CBE4580DA
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Nov 2021 00:02:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1moZNo-0002Op-4K; Sat, 20 Nov 2021 23:02:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1moZNn-0002Oi-Bl
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 23:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+h+v5WoHCnvJZTz4S+KWLOEg0q3JUAhaF9Le2Ttzzdw=; b=mZUcZlYC6ByUfjckZdoI3wrJWQ
 MTDM8Ue3tU/cJ2OCRv2QFvNCor6N9Sg3CwLa7kKjIk3lf5U4Zl+nvaUWmCFXqcjoRyvxD/9RU/iI6
 egRVAe9mcSUmU05YACSoacQ+KolnuxCuW604UR9776OlfFQ7TDItDuAiZUjZkg44KjIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+h+v5WoHCnvJZTz4S+KWLOEg0q3JUAhaF9Le2Ttzzdw=; b=H
 5krC1UpZgF78p0JuCBbcA2/0m0Y5TwTHWrSMVMXkfzMNHjbuVosJuCenwZgzpjMEZ3WvH8FZEpPoM
 bgQiGvdzUg525RMyf1hfTJNmuyu2/XY9UdtNoYgMpqg02eW7TH1UH5lz4ek4kqpq0VpI/aKt3MVKL
 ohGcoDlOc+8ZThzs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1moZNh-002lC5-BA
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 23:02:55 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id CAFFBC020; Sun, 21 Nov 2021 00:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1637449359; bh=+h+v5WoHCnvJZTz4S+KWLOEg0q3JUAhaF9Le2Ttzzdw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=zi+Di05NvmQb0FPe4t7GaxTYczlDIYk4ZowTzQPAjbzNil6tJPiz3uevJkaan44Wf
 rDNyb/NApmS8Nxb69yC/hQykjdZpp3QJtNtDgIJzhsrV94ReJD0bEJmcEpbdLm6Xwi
 wyinjKPWaMsvzZV2BJ83LCwBjLzIGWHh1cW2/K6JmvzrTMQ08ajf8Ze5NnHhYPahE7
 CaWMaaZFXdKBwLNwPoVEsid2e5I2u+ZX4MBMlecX+GNXOQLLLjEJnWIhAbbhdN0nDm
 0tZEBQHhYdfzitkrMH6fcCWo30aPTiiRCM8m714baAUjTG05w817qauiChkQ/zBbZE
 tFmw8HweKD5aA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7B309C009;
 Sun, 21 Nov 2021 00:02:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1637449358; bh=+h+v5WoHCnvJZTz4S+KWLOEg0q3JUAhaF9Le2Ttzzdw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=AGAPj+62nUhZHRXe7M2yvA9YTANCxcXJq9zYxBItl/82mx/7IFaunqqJ8xiS8N4S3
 zyPznc3G1Ndf42MtAch3jq0UGJhcbyzkbbrJQzJMULWnOnmqzueNUwx9mkbZhysP7V
 1PUoA+gJNjY3ONLwxqqP5Ls3/JsDLgBOMPljGxn1Ks+wXqZogvWMSEC804Z34cwPHz
 GLLbRv46IqHwg5gvgZYOW2FfRW9YjjvfO6mcfOqXbJatt/Dru0JMBZON45tbWwfrWG
 xb/TjxiPb8/D2KEEAuyroj0yJcjjvy5fYEdSVjZPCd7ZEFOaPPRzbfH06TPDu4i/8T
 JPHkh+GmmQWgQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b53fd81b;
 Sat, 20 Nov 2021 23:02:32 +0000 (UTC)
Date: Sun, 21 Nov 2021 08:02:16 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Nikolay Kichukov <nikolay@oldum.net>
Message-ID: <YZl+eD6r0iIGzS43@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d781f45b6a6fb434aa386dccb7f8f424ec1ffbe.camel@oldum.net>
 <2717208.9V0g2NVZY4@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian, Christian Schoenebeck wrote on Sat, Nov 20, 2021
 at 03:46:19PM +0100: > > So in practice, you will be capped at 2MB as that
 is the biggest the > > slab will be able to hand over in a single chunk.
 > > [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1moZNh-002lC5-BA
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Christian,

Christian Schoenebeck wrote on Sat, Nov 20, 2021 at 03:46:19PM +0100:
> > So in practice, you will be capped at 2MB as that is the biggest the
> > slab will be able to hand over in a single chunk.
> 
> I did not encounter a 2MB limit here. But kmalloc() clearly has a 4MB limit, 
> so when trying an msize larger than 4MB it inevitably causes a memory 
> allocation error. In my tests this allocation error would always happen 
> immediately at mount time causing an instant kernel oops.

Interesting, I was assuming it'd have the same limit.
There must be some fallback path I didn't know about... I wonder if it
handles non-contiguous memory ranges too then, in which case it's not as
bad as I'd have expected depending on how finely it's willing to sew
things back together: I'll check

> > Ideally we'd only allocate on an as-need basis, most of the protocol
> > calls bound how much data is supposed to come back and we know how much
> > we want to send (it's a format string actually, but we can majorate it
> > quite easily), so one would need to adjust all protocol calls to pass
> > this info to p9_client_rpc/p9_client_zc_rpc so it only allocates buffers
> > as required, if necessary in multiple reasonably-sized segments (I'd
> > love 2MB hugepages-backed folios...), and have all transports use these
> > buffers.
> 
> It is not that bad in sense of pending work. One major thing that needs to be 
> done is to cap the majority of 9p message types to allocate only as much as 
> they need, which is for most message types <8k. Right now they always simply 
> kmalloc(msize), which hurts with increasing msize values. That task does not 
> need many changes though.

Yes, that could be a first step.
Although frankly as I said if we're going to do this, we actual can
majorate the actual max for all operations pretty easily thanks to the
count parameter -- I guess it's a bit more work but we can put arbitrary
values (e.g. 8k for all the small stuff) instead of trying to figure it
out more precisely; I'd just like the code path to be able to do it so
we only do that rechurn once.

Note I've been rather aggressive with checkpatch warning fixes in my
last update for 5.16, hopefully it won't conflict too much with your
work... Let me deal with conflicts if it's a problem.

> > I have a rough idea on how to do all this but honestly less than 0 time
> > for that, so happy to give advices or review any patch, but it's going
> > to be a lot of work that stand in the way of really big IOs.
> 
> Reviews of the patches would actually help a lot to bring this overall effort 
> forward, but probably rather starting with the upcoming next version of the 
> kernel patches, not this old v3.

Happy to review anything you send over, yes :)



Nikolay,

> > > (Not sure about this, I'll test these patches tomorrow, but since
> > > something failed I'm not surprised you have less than what you could
> > > have here: what do you get with a more reasonable value like 1M
> > > first?)
> 
> It worked with 1MB, I can stick to this for the time being.
> 
> Are the kernel patches supposed to be included in the KVM host kernel or
> would the guest kernel suffice?

The patches are only required in the guest.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
