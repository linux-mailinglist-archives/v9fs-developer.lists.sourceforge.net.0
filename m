Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 973E362ECFF
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 05:59:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovtTj-0005Ty-RI;
	Fri, 18 Nov 2022 04:59:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ovtTi-0005Ts-KH
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 04:59:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mrSdzggaaZx2brnDeP/8mVVD2/b0o1Wo6WFGVV2aSBo=; b=KAorT1G1CGVCY7igCMSFLz0CaH
 U/FkoBpn+57fA6tRQDdTVF6gjptrIbaLb3M1aaels5TcB+ER3YqcQ34lj/EzDYxdL+9VbP8jI7UNM
 NaIqoNtyFPaBbtFgbRjMAC/+lt8wrt5huJ7ZrgDG06ZaKIXnEOlYll+FuAto5DIs2DBc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mrSdzggaaZx2brnDeP/8mVVD2/b0o1Wo6WFGVV2aSBo=; b=WjZ2mEgtl3VtciSCABJLlmCkEH
 ARDXtqgTyYT+Ou9eT8gBwSEjFdQQh+ZY6GVlq7Orcs+1mX/li0tvJEc5Xz7peOnje4lkPHrwOMvrO
 ZmhejNk1CHCAjZYPks+S1hilxLUsvkRvO1kK0fR1zM8LTEgIBYmhvV7XmaPvcKBGB8Lo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovtTf-00006i-Hb for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 04:59:50 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1DC4FC01E; Fri, 18 Nov 2022 05:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668747587; bh=mrSdzggaaZx2brnDeP/8mVVD2/b0o1Wo6WFGVV2aSBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=4vwrRbyxNxs7al+rvR2pCNFE2QjgKz8o5ClmwRBKaPHgYPKIgNumOhQUNq2zN8B1j
 QetTn82TMvlzkoEasu+s3I6ixbXvPIVzEqEcuRGxRGTNIJOX52DjlIoneNlkC0R6M0
 RJABsOpKd5OZIqXNDxbGuhye81lBJFaLtEw7r9uqv2CCZjAkpbmlXXdtZxJkzvJope
 STdeInKMY7n8TG6Pd/+75bX8i7RbfrKgF3Gdm31mXEl4Jw5pDJJa+SMig6tyeV82q8
 XdNaO/sEFi9x5mGSmpmjkqcfqW7QIc01YJfFd31/VfKdj8fNHfrQp6+Voh1tGIvm66
 Cv/iaWyBVHUGA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 31D27C009;
 Fri, 18 Nov 2022 05:59:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668747586; bh=mrSdzggaaZx2brnDeP/8mVVD2/b0o1Wo6WFGVV2aSBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mv8rYpslCUJMxH7Q5Hjq6m1SCpUQowZkAN05QZBfJXkQ6a0U+YBVr3oYkYb8lqwV+
 CTwYFt9Rp1rQj4JO9Be5t4lshMubLQ7/oRLvRupJCFUMuT73j7IpzXPubjmhrPze6y
 v8Q8OlJAdmMoNbPMedSh5gD2SA2FwHw9cwrdptjf1MQ30m8EeSyxpAVogq7mIjtRkd
 MJWBa4LwC/W7pHrQqahOLOefy3GKarlfTHv/NpsAeKfZ8hKVdZJ2/Qf5auWaHZBdzX
 s1Dn2YozXSwv/F1MTVXWhy4xUKu+CWgd2xDnHNZLpbNeR7usihSEZClumGfmyCTQMs
 sbrK1n90LiSNg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id aa888285;
 Fri, 18 Nov 2022 04:59:33 +0000 (UTC)
Date: Fri, 18 Nov 2022 13:59:18 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y3cRJsRFCZaKrzhe@codewreck.org>
References: <20221117091159.31533-1-guozihua@huawei.com>
 <3918617.6eBe0Ihrjo@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3918617.6eBe0Ihrjo@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Nov 17,
 2022 at 02:33:28PM
 +0100: > > GUO Zihua (3): > > 9p: Fix write overflow in p9_read_work > >
 9p: Remove redundent checks for message size against msize. > > [...] 
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
X-Headers-End: 1ovtTf-00006i-Hb
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Nov 17, 2022 at 02:33:28PM +0100:
> > GUO Zihua (3):
> >   9p: Fix write overflow in p9_read_work
> >   9p: Remove redundent checks for message size against msize.
> >   9p: Use P9_HDRSZ for header size
> 
> For entire series:
> 
> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> 
> I agree with Dominique that patch 1 and 2 should be merged.

Thank you both!

I've just pushed the patches to my next branch:
https://github.com/martinetd/linux/commits/9p-next

... with a twist, as the original patch fails on any normal workload:
---
/ # ls /mnt
9pnet: -- p9_read_work (19): requested packet size too big: 9 for tag 0 with capacity 11
---
(so much for having two pairs of eyes :-D
By the way we -really- need to replace P9_DEBUG_ERROR by pr_error or
something, these should be displayed without having to specify
debug=1...)


capacity is only set in a handful of places (alloc time, hardcoded 7 in
trans_fd, after receiving packet) so I've added logs and our alloc
really passed '11' for alloc_rsize (logging tsize/rsize)

9pnet: (00000087) >>> TWALK fids 1,2 nwname 0d wname[0] (null)
9pnet: -- p9_tag_alloc (87): allocating capacity to 17/11 for tag 0
9pnet: -- p9_read_work (19): requested packet size too big: 9 for tag 0 with capacity 11

... So this is RWALK, right:
size[4] Rwalk tag[2] nwqid[2] nwqid*(wqid[13])
4 ..... 5.... 7..... 9....... packet end at 9 as 0 nwqid.
We have capacity 11 to allow rlerror_size which is bigger; everything is
good.

Long story short, the size header includes the header size, when I
misread https://9fans.github.io/plan9port/man/man9/version.html to
say it didn't (it just says it doesn't include the enveloping transport
protocol, it starts from size alright and I just misread that)
Thanksfully the code caught it.

So I've just removed the - offset part and things appear to work again.

Guo Zihua, can you check this still fixes your syz repro, or was that
substraction needed? If it's still needed we have an off by 1 somewhere
to look for.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
