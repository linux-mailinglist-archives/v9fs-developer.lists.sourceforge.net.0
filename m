Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6F6268451
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 08:01:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHhY8-0006Hb-Qz; Mon, 14 Sep 2020 06:01:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kHhY7-0006HT-9m
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 06:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a3WOgDdiQGTNqYF8WmWER6mG3yiDEZwnPz5eV9f2w5M=; b=iVpvli7NPPLAhzl435yPSgkwmc
 WeRVhXOIxGtrlwG6LZUC4xpvn+CX414baI0N50IJ5O5beIAsNAECu2auFHA2VpXFYjHTi3LjjwIhP
 HDaCP6JdQbUTdrrqW39wNra5bhU7vywKVaIZM4FPcbyj4w6zOju9NOWuZ72GzHv5v0Xk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a3WOgDdiQGTNqYF8WmWER6mG3yiDEZwnPz5eV9f2w5M=; b=Ai2VWgV3s7qAAE19q4pMtfaOOO
 6Hi/GrABT7XAN6NxjgYoSt7K+/qXl2xDLE7j24499BFn+rt5K0g9YLc+Hg4X/WSzZ+WOc37x1hij2
 ZoYbaWAQmhar3KvodnhnDcxwI0pVf3U1JY3tHSOtueO5r4Bh0/Q5G2pHYDe5Pk9cdmAs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHhY0-007ys5-FB
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 06:01:11 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 233D8C009; Mon, 14 Sep 2020 08:00:51 +0200 (CEST)
Date: Mon, 14 Sep 2020 08:00:36 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>, Greg Kurz <groug@kaod.org>
Message-ID: <20200914060036.GA18115@nautica>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914033754.29188-2-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914033754.29188-2-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kaod.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHhY0-007ys5-FB
Subject: Re: [V9fs-developer] [PATCH RFC 1/4] fs/9p: fix
 create-unlink-getattr idiom
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
Cc: ericvh@gmail.com, lucho@ionkov.net, justin.he@arm.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Mon, Sep 14, 2020:
> Signed-off-by: Greg Kurz <gkurz@linux.vnet.ibm.com>

Just on a note on that mail: gkurz@linux.vnet.ibm.com has no longer been
working for a while, probably want to update to groug@kaod.org in both
first two patches.
Greg, sorry I had forgotten to fix Cc earlier, can you confirm?


I'll (re)do a proper review of the first three patches again in a bit
but iirc they looked good on paper, will resend a mail if required.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
