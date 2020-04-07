Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C751A0750
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Apr 2020 08:31:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLhm4-0008Gm-Kf; Tue, 07 Apr 2020 06:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jLhm3-0008Gf-92
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Apr 2020 06:31:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZP52uz6cdWKNFEe5M5hR/AIwMUlVQV8qT6xEBB/JIlI=; b=VWtUAY1oxVhgL1RjUjLqCLMjCN
 ijwBMbfx86J6+Qil5QfrMwKc5ySkmBtYGzI/lkxgG6wjJ8CUt2ea+nbQ2oeeY67oxrw7t/GNCITmy
 CmsdaoLH1UJ8zrWQfVzC8I+jgXd+FpQ9Idd113vl2DCSWeh1NikTSWv7nPUZxk4H5gVA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZP52uz6cdWKNFEe5M5hR/AIwMUlVQV8qT6xEBB/JIlI=; b=Wc5lAW2mXTDfnnUgQMhY0txxzF
 4TlaZWm4xrohfd4plWg+hQWHfadrxsKMOkWE5q/nxeU8Rzt3beCSkPbUseQ43F1vbn++ItEPmSl7+
 1mAU7FBbxrcBVTrCQFYsZRlsfWyFhibjqS1JtDmHVPcikWiM719QTFqxNg407BWi4ROs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLhm1-005Gqp-0G
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Apr 2020 06:31:51 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 4A516C009; Tue,  7 Apr 2020 08:31:42 +0200 (CEST)
Date: Tue, 7 Apr 2020 08:31:27 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: L29Ah <l29ah@cock.li>
Message-ID: <20200407063127.GA30642@nautica>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200407021626.cd3wwbg7ayiwt4ry@l29ah-x201.l29ah-x201>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407021626.cd3wwbg7ayiwt4ry@l29ah-x201.l29ah-x201>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jLhm1-005Gqp-0G
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

L29Ah wrote on Tue, Apr 07, 2020:
> In fact i would prefer disabling the full reads unconditionally, but
> AFAIR some userspace programs might interpret a short read as EOF (and
> also would need to check the logic that motivated the kernel-side
> looping).

Willy is correct there we can't just do that, way too many applications
would break.

I think O_NONBLOCK on regular files is a good compromise, let's not go
overboard :)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
