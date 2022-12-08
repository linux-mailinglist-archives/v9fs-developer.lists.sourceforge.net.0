Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F46664738E
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Dec 2022 16:52:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3JBk-0004ii-Gz;
	Thu, 08 Dec 2022 15:51:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p3JBX-0004iU-K5
 for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 15:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WqNv4tTpaYh4KzG5gg2YG+zdkA2FUCBC5yatizYS8Yw=; b=NRkPYMD7iOqy4K6e0MUMDnzFfT
 BAR4v3ax4bVtS08Ng6RD3xlrbZuao24I24Mp1mzk486oCF0wbWv+XJ6bhfYmwm2jDCn6Wy0xfWdDo
 BX5pE+MiHRx9ylKQkjY4x+VcdA9T8WxMUOMAGWhhySrRd/F5zdNBzAtz0ppZpo12TJwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WqNv4tTpaYh4KzG5gg2YG+zdkA2FUCBC5yatizYS8Yw=; b=dRxkqfrm5Gv4AysdJ0bO6xwZJw
 7qyS/clSCQ9xxN2TeorlJLBRPgNSosjKgLNvqmvz1R/cjJxGIGob9re8VXyNX6CXkh7r0hMKCOmW6
 3DbphdNzA5WFmVbiQLJCN4C+2j72WpEt5tiv4YPBJu0Ac/vDMF3wOj1Mh1DU3Wzl/NTQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3JBQ-0002pz-RA for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 15:51:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=WqNv4tTpaYh4KzG5gg2YG+zdkA2FUCBC5yatizYS8Yw=; b=urr7usUl3uRGmeZW4FVRO+3un8
 Gn8NX7uY6rAKOKf5EYN2J+4sHgp8rNRwoij6maPFMaXmFLaniCT/Hkox/qmqqQDtF9D28O2dLiPPv
 RPNSFrWGaVwd7zzcxnDUKSbQwWFAVBEGpddB9BJFkyDXE3nRjdI8cWU6aQV/FHzWvOlCbns3mPRGd
 CzgdGBTg4oshuU0H7C/m6ozy12xEP9Nc+T56ELIyKPPrN/NweE8w2RZPdjzzbCdzLUydUMw2FwaxV
 oWNGA1ZAd2UHOyk8jNn4uBZMadtAOwtd5xYD24pl51hEKEb/J+BeBiUcxRGiZtqaFqE1TX0PwlCkx
 VIHJ/sZrZkDx8axJKez1tY7RQnNUdj7o+rq2aSVlnNcdi3P5GodqtHA31MyqT3DjZonSKxuEKds+z
 b7+4ZwPLBPpFWXM/5mCIuW38DYZtoiWDrm6lN9Sy51LIeU6RK1L3T4nHfOLNkr1KfHS+zF1r2RDAl
 488JuJeCYrIDTYuSCimTkiLcUluWlIiMSYY0hhAD7LKKU5gqp1kSPGGWHIQFq5nAlDqeIUzTNc6Fm
 a2TMqgc46KRJjE4Du9ABQEw0uINDa0n4Trf3YQmb4PJu73500mAa5ToKBKRaPTdGEAmZxF7qvbaCE
 jRLrycmY+2KuQ8IpDNiEvGgxWbtNoNCqGC1XYUV7k=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 08 Dec 2022 16:51:27 +0100
Message-ID: <167052961.MU3OA6Uzks@silver>
In-Reply-To: <Y45wZEvO8gOanV85@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
 <3368929.hG1Ktuj5m1@silver> <Y45wZEvO8gOanV85@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, December 5,
 2022 11:27:48 PM CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Mon, Dec 05, 2022 at 04:19:01PM +0100:
 > > I must have missed the prior discussion, but looking a [...] 
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
X-Headers-End: 1p3JBQ-0002pz-RA
Subject: Re: [V9fs-developer] [PATCH] 9p/client: fix data race on req->status
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
Cc: v9fs-developer@lists.sourceforge.net,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, December 5, 2022 11:27:48 PM CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Dec 05, 2022 at 04:19:01PM +0100:
> > I must have missed the prior discussion, but looking at the suggested
> 
> Good point, I'll add a link to the report as well...
> It's this thread:
> https://lkml.kernel.org/r/CA+G9fYsK5WUxs6p9NaE4e3p7ew_+s0SdW0+FnBgiLWdYYOvoMg@mail.gmail.com
> 
> > solution: if there is no lock, then adding READ_ONCE() and WRITE_ONCE() would
> > not fix cross-CPU issues, as those would not have a memory barrier in that
> > case.
> > 
> > Shouldn't that therefore rather be at least smp_load_acquire() and
> > smp_store_release() at such places instead?
> 
> The barrier is here -- 

Right, looks like most of it should be fine. Maybe p9_client_zc_rpc() needs a
barrier as well?

> I think we're just protecting against compiler
> reordering or if on some arch the store isn't actually atomic.

And access order within the same thread.

> This code path actually was broken before I added the barrier a while
> ago (2b6e72ed747f68a03), as I was observing some rare but very real
> errors on a big server so I'm fairly confident that for at least x86_64
> the generated code isn't too bad, but if KCSAN helps catching stuff I
> won't complain.

What about p9_tag_alloc()?





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
