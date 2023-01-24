Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AFF678F3A
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 05:22:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKAop-00012N-Ft;
	Tue, 24 Jan 2023 04:21:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pKAoo-00012G-Ib
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 04:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qNH/O6TVSFeECWjAXFVbP9T5g0W9BIzYlM9S/YbQoLQ=; b=VZTtUn3JYAoBY5cxwO6lf5umLC
 TfdfsqY+N3jiQAECqkEwAPuwDsOXXvXiY6LbdyQDuaePz8ePSv7VbkSPZAMNHye+XHuVP2c6VQhLI
 3zXRB0XzAk/pcfTC6TYKRiwr/GMp6eiJTsDUF+BaTbqfHK6OHYd8oCgsPtQcyjyFfogU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qNH/O6TVSFeECWjAXFVbP9T5g0W9BIzYlM9S/YbQoLQ=; b=GzkqAbrj9izRPlHLaaeyGDaeEq
 Alj8hWXBxT4Id7yIGq/9el4Qb1yhgyJzZztkTmjEwrdv9N6QdsrcWZizRxhsSnB9TiCdpm3+2NU8J
 f/NrbTX6GvKaa9sNMx7+i8fOAViGWjIr29CNX4jNofiwAoh9dAJd20oMTROpyMTgqJxY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKAok-0006v8-Ub for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 04:21:57 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9BA37C01E; Tue, 24 Jan 2023 05:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1674534127; bh=qNH/O6TVSFeECWjAXFVbP9T5g0W9BIzYlM9S/YbQoLQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eFA1YEVCa1LChQ4T3aQgcBeRMQeFGNMB7aZk1o+KntmExb3hD5WaTQWiaXt9jOe/v
 loBhbhL/GsxOGQZYzF/8Lq3EjIU7cMUlQ/hYelj4PUQeiqsnz9/VG9tfQJEE3/fUdP
 e/2t6/5PL8uzkgP/LHFdBsK2HK0Mr9kEj7qQHOQZE5M/aLketT8v+bqjML6O8x2wHW
 a0sKSOR4l5I2LEaw07h1e7e7M91bs3Wzptj0VKb7wGW9lDdEclV0SpuYbLc1rmyCYM
 +2vNqGfyjTMgcw/p6bNRh4lQ8TXo/SrW/9tYyGPnRJYlTrRUPrYxec17XFNEtidr+0
 VtrcEAC2QKQFg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 3126EC009;
 Tue, 24 Jan 2023 05:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1674534126; bh=qNH/O6TVSFeECWjAXFVbP9T5g0W9BIzYlM9S/YbQoLQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=4MgJdVYLYQ+JUTZe4FtquPC5iLUsEi3UjIcXFk023PtHjJYfifgfWSAxOaYE2iWqi
 skVb7hFIJsFizL9ySoFPlhirrTvpRm4oe025IuvTJMlcV88tv5TXqo4XlRb4vFsp9z
 r9EyKycvEuhG8z07MeSQ52mNRC9L9FWlmJTt2mdIWEbIaCbP48c1PIa7kEMcV5fHC+
 k/WCnEogL+/Pw2n53uzUJoP/xLnCk9VflAAWPBhfsTb94saWHaGUjbkjqQR2JA+DDD
 xHByp4EJN18P/4FF67tkwW3MwnaGc54YXZiN+qgCZRHfPxzFxdP+ROIiS7CtUnQB3f
 JvZ9yoCUr0R2Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4796104c;
 Tue, 24 Jan 2023 04:21:42 +0000 (UTC)
Date: Tue, 24 Jan 2023 13:21:27 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y89cxzpuZXgxYrs5@codewreck.org>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
 <CEE93F4D-7C11-4FE3-BB70-A9C865BE5BC2@icloud.com>
 <Y89HQXu90ea6Ed4r@codewreck.org>
 <CAFkjPTkX2t_YOEENVPEggV-yhyjYgBrYjYLYCH9JVeTifeap3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTkX2t_YOEENVPEggV-yhyjYgBrYjYLYCH9JVeTifeap3g@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Mon, Jan 23, 2023 at 09:12:13PM
 -0600: > Was just looking at this, I imagine my 9p-next branch timed out
 of > being included in linux-next about a decade ago ;) I could > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pKAok-0006v8-Ub
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Ron Minnich <rminnich@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Mon, Jan 23, 2023 at 09:12:13PM -0600:
> Was just looking at this, I imagine my 9p-next branch timed out of
> being included in linux-next about a decade ago ;)  I could
> re-establish, but I think it's probably best we keep a single 9p
> funnel into linux-next and that probably means yours for now (there
> doesn't seem to be much precedent in Next/Trees for
> multi-maintainers).

I seem to recall nfs used to alternate maintainers, and Next/Trees[1]
lists a tree for trond and another for anna which would imply they each
have their own branch.
afaiu xfs does something similar but they seem to channel it through
git://git.kernel.org/pub/scm/fs/xfs/xfs-linux.git, although there's
three branches included in there...

Anyway, it doesn't look like there's any clear cut rule here, we can
probably do whatever looks good.

[1] https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next/+/master/Next/Trees

> We could try and coordinate around a shared
> github for-next repo and require at least one other maintainer review
> patches before submission to for-next and then mirror that to
> kernel.org -- mainly looking to minimize workload for folks here, open
> to other ideas.

I don't particularly like github workflows -- would just follow along
there if you want some gating, but going through github.com/v9fs/linux
probably makes sense access-wise, I don't have an account on kernel.org
so that'll be one less thing to do.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
