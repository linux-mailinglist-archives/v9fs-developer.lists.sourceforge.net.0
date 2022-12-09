Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 671926489E9
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Dec 2022 22:13:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3kgF-0000a6-A8;
	Fri, 09 Dec 2022 21:13:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p3kgE-0000a0-3u
 for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 21:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p0JkWQYo17MvQtwFDQ0yp7GACzWzHONdNs6Rir7LK/w=; b=EkuYPLRG0zb11bQ/xkNgjgrmk4
 mZd3v2XsJf6le/z6IXkRLf5sS0Jsgg6Dj8mESCa2wy43GETJOaVf69bW00Rr2VPqkPk4M2+J2LLeZ
 dIshfEjXxkTjji0rHZ4Qt0gsuYbrkadxdoTPd/ODURxO1mRl1DTiLFP5mCTXtzOVCkZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p0JkWQYo17MvQtwFDQ0yp7GACzWzHONdNs6Rir7LK/w=; b=jxxmAF+ORk/rwdkjICyK5MCz66
 AnThz+I4Ip2Asb6ZLz2XbMtV8r+K2j1QS1/9stD8y4vBBhJi+yYuxk3XAbd57nzDHV3SKmmDoxy8U
 Y32gAzJHs5+OP1cM0EBHnX7CXmH4rsWZT2YCYcXyYWt3l9WF/ky8KMR9I/R2PTyTHzns=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3kg9-0005xh-67 for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 21:13:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B5E2CC01E; Fri,  9 Dec 2022 22:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670620392; bh=p0JkWQYo17MvQtwFDQ0yp7GACzWzHONdNs6Rir7LK/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m0Ef99TMlJQdgB85frHbFJe7cNCXxpXAOdh/gVe/b9ZFsKFEKCPMLSYXQYPlZ+g97
 P3nEVmpaW0N/4RG09VpcEZaEfDUeC+Nem6Tr9/7XAH3GFTt7UbTCsp3LR1ubYP7Yo1
 9AvJojoBQq86oXmSJC3cwWatZRjIbjQdOBsl4XjiQT5RUsWTqOv6vO8M6dD0Ocs7LO
 kng9eWVAA8lZx1zUXcjbXYseRQ84wC63Y4Kc7sz6bPwR4oCzljHh7nt0bpogsL3m8A
 aLJXSWzlEMb0TKKbCx/A8JCsTrzMaxx2V7rPT5Nr1VJJOYmOfkUH0PnbA+2BYBCn5d
 h1D2AFw8K+xqw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 93E1CC01B;
 Fri,  9 Dec 2022 22:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670620392; bh=p0JkWQYo17MvQtwFDQ0yp7GACzWzHONdNs6Rir7LK/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m0Ef99TMlJQdgB85frHbFJe7cNCXxpXAOdh/gVe/b9ZFsKFEKCPMLSYXQYPlZ+g97
 P3nEVmpaW0N/4RG09VpcEZaEfDUeC+Nem6Tr9/7XAH3GFTt7UbTCsp3LR1ubYP7Yo1
 9AvJojoBQq86oXmSJC3cwWatZRjIbjQdOBsl4XjiQT5RUsWTqOv6vO8M6dD0Ocs7LO
 kng9eWVAA8lZx1zUXcjbXYseRQ84wC63Y4Kc7sz6bPwR4oCzljHh7nt0bpogsL3m8A
 aLJXSWzlEMb0TKKbCx/A8JCsTrzMaxx2V7rPT5Nr1VJJOYmOfkUH0PnbA+2BYBCn5d
 h1D2AFw8K+xqw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 7c24ea7f;
 Fri, 9 Dec 2022 21:12:57 +0000 (UTC)
Date: Sat, 10 Dec 2022 06:12:41 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y5Okye5vE3grF2Qm@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
 <167052961.MU3OA6Uzks@silver> <Y5J4Voie1ik6BqnR@codewreck.org>
 <2603677.8PHbUxGoeg@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2603677.8PHbUxGoeg@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Fri, Dec 09,
 2022 at 02:45:51PM
 +0100: > > > What about p9_tag_alloc()? > > > > I think that one's ok: it
 happens during the allocation before the > > request is enqueue [...] 
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
X-Headers-End: 1p3kg9-0005xh-67
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
Cc: v9fs-developer@lists.sourceforge.net,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Fri, Dec 09, 2022 at 02:45:51PM +0100:
> > > What about p9_tag_alloc()?
> > 
> > I think that one's ok: it happens during the allocation before the
> > request is enqueued in the idr, so it should be race-free by defition.
> > 
> > tools/memory-model/Documentation/access-marking.txt says
> > "Initialization-time and cleanup-time accesses" should use plain
> > C-language accesses, so I stuck to that.
> 
> When it is allocated then it is safe, but the object may also come from a pool
> here. It's probably not likely to cause an issue here, just saying.

If it comes from the pool then it is gated by the refcount... But that
would require a similar barrier indeed (init stuff, wmb, init refcount
// get req + check refcount, rmb, read stuff e.g. tag); just a
write_once would not help.

For the init side I assume unlocking c->lock acts as a write barrier
after tag is set, which is conveniently the last step, but we'd need a
read barrier here in tag lookup:
--------
diff --git a/net/9p/client.c b/net/9p/client.c
index fef6516a0639..68585ad9003c 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -363,6 +363,7 @@ struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
 		 */
 		if (!p9_req_try_get(req))
 			goto again;
+		smp_rmb();
 		if (req->tc.tag != tag) {
 			p9_req_put(c, req);
 			goto again;
--------

OTOH this cannot happen with a normal server (a req should only be looked
up after it has been sent to the server and comes back, which involves a
few round trip and a few locks in the recv paths for tcp); but if syzbot
tries hard enough I guess that could be hit...
I don't have a strong opinion on this: I don't think anything really bad
can happen here as long as the refcount is correct (status is read under
lock when it matters before extra decrements of the refcount, and writes
to the buffer itself are safe from a memory pov), even if it's obviously
not correct strictly speaking.
(And I have no way of measuring what impact that extra barrier would have
tbh; for virtio at least lookup is actually never used...)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
