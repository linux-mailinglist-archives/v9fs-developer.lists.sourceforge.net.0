Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EDA564AEE
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 02:35:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8A3H-0004po-1L; Mon, 04 Jul 2022 00:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o8A3F-0004pi-GV
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 00:34:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9796R+xV2UlW+svS1Yd0dMM3t8wbHtVFpelY5td8JW0=; b=LL6nNQHsyAwxe/uTuqK2BacX2P
 oPpxPogErhlXdZpsyp/kuBxEiWj4omGAn5OGNXNNAwEKu/dZunCyP8S+zSSdrPdA8Xh/c1kOJ/Ifc
 1hBCaMcqwRLSROD4dqnJZeaWgIUyj3i/P2mUpDGy7D34zEiEYYwBZ+xy3zbvhb8n/Ais=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9796R+xV2UlW+svS1Yd0dMM3t8wbHtVFpelY5td8JW0=; b=fcfCSaVoBCdDDUbUsRwN7ZlfKK
 i5nUm9wPxk4swcqf+/qAqBsJBPipBrvRh7whdAevp98eFiELjdF/X5uR5DxYBL39asJ8LGbwXd6hO
 EL6O6rwwRSHL7qrk9l1XLQ8QfwzuI16orf11kReIfw/p9fr0odqxAfJyrBEfv/3IF2ak=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8A3C-006UdZ-D4
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 00:34:57 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 63D18C01C; Mon,  4 Jul 2022 02:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656894885; bh=9796R+xV2UlW+svS1Yd0dMM3t8wbHtVFpelY5td8JW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r5wP+HUn6yJcGW3NKbpvcLSE0T51NJMQFr1o8hvzonDQj4T/RS2GLwRLkFrbIpsX+
 YcNvi3Zso/a6tTlIbugeT8y+o8VRrYylhZxi4iH+NMDqBzQw3/WEGz+kg99h637i1O
 WGGu0dyz//kVX/ruL2aJApzmER3rbO1CGSQh/CIQpBLpEhLitCZzFtCU2SGTxQByC1
 cFJCHyN7Uqb45zR/RRQ3GyQ0QH2z2N+tHmbArKby3MFHZuyet+IIReow/FD23SsheO
 qIgDm6wfqLJflrZTiF945HT4DliSbLCp+aHhBqqcuCNfp70r+8hJDyc9RTltXihDkq
 ClhPxHYqNj9uw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 59FF2C009;
 Mon,  4 Jul 2022 02:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1656894884; bh=9796R+xV2UlW+svS1Yd0dMM3t8wbHtVFpelY5td8JW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SovbEYqtNJclT2+Ch4C5ucn0OsxFUdWeL+RxlMZokW02GdFplW5VDOpALLdghgee9
 ms++CRYeMXgTb2XQlPZGYRNQGgoLz8a6gQ7CVlidytgUSqg05Hg9fYZshmLtxEKXLf
 XK6vFNWW8mm92HAFR4CWfppsnn4+4PwSqxdgLo5wY6Sof90DnVuMYHI5GAOn891BGm
 IFUurtcNcjiCKE8G5WOYA4aDXHIl5cVeKEcJY4QHzmDqsw4lESpI1YsrIeelSEikm4
 +7E7KM/8drW42fes1he5YegSrzmh/9OJLyFhtLMDyeualcBfNE+rr496Wk/myCfG1R
 51BlK7kbtEmVw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e279fd83;
 Mon, 4 Jul 2022 00:34:38 +0000 (UTC)
Date: Mon, 4 Jul 2022 09:34:23 +0900
From: asmadeus@codewreck.org
To: Kent Overstreet <kent.overstreet@gmail.com>
Message-ID: <YsI1j07lzShvloNB@codewreck.org>
References: <20220703194636.hex2sa4buchizhbu@moria.home.lan>
 <YsH5MauacM3vX3xZ@codewreck.org>
 <20220704000510.2a2hn7g3tjxj65ab@moria.home.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220704000510.2a2hn7g3tjxj65ab@moria.home.lan>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Kent Overstreet wrote on Sun, Jul 03,
 2022 at 08:05:10PM -0400:
 > > The rest (actually making APIs not depend on physically contiguous >
 > memory for other transports) has no-one working on them and I [...] 
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
X-Headers-End: 1o8A3C-006UdZ-D4
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

Kent Overstreet wrote on Sun, Jul 03, 2022 at 08:05:10PM -0400:
> > The rest (actually making APIs not depend on physically contiguous
> > memory for other transports) has no-one working on them and I doubt
> > I'd have time for it any time soon, but I'd be happy to review patches
> > if it's a thorn.
> > 
> > (meanwhile, if 9p performance isn't a bottleneck for your tests you can
> > probably just reduce the msize back down to 64k or 32k to reduce one or
> > two orders of allocations and you'll stop seeing these...)
> 
> Since you point out msize, if that's a limit to the maximum RPC size we should
> be able to just add a mempool?

That's mostly lack of knowledge on my part here -- we converted the code
from its own pool that kept buffers allocated forever to something more
dynamic back in 4.20 and I ended up chosing kmem_cache as I didn't know
better:

996d5b4db4b1 ("9p: Use a slab for allocating requests")
91a76be37ff8 ("9p: add a per-client fcall kmem_cache")

I'm not familiar with mempool, but from a quick look it could be a good
fit as it does release memory once we're past minimum pool size and the
API is almost identical to kmem_cache and it even works on top of it.

It'd probably not as good as allowing lower order allocations but it
ought to be a good workaroud and maybe also a speedup.


Thinking on top of Christian's patches we could have a pool for msize
big buffers and another for 8k buffers (although the 8k size probably
doesn't really need one?) quite easily...
I'll have a look when taking in Christian's patches.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
