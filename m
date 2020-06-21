Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE0E202AE7
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 15:56:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jn0Sl-000724-Op; Sun, 21 Jun 2020 13:56:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jn0Sl-00071y-3Z
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 13:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JpTdBMb5CcmKdOPdd4pRFoUlnRfPKkoaHBiLFXZemac=; b=YbV1UaEjDPnmHNwV7IhFBIJi1I
 lwQfnZ+Y1SV30svJ/3cyi9nFmbSqnYjYK43Ori1rRVqPLfmTV59lGwf7DEmLePINmXoNCjhO9rgMB
 KOjCyrcEV+s/WuNp/9v10qa+VAx7cbw3CbyD9jsdtjYRztheplQvxe33bUSTxW/h4dIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JpTdBMb5CcmKdOPdd4pRFoUlnRfPKkoaHBiLFXZemac=; b=i6Uwz7pqHe1QVnDAlj6ftdIOkA
 RTL/GClQNerj5pfDpVIR/zmX3E3e4o2cGsqq4LZe1m5IFGDsJk615MQL3gQWFXUGTDrMa9oRYhTj+
 uv1AMouYQt5vHlZ/vJepTszXM/W0zPD8qZ1PCThqpzoZl2rVv0Nk77H3Jj8Blk6wKgKI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jn0Si-00E1U7-S9
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 13:56:47 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 51A05C01D; Sun, 21 Jun 2020 15:56:38 +0200 (CEST)
Date: Sun, 21 Jun 2020 15:56:23 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Message-ID: <20200621135623.GA20810@nautica>
References: <20200621084512.GA720@nautica>
 <20200621135312.78201-1-alexander.kapshuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200621135312.78201-1-alexander.kapshuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jn0Si-00E1U7-S9
Subject: Re: [V9fs-developer] [PATCH] net/9p: Validate current->sighand in
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

Alexander Kapshuk wrote on Sun, Jun 21, 2020:
> Fix rcu not being dereferenced cleanly by using the task
> helpers (un)lock_task_sighand instead of spin_lock_irqsave and
> spin_unlock_irqrestore to ensure current->sighand is a valid pointer as
> suggested in the email referenced below.

Ack.
I'll take this once symbol issue is resolved ; thanks for your time.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
