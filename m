Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86033630AC1
	for <lists+v9fs-developer@lfdr.de>; Sat, 19 Nov 2022 03:32:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1owDeO-0007TT-QC;
	Sat, 19 Nov 2022 02:32:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1owDeN-0007TN-4I
 for v9fs-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 02:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Yjd5xMaWArHs/hCZzzkqikKWyQam6jbgmCv2vrnQpI=; b=ZaF+Ahf/DfkH1ET2kR99NWu68w
 TpTTmjgUDaEQZE3owax4PWt2ejdbb97l8yFvODEx+pFc0yJFS0va2GcReVgCZbMfK9UrkzQq/O1dx
 M88r67afZNIY3XikiKIuBueQVKbE7wBHwpXR5aMwh+4N93gOBsnuyaYderqrqbiwZYyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Yjd5xMaWArHs/hCZzzkqikKWyQam6jbgmCv2vrnQpI=; b=LAepFgXTKxTw8AyjRM5Vjd3Xrt
 hY+WvI8OKCoW6svElBvD1HaVqZC5+/6jc3XHuUhNJMR/It71Jf9ExSt4XbPec6yslalhaHCIE54Q/
 yAKLhDdTBEgAC4QOTG9Adu0sZaOQ2u1TQBFSr9oEc39ONDnwuVMvGuss61UVZHL+u680=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1owDeK-0001KT-QN for v9fs-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 02:32:11 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 75B40C01D; Sat, 19 Nov 2022 03:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668825128; bh=4Yjd5xMaWArHs/hCZzzkqikKWyQam6jbgmCv2vrnQpI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LPqodueTv8W769nsonfh2NGZzhx/lbcySLdAbL/SpUyKbjEE7Y6yRdt5BYzmLiQhv
 Z3xk2Hy/upLOu7/Xa2zGiVECtCF20zVBnFfRYETSnDivcrX2+I/vxUow6CfR6H4d7T
 7+IPinfuQxlBpbNDhaNO9DZUq7dDLXdBnnL/P77l7f/R2T16dXIsl7edpHZeVO1a+J
 PDUKmxo+oRMKjzYAC78Ow2sYGtu+HzXFQDzjOrKzWPs7fykyWBKvGiW5pZPlkyRQFm
 ngkiFOCO4UJNC/sCaT4kNiN22S8AhrLHP3QxGGSoOJfIxP8wrn6G/f29GNDJEsVZtd
 A+z4/nGPTea1w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 28A2FC009;
 Sat, 19 Nov 2022 03:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668825127; bh=4Yjd5xMaWArHs/hCZzzkqikKWyQam6jbgmCv2vrnQpI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IHEs1h6ctHt0nRgXNeQ3yrzm5E2Q5TQ3S57o/LVHvzw39TgT/xz3eUn8IngZl5G2r
 cuTISAGGigVoqiOOfN26H/EaIpLy0dkZwNoQOEmIY3IL9fdLLA0g1bt9l3aEVxU/16
 52bYP4wGmpRvcth1DLRhE3fVd8KsV+/xrYkyr5R7xqGoLELxHLKaOW8Arn4UXIzjwj
 xBoWm+9orPMIi3wPtpwndFiIWhkJGD7DH7aDrvOwSr33GBW6siCklUjuWn8vVk/B5f
 /MLF77j8AZFex3qfzGpswyyMVZMTs4BK2En47LIprm0vUt1Qq0FhhedhicOZVr8/+r
 +DQWvrqwhGDxQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f316aa44;
 Sat, 19 Nov 2022 02:31:56 +0000 (UTC)
Date: Sat, 19 Nov 2022 11:31:41 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Message-ID: <Y3hADWgV9JeajmfF@codewreck.org>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
 <alpine.DEB.2.22.394.2211181713420.1049131@ubuntu-linux-20-04-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2211181713420.1049131@ubuntu-linux-20-04-desktop>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks a lot, that was fast! Stefano Stabellini wrote on Fri,
 Nov 18, 2022 at 05:51:46PM -0800: > On Fri, 18 Nov 2022, Dominique Martinet
 wrote: > > trans_xen did not check the data fits into the buffer before
 copying > > from th [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1owDeK-0001KT-QN
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for
 buffer size
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
Cc: v9fs-developer@lists.sourceforge.net, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thanks a lot, that was fast!

Stefano Stabellini wrote on Fri, Nov 18, 2022 at 05:51:46PM -0800:
> On Fri, 18 Nov 2022, Dominique Martinet wrote:
> > trans_xen did not check the data fits into the buffer before copying
> > from the xen ring, but we probably should.
> > Add a check that just skips the request and return an error to
> > userspace if it did not fit
> > 
> > Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> > ---
> > 
> > This comes more or less as a follow up of a fix for trans_fd:
> > https://lkml.kernel.org/r/20221117091159.31533-1-guozihua@huawei.com
> > Where msize should be replaced by capacity check, except trans_xen
> > did not actually use to check the size fits at all.
> > 
> > While we normally trust the hypervisor (they can probably do whatever
> > they want with our memory), a bug in the 9p server is always possible so
> > sanity checks never hurt, especially now buffers got drastically smaller
> > with a recent patch.
> > 
> > My setup for xen is unfortunately long dead so I cannot test this:
> > Stefano, you've tested v9fs xen patches in the past, would you mind
> > verifying this works as well?
> > 
> >  net/9p/trans_xen.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> > index b15c64128c3e..66ceb3b3ae30 100644
> > --- a/net/9p/trans_xen.c
> > +++ b/net/9p/trans_xen.c
> > @@ -208,6 +208,14 @@ static void p9_xen_response(struct work_struct *work)
> >  			continue;
> >  		}
> >  
> > +		if (h.size > req->rc.capacity) {
> > +			dev_warn(&priv->dev->dev,
> > +				 "requested packet size too big: %d for tag %d with capacity %zd\n",
> > +		                 h.size, h.tag, rreq->rc.capacity);
> 
> "req" instead of "rreq"

ugh, sorry for that. I didn't realize I have NET_9P_XEN=n on this
machine ... /facepalm

I'm lazy so won't bother sending a v2:
https://github.com/martinetd/linux/commit/ebd09c8245aa15f15b273e9733e8ed8991db3682

I'll add your Tested-by tomorrow unless you don't want to :)


> I made this change and tried the two patches together. Unfortunately I
> get the following error as soon as I try to write a file:
> 
> /bin/sh: can't create /mnt/file: Input/output error
> 
> 
> Next I reverted the second patch and only kept this patch. With that, it
> worked as usual. It looks like the second patch is the problem. I have
> not investigated further.

Thanks -- it's now obvious I shouldn't send patches without testing
before bedtime...
I could reproduce easily with virtio as well, this one was silly as well
(>= instead of >). . . With another problem when zc requests get
involved, as we don't actually allocate more than 4k for the rpc itself.

If I adjust it to also check with the zc 'inlen' as follow it appears to
work:
https://github.com/martinetd/linux/commit/162015a0dac40eccc9e8311a5eb031596ad35e82
But that inlen isn't actually precise, and trans_virtio (the only
transport implementing zc rpc) actually takes some liberty with the
actual sg size to better fit hardwre, so that doesn't really make
sense either and we probably should just trust trans_virtio at this
point?

This isn't obvious, so I'll just drop this patch for now.
Checking witih msize isn't any good but it can wait till we sort it out
as transports now all already check this one way or another; I'd like to
get the actual fixes out first.

(Christian, if you have time to look at it and take over I'd appreciate
it, but there's no hurry.)


Thanks again and sorry for the bad patches!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
