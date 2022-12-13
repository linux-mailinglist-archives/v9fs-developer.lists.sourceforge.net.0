Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D6564B3AB
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Dec 2022 12:01:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p532C-0004GZ-SP;
	Tue, 13 Dec 2022 11:01:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p532B-0004GH-GS
 for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 11:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+3KSd/BKuiZzIgaQKdwdpk5+VGqCi4zl8XD5fOa8QU=; b=JMUQp8gAPH8/6yiqu3ikmO1LtI
 Y+Fwg55/NNxXCC2G/qPtsuMYXBzIupjOot9JUOcLALufyDKmL1jhXyycnmm7F1sFoWcVg4kgKSuE3
 52UfYyeGFVKyA/qniVi8uHW2VeKKFzV2Yurvg1IRSfn3HjDn6Zh6CquTzob/fQ+QRZEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+3KSd/BKuiZzIgaQKdwdpk5+VGqCi4zl8XD5fOa8QU=; b=WcUZNSErrhHLBGBxeb/vwIAgER
 8uvNOWkUagySbMSrbA0l3iVfGYkPSUgIh4pWz7yW8qsZvaEzuOBrZCL+2X+ecAGyaacjvA5pzEs5U
 5qK+rE7zPXlDFTGH3A6J2eKNrLunauCw3w1G+vMD48+chmuoeyrWb657ypqWkEL3DpQ8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p5328-00FhlF-Nu for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 11:01:15 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 535C5C01D; Tue, 13 Dec 2022 12:01:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670929277; bh=i+3KSd/BKuiZzIgaQKdwdpk5+VGqCi4zl8XD5fOa8QU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Myn8FwbQHXJqNcTPuq2ZLZaY3T2N2jYM/qyH7kvoubhGQovdc2y8dSzs9dafJRxS7
 B4nkCYvv9c2zPcA28Q3WnEVx4gMNMvFfCc0QXEWAwVlYL+AtfGEFJhenIE6lTvhQVp
 Sr2M3KWY79i9Fpj3yiPGz4BpAza1IXl7XIj0JP3kj/pczQ/glrB8FEHzEcUssj+Ojy
 hitQ4I/VH5md1KV3Td9eTbS8CLmUA0lpkoSET/k6k5V+ZtHANKOjJpKoILb43k0/kY
 aiBtGQ52TH1oVbUimVvGrRm5WOzJnjQ+XlSDRtMeoud8G+zfhSLImHFyrizg+4oB2o
 M1RCWoZNKn0sg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6957EC009;
 Tue, 13 Dec 2022 12:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670929276; bh=i+3KSd/BKuiZzIgaQKdwdpk5+VGqCi4zl8XD5fOa8QU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f6jaoe6b/cRpvorEGj2ppTb3TwsxUgxj9OpPv+ODz6+ULupIaHCEyledy/wyPy0Rl
 3aIgRY3hOpNQ7B4/H+4x5xZh/bGE8eVT+YjOLQe29TzrXmd9sNI63DeuInrBiMSkIv
 ntpvpiEbxThgus/zNUqchJWdpO++UDwyIwZ92WZsHEhadFLTGz3vT1PuO0+Gw4F3BD
 9SYaYojunrCIUpK2teBcUDOcmI6/R4twBKo7JjFNld4jbE+rf0K7t2U4RiIMVhJ1B+
 Kj4EIMkygP9LTwXiwiA2qGtKrWe4KIO/jQ6YbJfBTSW26v7pDzkZ9feyaZcosGnnbn
 mRMqDJ95Z+RaQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5087022c;
 Tue, 13 Dec 2022 11:01:00 +0000 (UTC)
Date: Tue, 13 Dec 2022 20:00:45 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Hillf Danton <hdanton@sina.com>
Message-ID: <Y5hbXanne5IryJBV@codewreck.org>
References: <20221213065901.3523-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221213065901.3523-1-hdanton@sina.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  (Your mailer breaks threads, please have a look at how to
 make it send In-Reply-To and/or References headers) Hillf Danton wrote on
 Tue, Dec 13,
 2022 at 02:59:01PM +0800: > On 10 Dec 2022 09:10:44 +0900 Dominique
 Martinet <asmadeus@codewreck.org> > > @@ -533, 6 +533,
 12 @@ p9_virtio_zc_request(struct p9_client [...] 
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
X-Headers-End: 1p5328-00FhlF-Nu
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
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

(Your mailer breaks threads, please have a look at how to make it send
In-Reply-To and/or References headers)

Hillf Danton wrote on Tue, Dec 13, 2022 at 02:59:01PM +0800:
> On 10 Dec 2022 09:10:44 +0900 Dominique Martinet <asmadeus@codewreck.org>
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
> >  	// RERROR needs reply (== error string) in static data
> >  	if (READ_ONCE(req->status) == REQ_STATUS_RCVD &&
> >  	    unlikely(req->rc.sdata[4] == P9_RERROR))
> 
> No sense can be made without checking err before req->status,
> given the comment below. Worse after this change.

Hmm, I don't see how it's worse (well, it makes it more likely for
req->status to be RCVD after the barrier without the rest of the data
being coherent I guess), but it's definitely incorrect, yes...
Thanks for bringing it up.


Having another look I also don't see how this can possibly be safe at
all: if a process is killed during waiting here, p9_virtio_zc_request
will drop pages it reserved for the response (in the need_drop case) and
sg lists will be freed but the response can still come for a while --
these need to be dropped only after flush has been handled.

If these buffers are reused while the response comes we'll be overriding
some random data...


This isn't an easy fix, I'll just drop this patch for now; but I guess
we should try to address that next cycle.

Perhaps I can try to find time to dust off my async flush code, some
other fix might have resolved the race I used to see with it...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
