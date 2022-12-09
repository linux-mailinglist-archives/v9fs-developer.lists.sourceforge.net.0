Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 308236482E0
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Dec 2022 14:46:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3dhZ-0005eo-Hj;
	Fri, 09 Dec 2022 13:46:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p3dhY-0005eh-Gy
 for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 13:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=scntrexDvEFTL6MFGovcPcrFqt1lDEvuFuRvr5PfinY=; b=LMT/6vwxhBZYydOLOBJQCnVj8B
 l9vY7EenOmfR1q9zGao1ca4FDISQ148grxjJRGSWAU/ooQNsCE5g9EZqiJbr0jsMmDd2LZryxAufb
 XQ9juh9GMErxIk867U2Y5sa4QhORgw8fL6uSozk1c9Z3b3+VliPYxuYi/2iKK5xqYzeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=scntrexDvEFTL6MFGovcPcrFqt1lDEvuFuRvr5PfinY=; b=BsdgqLYCHxhUYgMG/FpRnn57Ag
 YQ5vnqYRv9oWY7LOhXm4HC9URc+x4xoEYPGVpopv+2o3/QhcjM+GG6eqQV/c6npmZo1MM1ZxeSqVB
 mdrHuQuCslcdXSjKaJPaz1/T4mD7BQzQRCR+ejGHTjYjPCytTLksCRBCNEPkhcQFpZxM=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3dhP-0001Ig-3R for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 13:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=scntrexDvEFTL6MFGovcPcrFqt1lDEvuFuRvr5PfinY=; b=hUf3X96bDt5N1R+ZFy+AgMqlkx
 LO1sbuoyoRVEaqzcRhA0ybtBDd2CpIuWQ1YHIAKWBsnDOkKvUY1xvtdnbWqvwTh++NZMRjold/cpV
 RZdiRqqWt3BTN2ni8+aAA/oDj6TUTplPsFiNB/JxTLQ56mKh6Fst1eiZz59/K/Q5JhX5YHodtZVFe
 /tmeCWxGaitIllCNxYQ+6NlvRVWRvWaSnJA0Q34c2KAA5TL5n28cVdQvsARmOFsGm7xPs51kuKZXy
 L2jgePd5R4Tg81brX1YbLuzGUXY+8k+w6YsRAVmKZaHqsfXLjTL/X0BAmbf7wj7hriP6z1dq5aiIi
 iWtUGl4rdUC7wgNByweAY9llymducA4v+8RZjvt6WCSyjvHVEiV7+jm4FIdIaO1Dl/WR7OjkpeA6+
 749skjnLlcfe+rPSfDq3DrfSwATa27wjlMJQs0F84NKCscDljUb144MX2NN922VBD47pvWMYEvVLM
 TvT5kp+9jgfH6VrE+BGSQ+8Kgj15Vddw0Tu1xsHQBYMbEcq2crv2ZN5wNQkI1231QsRKQ2F/CvnJI
 2eGC7oTUksWXJyPlkm1fz0ACbvp3DNCn+trWxfh0g6rxuSuhMX4FFCrylP/njugfpnxFnC6Yi4NIw
 hhb/TP80m2MqXz/q4EMjnzBw8KTDX9H2Spgmlkrdk=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 09 Dec 2022 14:45:51 +0100
Message-ID: <2603677.8PHbUxGoeg@silver>
In-Reply-To: <Y5J4Voie1ik6BqnR@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
 <167052961.MU3OA6Uzks@silver> <Y5J4Voie1ik6BqnR@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Friday, December 9,
 2022 12:50:46 AM CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Thu, Dec 08, 2022 at 04:51:27PM +0100:
 > > Right, looks like most of it should be fine. Maybe p9_ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1p3dhP-0001Ig-3R
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

On Friday, December 9, 2022 12:50:46 AM CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Thu, Dec 08, 2022 at 04:51:27PM +0100:
> > Right, looks like most of it should be fine. Maybe p9_client_zc_rpc() needs a
> > barrier as well?
> 
> Good point, the request is used without any other lock after the
> wait_event on req->status in trans_virtio.c;
> I'll send a separate patch for it later today.
> 
> 
> > > I think we're just protecting against compiler
> > > reordering or if on some arch the store isn't actually atomic.
> > 
> > And access order within the same thread.
> 
> In this case afaik the barrier also does that? There would be no point
> if a write barrier allowed a write placed before the barrier to be
> reordered after it...

If it's about a single access, right. However when there are multiple accesses
(e.g. an expression) and plain-C access was used then the compiler was still
free to re-order the accesses in a different order than coded.

> > > This code path actually was broken before I added the barrier a while
> > > ago (2b6e72ed747f68a03), as I was observing some rare but very real
> > > errors on a big server so I'm fairly confident that for at least x86_64
> > > the generated code isn't too bad, but if KCSAN helps catching stuff I
> > > won't complain.
> > 
> > What about p9_tag_alloc()?
> 
> I think that one's ok: it happens during the allocation before the
> request is enqueued in the idr, so it should be race-free by defition.
> 
> tools/memory-model/Documentation/access-marking.txt says
> "Initialization-time and cleanup-time accesses" should use plain
> C-language accesses, so I stuck to that.

When it is allocated then it is safe, but the object may also come from a pool
here. It's probably not likely to cause an issue here, just saying.





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
