Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEBB21B39C
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jul 2020 13:06:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtqqw-0007Lv-Iv; Fri, 10 Jul 2020 11:06:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jtqqu-0007Lb-Td
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 11:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ujMVJ685Yodj4YKOWawyEcicFfjqj95Pbq1kMc1KOCg=; b=iJBpAP43mRt1xBCbIUXnQWuEO9
 ytZuhVFpXRyakZ2Llu2LWLkHfe7ZRLdImONYYzAfAnX+aFUaazII4SOKoxunAAK578BTMmsnASt7Y
 2t/fVHBFnIVL9espinnrK9Rs7isb50Tpqfm/nwEHGVEUH2Yk8i7taYMGR6Sre6H0O80g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ujMVJ685Yodj4YKOWawyEcicFfjqj95Pbq1kMc1KOCg=; b=WckMsbmBDUG00KfsShYqfuEWqe
 iRWX1oEDkTCVkk5i81TQh3ps0kZekYg8YFw2iamfT2CZiQ7vbIKrHRmsq77l5LwFS39ee7bWBHJnL
 WvccRUVGYAOBu3ZT3ERxJNH6NWlysDBM/+b/Gk8dK/n+NUTxQaZD/qEDZbx1v3PV+eWk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtqqs-001vUW-Po
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 11:06:00 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 5DFF1C009; Fri, 10 Jul 2020 13:05:51 +0200 (CEST)
Date: Fri, 10 Jul 2020 13:05:36 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: "Zhengbin (OSKernel)" <zhengbin13@huawei.com>
Message-ID: <20200710110536.GA17924@nautica>
References: <20200615012153.89538-1-zhengbin13@huawei.com>
 <20200615102053.GA11026@nautica>
 <ae01f0bd-da0a-f01f-cbd0-3af10ccaa4ae@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae01f0bd-da0a-f01f-cbd0-3af10ccaa4ae@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtqqs-001vUW-Po
Subject: Re: [V9fs-developer] [PATCH RESEND] 9p: Fix memory leak in
 v9fs_mount
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
Cc: lucho@ionkov.net, yi.zhang@huawei.com, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Zhengbin (OSKernel) wrote on Thu, Jul 09, 2020:
> Is this OK? I don't see it on linux-next

Yes, I just (still) haven't tested them, sorry.
It's in git://github.com/martinetd/linux branch 9p-test

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
