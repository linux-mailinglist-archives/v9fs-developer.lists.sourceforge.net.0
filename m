Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C783964A167
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 Dec 2022 14:40:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p4j2J-0006Zt-NH;
	Mon, 12 Dec 2022 13:40:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p4j27-0006ZE-AK
 for v9fs-developer@lists.sourceforge.net;
 Mon, 12 Dec 2022 13:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fz5Bb1HkOnzUlPrBGL969RO1qlOdWuFW9bWTEczProg=; b=JjAl7whyIMvvPAXwu7/tjP6y1e
 lQcOcEcuK1TCS20xMDoae0oecV5JMo1tgxtGNjqkFnlevhPbfrQDCNQZAfyK0kS0ElTpeuo8tvZrC
 1vWU+rxvKlJvGebgNB/FGOaOPA9O71CS9JWyM9Ii0npcl1sj5K0DHPwH5JYAeAAiUtCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fz5Bb1HkOnzUlPrBGL969RO1qlOdWuFW9bWTEczProg=; b=bwqez8xS64CKjHsI5+aoyf1We3
 cRCNkJ6+RgixxaLHkPVyGnuQjry4hoOnmP9Q/9i9a81TFg8H9FDe+KjJ7Tf2RZbahcvihE9YdEM5m
 fXqkvGjiZgr/gPrlg1kATxDGFsip3BtRArbw3mxugSULZZAJQyMDvNjeeirDoE+6POEI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p4j26-0005qB-Od for v9fs-developer@lists.sourceforge.net;
 Mon, 12 Dec 2022 13:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=fz5Bb1HkOnzUlPrBGL969RO1qlOdWuFW9bWTEczProg=; b=Aqs69a/o+oA9QIgpROLGuDvWka
 RNL8sZxXLpKl3wZ5E6/G+Jykc/Ibedh4SbTEqHCTjxfPRFtX0wTOwqyJXpVmayN1/Ms/UJckgWOmk
 7QXCtFy7TxknO2aaq8AQ3N378RuIRqGWKWPSs7TGv80WRahRZbPD7ZLF5jh7yu4EP1eZ3gq7oW2QL
 QCY9kgqNsYUWeMkqgB99laieyj6PStMRcYM6nFEFgEy9zFNOlod1D8Vo3qyEv/DX0iSPIg7iGK6nn
 POaQnyVsBHvfYJpjciQwY+QjWVLr1qfPzIT0mktetZe/pXdAW0VdJH+MmRYZbo3m3DeOnCa5EUTMB
 saoB4c3ujfvogygLjgFb20srtkp5xRXr46fovgySqoLoyIU2Loj7MyB4jLM0e9uxYwZZZSDAiUKKj
 Cqjuf58jsEG2IsJdLR5iHbB5DLazAQqwNeP5sByQ9reZwxoh6qikcWXwRxf5IkqxWV5aGR0iUcBu5
 BteRhBgK8J80TS2DErDcFmyAE7f+4liAuA9L1Ldhm8SRzk1BrwX6NwmTvgO9n9nup1XosdBYwpEHr
 HFVHgAJ3GG75Drhy7wnvBFbQkd+JQ043KZ6yYeCr8vK9UDPrzREMS2PE6mY7faNQMgRXAqJHLnkkt
 pWOSNBAISSSxxpIqG3ss2S4FIk1RqLUPZ0jduuqOQ=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 12 Dec 2022 14:39:43 +0100
Message-ID: <14282286.flAjB0pb5C@silver>
In-Reply-To: <Y5Okye5vE3grF2Qm@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
 <2603677.8PHbUxGoeg@silver> <Y5Okye5vE3grF2Qm@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Friday, December 9,
 2022 10:12:41 PM CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Fri, Dec 09, 2022 at 02:45:51PM +0100:
 > > > > What about p9_tag_alloc()? > > > > > > I think tha [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p4j26-0005qB-Od
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

On Friday, December 9, 2022 10:12:41 PM CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Fri, Dec 09, 2022 at 02:45:51PM +0100:
> > > > What about p9_tag_alloc()?
> > > 
> > > I think that one's ok: it happens during the allocation before the
> > > request is enqueued in the idr, so it should be race-free by defition.
> > > 
> > > tools/memory-model/Documentation/access-marking.txt says
> > > "Initialization-time and cleanup-time accesses" should use plain
> > > C-language accesses, so I stuck to that.
> > 
> > When it is allocated then it is safe, but the object may also come from a pool
> > here. It's probably not likely to cause an issue here, just saying.
> 
> If it comes from the pool then it is gated by the refcount... But that
> would require a similar barrier indeed (init stuff, wmb, init refcount
> // get req + check refcount, rmb, read stuff e.g. tag); just a
> write_once would not help.
> 
> For the init side I assume unlocking c->lock acts as a write barrier
> after tag is set, which is conveniently the last step, but we'd need a
> read barrier here in tag lookup:
> --------
> diff --git a/net/9p/client.c b/net/9p/client.c
> index fef6516a0639..68585ad9003c 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -363,6 +363,7 @@ struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
>  		 */
>  		if (!p9_req_try_get(req))
>  			goto again;
> +		smp_rmb();
>  		if (req->tc.tag != tag) {
>  			p9_req_put(c, req);
>  			goto again;
> --------
> 
> OTOH this cannot happen with a normal server (a req should only be looked
> up after it has been sent to the server and comes back, which involves a
> few round trip and a few locks in the recv paths for tcp); but if syzbot
> tries hard enough I guess that could be hit...
> I don't have a strong opinion on this: I don't think anything really bad
> can happen here as long as the refcount is correct (status is read under
> lock when it matters before extra decrements of the refcount, and writes
> to the buffer itself are safe from a memory pov), even if it's obviously
> not correct strictly speaking.
> (And I have no way of measuring what impact that extra barrier would have
> tbh; for virtio at least lookup is actually never used...)

Yeah agreed, this was more of a theoretical issue. With the other memory
barrier patch posted by you already:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
