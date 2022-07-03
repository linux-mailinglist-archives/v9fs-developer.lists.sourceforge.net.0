Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 397BB5649AF
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Jul 2022 22:17:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o861z-0006dr-Sj; Sun, 03 Jul 2022 20:17:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o861y-0006dk-4b
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 20:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=psG6KE3qFSsOlE2s7Bjd5fbOA/or69BoHHCeZIq/PCA=; b=FQjwdna7uxBREHdt2Rd4+6I5Yw
 H3UFJ0YZgCGFkhMm4Dyz5PcsZspavQO2ytCdb5kbtAAMjXiqjLmoZirimiDq54FcDsIjX08U/ZTey
 /SklEWqo4ojaB7kabaj77ZOI0bXfs4baOVG1g3gJIuJYFi5nRmjY68gzIo8oWt7o1zJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=psG6KE3qFSsOlE2s7Bjd5fbOA/or69BoHHCeZIq/PCA=; b=NOZR/i7RYy5/8ro/VgtRu6j95S
 BFn+3NvARX9LbcUSM03D6LPW1wiFGGvBNk8qeTf7nfvn2FUOT8r2nF3LDodPRwvFOsTzJgRnHlWpI
 xrvk/AD141Zp9YudET3DljlZwEJTiTaFKLsVG92rsqXZbqOkmmjDlOF0nsm+yPBsFyaQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o861s-00073O-QO
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 20:17:20 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 07C98C01D; Sun,  3 Jul 2022 22:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656879430; bh=psG6KE3qFSsOlE2s7Bjd5fbOA/or69BoHHCeZIq/PCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v6Ax09MBUbdxcvNaROLz8qeKzlL1iwt8uLcFpRGGgeYgsSExdWrP+f5h2C62W/O0t
 wuUSie+29u+jJMKySr5egYhqAMiEsSIk6Q1R/twJZCTD5Dfl1AKW6BJPXy3YjZYpxw
 gwGNcDU/hisgADvYckcfg4SsdWykfBO9K4aIatijHY9SKCQ9Pp1glHIyH8SXE6gWbd
 thG/Xq8ftqmd+G9WPBYHIzrqxVjll9U7eX+eaSDG7GE/lsjA3/56Sk9dLVN3L7Vu9y
 vBwIM8x1bEn8YNMsnutAZW1yDS2fPIrUBjGj2Xl0i8yUoiaZtkLWosOQDh8FnhUTyj
 x6riv2ZVBrrUg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D0CDFC009;
 Sun,  3 Jul 2022 22:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656879429; bh=psG6KE3qFSsOlE2s7Bjd5fbOA/or69BoHHCeZIq/PCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rLmf/9dLC0xqZ8DclzhqDKzGl2QfZbTGN+yJvZu2uHq06ufdvglb4d8QrrV5JYUnD
 QCeAe8zFbTDVN/9A+ycUs+uLPXulMWX/sTSyhrkx7+FXY1P0EmdH2ws3zFEhJL4i6k
 jnQRg3NBOETIavMDcbaZQ0k8TN0BZ7nkeH4YpPVyuPr8d8vHdt3XmwcpIemIi8j603
 K20TzDq2cTasi8ihDNyXFPqtje1rUf5wQ1yXeicyXaql507G6r7HMe5VyWmFB0LWd1
 /Bd5st5hLHT0Vp1ZgiFXSAK/Jassdrv6bv1XFIIEifiUb2PwIhUAWt3pBAbimKN8IA
 Z87u2pKLqpDIg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 27a117f8;
 Sun, 3 Jul 2022 20:17:04 +0000 (UTC)
Date: Mon, 4 Jul 2022 05:16:49 +0900
From: asmadeus@codewreck.org
To: Kent Overstreet <kent.overstreet@gmail.com>
Message-ID: <YsH5MauacM3vX3xZ@codewreck.org>
References: <20220703194636.hex2sa4buchizhbu@moria.home.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220703194636.hex2sa4buchizhbu@moria.home.lan>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Kent, Kent Overstreet wrote on Sun, Jul 03,
 2022 at 03:46:36PM
 -0400: > Hey, so I've been hitting this page allocation failure in v9fs quite
 a lot and > since I use it in my kernel testing infrastructure, i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o861s-00073O-QO
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
Cc: ericvh@gmail.com, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, lucho@ionkov.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Kent,

Kent Overstreet wrote on Sun, Jul 03, 2022 at 03:46:36PM -0400:
> Hey, so I've been hitting this page allocation failure in v9fs quite a lot and
> since I use it in my kernel testing infrastructure, it's been impacting test
> results quite a lot - I'm wondering if we might be able to do
> something about it. Example, from v5.18 + bcachefs:
> 
> https://evilpiepirate.org/~testdashboard/c794bfd75e534b05133db1035e4480159001e8c5/xfstests.generic.299
> 
> We're doing an order 5 allocation here, so the memory allocation failure is
> unsurprising. Switching to kvmalloc would likely be good enough - but we appear
> to be bouncing the entire write syscall, maybe we could not do that? Has that
> been looked at at all?

Unfortunately that's a limitation of how buffers are handled in the
underlying 9p transports (see net/9p/trans_*.c) -- trans_fd calling
writes would be easy enough to adapt, but we have similar adaptations
that need to be made to all other transports (rdma, virtio, xen) that
likely all have APIs handling sg lists as well so definitely possible,
but not something I'd call easy.

It's a known thorn though and defintiely something that we want to look
at eventually, in particular for virtio Christian has been working on
increasing the msize cap:
https://lore.kernel.org/all/29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net/T/#m80ef85e82fb57ae658000624752eafd44812ff5c

the latest patches of that series would make big allocations much rarer
and are probably good enough to get in quickly.
I was half just not finding time for it and half waiting for the virtio
spec improvements that'd be needed for the first half of that series,
but that part is useful either way and I'll put it back on the list of
things to try to finish this cycle.

The rest (actually making APIs not depend on physically contiguous
memory for other transports) has no-one working on them and I doubt
I'd have time for it any time soon, but I'd be happy to review patches
if it's a thorn.

(meanwhile, if 9p performance isn't a bottleneck for your tests you can
probably just reduce the msize back down to 64k or 32k to reduce one or
two orders of allocations and you'll stop seeing these...)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
