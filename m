Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 306FC54EBA2
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 22:54:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1wVL-0004Vs-5W; Thu, 16 Jun 2022 20:54:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1wVK-0004Vm-N0
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X/9Mnt59MpOxvWO59sXdsi9u5n4Xq1/JhwqX4dEqABs=; b=YBpvQXHJwbpvkoo69HFXAPwCnG
 OMgH2isJ4LgJOQWiMgiJ8R92JC8qt9Tb0JqsbA99NVi8sh/RWHwNxnnDPDNvSovmscPqPhBSUAYGj
 Fnns8Z+BPG3byir3qvZD6N+b6HuVZ24tc+VOh+p0wicOgfOAsn1a24aVpu+m5CQv5Few=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X/9Mnt59MpOxvWO59sXdsi9u5n4Xq1/JhwqX4dEqABs=; b=csnTUI4rPRkDHE8E3cAT/xXEnb
 O3vUXSdDmhdm9FaRd+0RZiBTksKwSiv8cIvifBDTfXTogIgzwlbHWkMY/G6LKq1X3JPYwSL3XVxg0
 tZtE1oXZDP+bFuRE11AWxN804ZgAyHtM8jL5gtZzFHUdEEqSxqMNwo66rtCEr1DDEdng=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1wVF-00072I-EY
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:54:14 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5AE1BC009; Thu, 16 Jun 2022 22:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655412844; bh=X/9Mnt59MpOxvWO59sXdsi9u5n4Xq1/JhwqX4dEqABs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JoqVs5/UNitWWr0njvnA/+JKPeUjQvQ95A8K6WEcSWEJKRmm9H0yW7blkvGrDgWlH
 AUYSXMobBMbVMg/MxHGCHwqnG56mpLlwKhFfuR2ifjZGNqoX1KZ3h0OQvWvcXQtdVy
 vELCHD4L6Ctaq7cV7jblsJTgzWrheYU3bKbIPCZQTAnKVtpcEVlRPRllNOqGBmu9RQ
 6KS0VI66q2FKjhbgic+sMn7debdfHEgnyd6sXjzddTvMFcN6wog37JjhjeUfzix+NY
 5pf3r8QYkQ7IiYBls+6K+2AmTDrYp1Wzu0NCV02XhuW4Kb6Lr8SkMgrV+FCGTvp7tV
 bOCPC7zEnvZ1Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2D342C009;
 Thu, 16 Jun 2022 22:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655412843; bh=X/9Mnt59MpOxvWO59sXdsi9u5n4Xq1/JhwqX4dEqABs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KQYxpI9EUKW9gNY7pUpW5oLCxetbUStRGqpC7RfFJAfas8VEzTfxcg2D1uaZrv58U
 1it6igOsJHiXHaBKCRA7Hl980tJQCvIw8rz7S9hsvwHPWmrzskbOHw6zl7fTz6WBNu
 FhWj0bJ55znDeBC3fnuXK8vgPEdW6+cnQ17o0OwY6YIdq/fsrRQBigLdHJXn8ZpClb
 m1bpoMkSeSCyZTVqriB7qb2xNe9Eca4b0CjUgH76VZvvPbZ5kd7jJ2kL1lauc6gZwP
 LcEB3YoT/6hdWhbXdkY1m/rB57grS610znEtFx7+hNFrdHbO+MZDilr1gXtTlJsTqu
 mEhCmA8ZBPC4Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0a286bde;
 Thu, 16 Jun 2022 20:53:57 +0000 (UTC)
Date: Fri, 17 Jun 2022 05:53:42 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YquYVgBMxY37P+r3@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org> <Yqs1Y8G/Emi/q+S2@codewreck.org>
 <Yqs6BPVc3rNZ9byJ@codewreck.org> <15767273.MGizftpLG7@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15767273.MGizftpLG7@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Jun 16,
 2022 at 10:14:16PM
 +0200: > I tested all 3 variants today, and they were all behaving correctly
 (no EBADF > errors anymore, no other side effects observed). 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1wVF-00072I-EY
Subject: Re: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Jun 16, 2022 at 10:14:16PM +0200:
> I tested all 3 variants today, and they were all behaving correctly (no EBADF 
> errors anymore, no other side effects observed).

Thanks!

> The minimalistic version (i.e. your initial suggestion) performed 20% slower 
> in my tests, but that could be due to the fact that it was simply the 1st 
> version I tested, so caching on host side might be the reason. If necessary I 
> can check the performance aspect more thoroughly.

hmm, yeah we open the writeback fids anyway so I'm not sure what would
be really different performance-wise, but I'd tend to go with the most
restricted change anyway.

> Personally I would at least use the NETFS_READ_FOR_WRITE version, but that's 
> up to you. On doubt, clarify with David's plans.
> 
> Feel free to add my RB and TB tags to any of the 3 version(s) you end up 
> queuing:
> 
> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Tested-by: Christian Schoenebeck <linux_oss@crudebyte.com>

Thanks, I'll add these and resend the last version for archival on the
list / commit message wording check.

At last that issue closed...
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
