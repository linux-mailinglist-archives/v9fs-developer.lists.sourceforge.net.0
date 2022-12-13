Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 861AE64AE87
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Dec 2022 05:04:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p4wWr-0001bV-6z;
	Tue, 13 Dec 2022 04:04:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p4wWo-0001bO-K5
 for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 04:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vhlILI+vHoNfr+ISMlfj3L2/y/4T49eJ8NexDBX73eQ=; b=gZobDy7CstT8zeNee9TstoPim+
 /5Rgai9G8F5qe57qZGHxlY4hlrbkXj19ZHRKIUaLJ6otAsvUXUqvSXNoWbcpwmFFMbFP++ZeqO1N9
 oADXqxr92EQNCTBSj5Am7ApLa8ZG+mf3IIbpJptu9/neO27ZzYsCQqwnLDQtwcKXrt9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vhlILI+vHoNfr+ISMlfj3L2/y/4T49eJ8NexDBX73eQ=; b=F+bktHkLedhx9DaNtuHRaTqgvH
 NW07sVi9vcubjMFOk9Cg5gzGTc5Ar99kQTrYGqBC7uJfk+KEs90qoo5N2Hx5OVBHNw2BYxr3lK6+p
 2qC45/qkYJWkr3IMRRr/tdETz7KmGih4ZxeNUf6/9tH1eUbigeuZmUw04IRDx/Ljca4o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p4wWl-00FNNU-6i for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 04:04:26 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 8C6DCC01C; Tue, 13 Dec 2022 05:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670904264; bh=vhlILI+vHoNfr+ISMlfj3L2/y/4T49eJ8NexDBX73eQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HVud/Fql/x5OBAytvhGz3mtgcsvPKgQVl6Tg+c6cmRuHrwCnXJMivzUVwECrUIANd
 aCRWn8by4iRCWCTlFXDewRwYNW19liyoS5z59f+dP3mYCC+CO1BqMeuBFxXoSvhHqE
 WInfZrweYQOAYq5rwtUPKhFb3AVV4ho2We8dimmmD/5JCmae4GJ65kYhMRIRJ2h6v5
 uAkGquk7nsexmgD2fs+Qjv/rwfE6sosqNun4NfPRX4r7gafphi19+2yCGhiNGs3hXf
 5gvVdkk1bDeJD1pQn2KAMHRFAeBYuiwCm46Cqhdm/2zSzQ9hkxLdt96JgIy9YHob3G
 fECguENXBYgWw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 9C553C009;
 Tue, 13 Dec 2022 05:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670904263; bh=vhlILI+vHoNfr+ISMlfj3L2/y/4T49eJ8NexDBX73eQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KEatnRtcY1R1imBOfC7CYYfINTFehClJS2CRiCKmB3IXAHvPBDokv3JrI/+8aHzS3
 2iK4m5Ma1569+iX0JppFMNC2q6KdAB0niapL975gWhpHywcMmvDTJLflWqc22BKu2q
 CHwV8WEX6AkdkEZ1WxCP2/XAVvQt2l1/6KIFetBBDaKkwst+vNRqV68DRl6Qi/V04V
 OkT8mFdgHVxhHSIekDQXXTvDWwiABVf41z/FqoFkaOCyuPW99fdPClGil3xxRvo4Y7
 1rkHv+uPiYN7IdOOdl0Bz/fEHbe0LxikcY34C2egdk9qn/TVk9tp0SuuPJgGeB9gvM
 2UXMlsQNoo7KA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 85a5df99;
 Tue, 13 Dec 2022 04:04:07 +0000 (UTC)
Date: Tue, 13 Dec 2022 13:03:52 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y5f5qG1SkGrEST6H@codewreck.org>
References: <20221210001044.534859-1-asmadeus@codewreck.org>
 <21422678.bhv4C0q8Fj@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21422678.bhv4C0q8Fj@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Dec 12,
 2022 at 02:35:39PM
 +0100: > > diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c > >
 index 3c27ffb781e3..98425c63b3c3 100644 > > --- a/net/9p/trans_ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1p4wWl-00FNNU-6i
Subject: Re: [V9fs-developer] [PATCH] 9p/virtio: add a read barrier in
 p9_virtio_zc_request
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
Cc: v9fs-developer@lists.sourceforge.net, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Dec 12, 2022 at 02:35:39PM +0100:
> > diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> > index 3c27ffb781e3..98425c63b3c3 100644
> > --- a/net/9p/trans_virtio.c
> > +++ b/net/9p/trans_virtio.c
> > @@ -533,6 +533,12 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
> >  	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
> >  	err = wait_event_killable(req->wq,
> >  			          READ_ONCE(req->status) >= REQ_STATUS_RCVD);
> > +
> > +	/* Make sure our req is coherent with regard to updates in other
> > +	 * threads - echoes to wmb() in the callback like p9_client_rpc
> > +	 */
> > +	smp_rmb();
> > +
> 
> Oh, I had p9_client_zc_rpc() for this in mind, but I see why you chose this
> place in p9_virtio_zc_request() instead. LGTM

Yes, we access req data here so as much as it'd make more sense to keep
it symetrical in p9_client_zc_rpc (like p9_client_rpc) I think we need
it here.

> I also made some tests to check whether this barrier would hurt performance,
> but I measured no difference. So this should be good to go:

Thanks!
The assembly generated with the barrier is actually slightly shorter for
x86_64, but it's hard to tell the actual performance impact....

> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

Cheers, I've queued this patch as well: let's make that this merge
windows' batch unless a problem comes up.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
