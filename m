Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E222E76CD
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Dec 2020 08:18:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kuVkQ-0003n2-Up; Wed, 30 Dec 2020 07:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kuVkP-0003mk-5U
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Dec 2020 07:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HCaSoQg8ICQUetSY/RdCKPwts6rtqy9M+q2/JVAQ/U0=; b=F2X2u1xjYbfn3S1up+jOS0od0f
 tTDPFQQwTsTUviM/PDiFlJypQwkj/5SPEcpK8fvZlM1dR1lmv0kmqe8jOTQ8pwYW2UZ+7JWU2CU6a
 yqC98ev27rRCQ1mtwyVul8/I3XCdElsFo3v1v4X1CLIZK+3l8Gt8Ef2fxwsGOtEBXELo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HCaSoQg8ICQUetSY/RdCKPwts6rtqy9M+q2/JVAQ/U0=; b=TgR1zx7IILWbDT+LGHd2KYKbWV
 ErUi96mgs1V4Ie+FVAMD/EsCnCYb7EEIjP/RN6uNTVFluujYrrfZFIFAJssVsL8GuZbUvvor8BzjW
 fYdoQGPWpkukJBS2nlGJwD3nRG2jq3BtZNc+vhdyiQf4IOaCkHKJbFMO7BeQ96EukZjU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kuVkB-0083ih-0A
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Dec 2020 07:18:17 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 14555C01E; Wed, 30 Dec 2020 08:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1609312667; bh=HCaSoQg8ICQUetSY/RdCKPwts6rtqy9M+q2/JVAQ/U0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RgexwDLJ7hCvc7e+ifUEjQVJ9zgsIRmVxms2KvvSQh5c8ycXyuHKb4fOXRlrtKvGa
 suHrv2Rcao3ByqqlGDS1SisNsOMbeNzfVECfuL9rfcbT3Fb8c/16Ut/PT+ToQu6mn9
 KyRT6CISOBg81zLwtNcpFKY9lAaNCWxAoqck6cBN4JvHsB45CmGhgfSC00+uXnF/k0
 IZxdzBFDxVNNj0BGVg0drdAZM3CyT5qnCzsKV+skAe1DXOeY2mPeXk2IUxtZW5Hxi/
 TcpVg7TQFmjoJZcZlgd9wWep1Bp0GHjT8Yk/4TRLExy4F6q+YcMc7sWw0qABFG/7DB
 i3+ir71hKCkYw==
Date: Wed, 30 Dec 2020 08:17:32 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: YANG LI <abaci-bugfix@linux.alibaba.com>
Message-ID: <20201230071732.GA4256@nautica>
References: <1609310713-84972-1-git-send-email-abaci-bugfix@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1609310713-84972-1-git-send-email-abaci-bugfix@linux.alibaba.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kuVkB-0083ih-0A
Subject: Re: [V9fs-developer] [PATCH] 9p: fix: Uninitialized variable p.
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
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

YANG LI wrote on Wed, Dec 30, 2020:
> The pointer p is being used but it isn't being initialized,
> need to assign a NULL to it.

My understanding is p has to be initialized: the only way out of the
while(1) loop below sets it.


I don't mind fixing false positive warnings as it makes maintenance
easier for everyone, but:

 1/ the commit message needs to reflect that and at least name which
tool had a problem with it. I'm tempted to think this case is common
enough that the tool ought to be fixed instead...

 2/ the code needs to work in the p=NULL case if you set it that way
(right now, it doesn't, so in the event the code changes in the future
and there really comes a way to skip initialization this change would
actually hinder bug detection -- it'd need to add a p == NULL check
below, which is going to be useless code, but hopefully compilers will
optimize it away)


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
