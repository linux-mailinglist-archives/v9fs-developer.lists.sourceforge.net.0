Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B6756539A
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 13:34:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8KLO-0002tH-8d; Mon, 04 Jul 2022 11:34:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o8KLN-0002tA-CJ
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 11:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LvaSgyr59Dlhh+kwrnBJ3P9HJSzfJXHEY5q+SEbcgXI=; b=SFvDlIw6IH1VUoziy3g5UFh6MM
 iHIxzDK9CRP0NU17k4E1uFuDDeIfXy6mGeT8UN9L7NhJyCWNjRMnYdYke/HEGQjR1UCACgLUb+FuQ
 0vQBKMWVP58LmJ7GiV6co11T512xlJinuf/7NbZqhwn/kXW1oXPVTxaruY+y3oj6T6sQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LvaSgyr59Dlhh+kwrnBJ3P9HJSzfJXHEY5q+SEbcgXI=; b=V9pn6wV6qbMm31C5NCfXGYJcN6
 IJm6u0Q7/TsSL4MlQBR+w96UeHj8T/XrEw7YVqciovr9vEaUG3ct9X470SERxIg9GwsCfLqgd7ieB
 N4dHqDs/TCDCa4sqvuLn437wwv3lhRNAEoR03pCpW30rTTHYFOSDMwZ8zceSNPx5T3QM=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8KLM-0007md-7c
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 11:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=LvaSgyr59Dlhh+kwrnBJ3P9HJSzfJXHEY5q+SEbcgXI=; b=uFhDKkew3OpcOsgPj5iK+8QWf7
 z3tZR5vhoqTf0rNzKVQziy9VBshu6caJCoDXfqd2HefSVmDjtNx0JG2bbhnZ13Hgu+Lchp8fFJTV3
 /U3JKP3srKXHP9Rp1dT3mdJP5b+NL9BATeDxnmQfEQ4XF0O5X1AzxQZaUc7dg8Q8uuW5iSGxxSoCn
 MIskA/i2Rc6A/Amt3S/el8jVPKdcPUBttWLg/6eKkwKls6oX8a6HWi0Ga9poBS8Dp5awmEBdhq9B1
 3o/WaZhEUerdKps7q4f5bdw8ioVrOhybMMCMm6MnPe2jSRdokunSh1/Nj0K/rnxGnLd3AdvDdj8yC
 uGlWlqD+VooPyxEZIR2M7qNzsTXwPOU8k6+RloM68JEW0S7a/w977yXafULB3bV9Z1oJBSRdhX9qI
 FhnZ2HKdmcDA1zepxWIuFrhGHAvXdgSO+E690ij23FZAMU1vx4dHi2j7Ne60CwlDVDIf8Du97nGyi
 34dvE1eoK5KtxI2nVdFuDQyyma12KSAtdlVhb95JvIky+XYI0bS7HenCaX57R9xy0aOcioYL5UCMI
 cqQKjeO70nblYW+xgzVJC5a1xNfIdEt0RPkOpxaDZn2glAB1iOKwCwA2gEbkElPQD5od587QVESuo
 46+356sIyyLbG8CbA6+ljUu9TmBt5S2OcmCXqLLLk=;
To: Kent Overstreet <kent.overstreet@gmail.com>, asmadeus@codewreck.org
Date: Mon, 04 Jul 2022 13:34:08 +0200
Message-ID: <2500632.tAWgvL4FMB@silver>
In-Reply-To: <YsH5MauacM3vX3xZ@codewreck.org>
References: <20220703194636.hex2sa4buchizhbu@moria.home.lan>
 <YsH5MauacM3vX3xZ@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 3. Juli 2022 22:16:49 CEST asmadeus@codewreck.org
 wrote: > Hi Kent, > > Kent Overstreet wrote on Sun, Jul 03, 2022 at 03:46:36PM
 -0400: > > Hey, so I've been hitting this page allocation f [...] 
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
X-Headers-End: 1o8KLM-0007md-7c
Subject: Re: [V9fs-developer] Memory allocation failure in v9fs
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
Cc: ericvh@gmail.com, v9fs-developer@lists.sourceforge.net, lucho@ionkov.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 3. Juli 2022 22:16:49 CEST asmadeus@codewreck.org wrote:
> Hi Kent,
> 
> Kent Overstreet wrote on Sun, Jul 03, 2022 at 03:46:36PM -0400:
> > Hey, so I've been hitting this page allocation failure in v9fs quite a lot
> > and since I use it in my kernel testing infrastructure, it's been
> > impacting test results quite a lot - I'm wondering if we might be able to
> > do
> > something about it. Example, from v5.18 + bcachefs:
> > 
> > https://evilpiepirate.org/~testdashboard/c794bfd75e534b05133db1035e4480159
> > 001e8c5/xfstests.generic.299
> > 
> > We're doing an order 5 allocation here, so the memory allocation failure
> > is
> > unsurprising. Switching to kvmalloc would likely be good enough - but we
> > appear to be bouncing the entire write syscall, maybe we could not do
> > that? Has that been looked at at all?
> 
> Unfortunately that's a limitation of how buffers are handled in the
> underlying 9p transports (see net/9p/trans_*.c) -- trans_fd calling
> writes would be easy enough to adapt, but we have similar adaptations
> that need to be made to all other transports (rdma, virtio, xen) that
> likely all have APIs handling sg lists as well so definitely possible,
> but not something I'd call easy.

Yes, like I described in the commit log of patch 8 of my pending series,
switching to kvmalloc() is not possible (tested):
https://lore.kernel.org/all/39f81db5e5b25a1e4f94ad3b05552044209aff21.1640870037.git.linux_oss@crudebyte.com/

With the patches I posted, the allocation pressure would already be massively
reduced, as it would no longer allocate huge 'msize' buffers for every single
9p request (as it does ATM).

On the long-term, we would then additionally need to adjust client code to
work with sg lists to resolve this issue for good. At least for 9p request
types that work with larger buffers. Because then we can also allocate non-
contiguous physical memory segments. Right now, client code works on simple
linear buffers.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
