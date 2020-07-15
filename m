Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 900AB2216FA
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 23:25:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvou2-0006Ur-5d; Wed, 15 Jul 2020 21:25:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jvou0-0006Uk-Lg
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 21:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sXUntEC8Usf17V1dVgcRoSdjfD3h9f7MOEQc5/osRVs=; b=NP4FGRpO51C4oYhAQcwj0GHOl3
 VQmkuVCrbDuAGUOmbe8KL/PfQzBH3i56O2Pt4y/ItZD+rfWbQsxMxCxMMTtuFjUJRLZSoPmWFqn8K
 keb/HhlD1/A9YivNRlpcydO3iKeVixCFxVJq0Wxe8jahVcx78ZelhJ8i+pqxNSY9FUAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sXUntEC8Usf17V1dVgcRoSdjfD3h9f7MOEQc5/osRVs=; b=Utqb/U7hxMn6EQyqJKZ0KkFjcw
 15hCNLNQoYM0rYG+2371G48Cy6QVTgmdoQXZboaHO6Mlx2sHV0PO4/rgObyuu3vKpGo46RPDdj4wM
 oQ6WCeSYHqn7opisaEmQPZYLWpR4CE6KC0fU5b/pX+cFA0Yp97LO80a8wdtEfnhpEcnA=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvotw-004xcr-NV
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 21:25:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0625A11E45909;
 Wed, 15 Jul 2020 14:25:02 -0700 (PDT)
Date: Wed, 15 Jul 2020 14:24:59 -0700 (PDT)
Message-Id: <20200715.142459.1215411672362681844.davem@davemloft.net>
To: asmadeus@codewreck.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200715134756.GB22828@nautica>
References: <20200711104923.GA6584@nautica> <20200715073715.GA22899@lst.de>
 <20200715134756.GB22828@nautica>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 15 Jul 2020 14:25:03 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvotw-004xcr-NV
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: lucho@ionkov.net, syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 nazard@nazar.ca, v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 15 Jul 2020 15:47:56 +0200

> It's honestly just a warn on something that would fail anyway so I'd
> rather let it live in -next first, I don't get why syzbot is so verbose
> about this - it sent a mail when it found a c repro and one more once it
> bisected the commit yesterday but it should not be sending more?

I honestly find it hard to understand the resistence to fixing the
warning in mainline.

I merge such fixes aggressively.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
