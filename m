Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A71FFB86
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 21:08:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jlztp-0004GQ-9n; Thu, 18 Jun 2020 19:08:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jlztn-0004GI-CS
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:08:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nKEglG+VkY5k2r4b6pOjNT2aku/EL+cTcx9OPXsQOPk=; b=ToPSOKK6jmpzors23xtAGmsNt4
 3wzYedIldHJ1uBUphwaTopXShOYRJsIuV5fcRBTJP3l3HNalSpDLsse4jD4UsqRKZbUYau/hUSEaw
 qfMkW2+ZE99vSpNq7ejMvGbj8C5Kh0Wdv19pzuY9N1Dj9oMo4ch7sN1S18+jacJ9qg3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nKEglG+VkY5k2r4b6pOjNT2aku/EL+cTcx9OPXsQOPk=; b=lBPyKHWB8Gzx8ojz8yaMUpiEcW
 Kllb6hbKcZj4sSl13+RVHL5j2cdd7V+XXHXHc6eFDZZKVW+pR/Gwk1fBsSo0vofmdFDBlwnWXeWVy
 hYbIslQ9wb1L1IEC4Tj5xuOjpnXRLWR3zPkPMpdBdaHG2bb7ZH1zuUePjrUDIZ2Jh/8c=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlztl-008vU9-C6
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:08:31 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id EA9E8C01C; Thu, 18 Jun 2020 21:08:22 +0200 (CEST)
Date: Thu, 18 Jun 2020 21:08:07 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Message-ID: <20200618190807.GA20699@nautica>
References: <20200618183310.5352-1-alexander.kapshuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618183310.5352-1-alexander.kapshuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jlztl-008vU9-C6
Subject: Re: [V9fs-developer] [PATCH] net/9p: Fix sparse rcu warnings in
 client.c
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
 linux-kernel@vger.kernel.org, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Alexander Kapshuk wrote on Thu, Jun 18, 2020:
> Address sparse nonderef rcu warnings:
> net/9p/client.c:790:17: warning: incorrect type in argument 1 (different address spaces)
> net/9p/client.c:790:17:    expected struct spinlock [usertype] *lock
> net/9p/client.c:790:17:    got struct spinlock [noderef] <asn:4> *
> net/9p/client.c:792:48: warning: incorrect type in argument 1 (different address spaces)
> net/9p/client.c:792:48:    expected struct spinlock [usertype] *lock
> net/9p/client.c:792:48:    got struct spinlock [noderef] <asn:4> *
> net/9p/client.c:872:17: warning: incorrect type in argument 1 (different address spaces)
> net/9p/client.c:872:17:    expected struct spinlock [usertype] *lock
> net/9p/client.c:872:17:    got struct spinlock [noderef] <asn:4> *
> net/9p/client.c:874:48: warning: incorrect type in argument 1 (different address spaces)
> net/9p/client.c:874:48:    expected struct spinlock [usertype] *lock
> net/9p/client.c:874:48:    got struct spinlock [noderef] <asn:4> *
> 
> Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>

Thanks for this patch.
From what I can see, there are tons of other parts of the code doing the
same noderef access pattern to access current->sighand->siglock and I
don't see much doing that.
A couple of users justify this by saying SLAB_TYPESAFE_BY_RCU ensures
we'll always get a usable lock which won't be reinitialized however we
access it... It's a bit dubious we'll get the same lock than unlock to
me, so I agree to some change though.

After a second look I think we should use something like the following:

if (!lock_task_sighand(current, &flags))
	warn & skip (or some error, we'd null deref if this happened currently);
recalc_sigpending();
unlock_task_sighand(current, &flags);

As you can see, the rcu_read_lock() isn't kept until the unlock so I'm
not sure it will be enough to please sparse, but I've convinced myself
current->sighand cannot change while we hold the lock and there just are
too many such patterns in the kernel.

Please let me know if I missed something or if there is an ongoing
effort to change how this works; I'll wait for a v2.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
