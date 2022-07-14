Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7444A5757AD
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Jul 2022 00:32:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oC7Nq-0007N0-Mo; Thu, 14 Jul 2022 22:32:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oC7No-0007Mt-TP
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jul 2022 22:32:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WLDYnTfO5crNPxdekrA0P8cZ4q/DgWrOCGaTfNq2fqc=; b=Lp8GzNmBEcM/+e4lJHToOyRHG7
 cWuSQM8moQaZygppFfE/DTduIbj7yw++dgkWPzwA8QMp4eDCL/SPoLbFqup6+irX1wfL9Zb5v646U
 HcJKN6OaSDjQIOUcBJZEq6i7opmIBz++C98AbLgXJ4Hcldsu9nld5xJq+ptwUdJ4TA/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WLDYnTfO5crNPxdekrA0P8cZ4q/DgWrOCGaTfNq2fqc=; b=Cf/i3YWrH0/OR0HKvoNnP5yfJv
 RQ8Z6t5FPc6z1CLC/Fv9oWJkQsX2B2AODIQcnpXtyeOW3nwsC4Y+C76b+n63o3FhWkHBjM3TBSJ5D
 wlK1BJ1xkYrcL+OIIGPUETxUWZqfNPKQQUFANUIzLRCfi1wj7y9KRig2OMy4BrJDtAIU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oC7Nl-0001G3-6n
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jul 2022 22:32:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C75A4C01D; Fri, 15 Jul 2022 00:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657837940; bh=WLDYnTfO5crNPxdekrA0P8cZ4q/DgWrOCGaTfNq2fqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sU3PVRqTvE5UEaGj4sj/pGwDM1qQzwpQt+akwBup89Pe/xGgWXw9TMclH8/fJowbe
 7HIv9Rps+gvYkQAaz0M8rWoFRs98z8/0p0TlyQbS/IRLXLB2aTonoX501jeBmX/iAS
 gDCQq7cCEvX8+duui6IXegIrNfLs6u6zoT1kusKTSwqdxSQgckPWQgdLomM5rIq46B
 7uPcLqq+5MJ0ocn1s/nB+3zD9SbLCnCr0Jfn/15kavJKil7OCGU7VSNj9XdRmRRrAR
 vqnw4tSWqpQBnlUSmHYqV62+rV1GN3fTukfdykUzLTevnsXW5gfBj2RvlPETtYRUSg
 KP39ctURVpCWQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1EB42C009;
 Fri, 15 Jul 2022 00:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657837939; bh=WLDYnTfO5crNPxdekrA0P8cZ4q/DgWrOCGaTfNq2fqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HjGgQf4Ou6wqyh736OABE7GrwK2vfJSQggtyMGE5c8WPegW/mzTa/mV8r3TcXJMp1
 /TtlQdtHYKXMqg302hRnlKlVsAKhIjvrDICtDuJGYujUG3YuWk6IvomWhaE7Mao0Hk
 ruf/fN/hzlWGDtC+KtbEP4uJA+W2wx9ww0Gh0tCoxCA08fxBl/71aWrT2EDDJKnDCg
 hofVK2lVrSMo9/SWiM2vLd2lNed19+tL3KYFspw4y3mTjBOCIGrdGzDTwZCqb2aOTL
 Egvq1WHtvR+izJ4m0wTeSPBHCm7atu/uElSgTS3Wv2xOoDkfRC38RACM8y/s14OsPC
 yIK/TXEP36EYQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a6492704;
 Thu, 14 Jul 2022 22:32:09 +0000 (UTC)
Date: Fri, 15 Jul 2022 07:31:54 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YtCZWmPxqbL8VlTl@codewreck.org>
References: <12950409.o0bIpVV1Ut@silver>
 <20220713041700.2502404-1-asmadeus@codewreck.org>
 <2229731.hRsvSkCM7u@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2229731.hRsvSkCM7u@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Jul 14,
 2022 at 09:16:14PM
 +0200: > Patch looks fine on first impression, but I'll postpone testing
 this. And yes, > I also think that exempting Tflush should be fa [...] 
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
X-Headers-End: 1oC7Nl-0001G3-6n
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
 Greg Kurz <groug@kaod.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Jul 14, 2022 at 09:16:14PM +0200:
> Patch looks fine on first impression, but I'll postpone testing this. And yes, 
> I also think that exempting Tflush should be fair. If 4k (soon) cannot be 
> allocated, then you probably have worse problems than that.

Yes, would be for a later cycle anyway -- no hurry.

> > Here's a concrete version of what I had in mind: literally just make
> > allocation fail if the initial alloc failed.
> > 
> > I can't reproduce any bad hang with a sane server here, but we still
> > risk hanging with a bad server that ignores flushes as these are still
> > unkillable (someday I'll finish my async requests work...)
> > 
> > So ultimately there are two things I'm not so happy about with mempools:
> >  - this real possibility of client hangs if a server mishandles some
> > replies -- this might make fuzzing difficult in particular, I think it's
> 
> Concrete example of such a mishap?

The example I gave Kent in another reply is just server misbehaving -- I
have had histories of troubles with ganesha in the past -- but even with
low memory qemu and fio and ^C it felt more likely to get stuck? it
looked killable e.g. pkill -9 fio would get me out of it with this
patch, but ^C ought to work in my opinion.

In particular with the io_uring engine some of the workers aren't
visible at all from userspace (I only found out about them through
qemu's gdb and lx-ps), so it's really hard to see we're stuck on an
allocation if that ever happens...

Ultimately I think mempool is great for short-lived allocations
e.g. temporary buffers, where we can be sure the memory will be freed up
after a short bounded time, but it might just not be a great fit for 9p.
I'm not sure what to suggest instead, though; this is really worst-case
thinking and just having ^c work e.g. make mempool_alloc interruptible
and failible would probably be enough to convince me.


> > easier to deal with failed IO (as long as it fails all the way back to
> > userspace) than to hang forever.
> > I'm sure there are others who prefer to wait instead, but I think this
> > should at least have a timeout or something.
> 
> Not sure if it was easy to pick an appropriate timeout value. I've seen things 
> slowing down extremely with 9p after a while. But to be fair, these were on 
> production machines with ancient kernel versions, so maybe already fixed.

I'm not sure what kind of timeframe you're thinking of, for exmple
lustre has 5 minutes timeouts in some places -- although depending on
the failure some things will also wait forever.
I was thining something similar, but realistically this isn't going to
happen anyway, at least not here, so let's not waste too much time on
this point...

> A proc interface would be useful though to be able to identify things like 
> piling up too many fids and other performance related numbers.

That would be nice, yes.
We can probably pull in some stats from either idr (requests for tags
and fids) quite easily -- that might be a nice side project if someone
wants to do this.

> >  - One of the reasons I wanted to drop the old request cache before is
> > that these caches are per mount/connection. If you have a dozen of
> > mounts that each cache 4 requests worth as here, with msize=1MB and two
> > buffers per request we're locking down 8 * 12 = 96 MB of ram just for
> > mounting.
> > That being said, as long as hanging is a real risk I'm not comfortable
> > sharing the mempools between all the clients either, so I'm not sure
> > what to suggest.
> 
> Why would a shared mempool increase the chance of a hang or worsen its 
> outcome?

In the tcp/really remote server case, if a server stops responding
that'll get these requests not freed for a while (until the user gives
up, possibly never); if the client also is under enough memory pressure
to just fail a single alloc then on a still working mount we'll
potentially have no buffer to give it and get that other working mount
stuck.

Another example would be re-exporting a network filesystem, e.g. at
previous job we'd run a 9p server re-exporting multiple lustre
mountpoints on different servers, so one could get stuck while others
still work. That this would impact the 9p client on different mounts on
the client side is a bit of a bummer.


Anyway, this is just looking for trouble and I'm sure most users would
only see improvements with this -- we're talking about some allocations
that would have failed anyway which should be rare enough in the first
place, and in the nominal case we'd get this to work when it doesn't.
I'm just not fully comfortable with the failure mode at this point.
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
