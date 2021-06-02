Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F1399543
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Jun 2021 23:10:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1loY89-0004R8-Jb; Wed, 02 Jun 2021 21:10:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <patchwork-bot+netdevbpf@kernel.org>)
 id 1loY87-0004Qz-Jd
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Jun 2021 21:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+I2f8td2Bhi5lLHqNgmhH7+IJ5UFgij3QQlkKyklYtI=; b=hzak1cpO4177eSCPAJuQaC1osP
 Wj/YTswWjbdIAnN21xVxuLvxOHg3qZjbTruE3iqPD4+kEdJi3UZa+vGS1S4QZoBZuQSygnCtnJ4vR
 OEHAxxy/NHKa2X68giTftNkSUjE6KDXNorHCXLmV3a4adN/FMb5RaNI4MW6fCl7WkteQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+I2f8td2Bhi5lLHqNgmhH7+IJ5UFgij3QQlkKyklYtI=; b=YlhZsOOlPaF5pYCRbhoFwqY4dH
 n62pp8lUYlp7tXBk4+ycnzqWkwcfGxo5oGthL3107xGxOLgM5/7bKuBE2vzJ/Krd+Kb0lvAJR3jgk
 zdwbK2le3dLHIhMlTuCFJ0G5tb4pwgZziokg0Ezrsb3HAVOFQQIPfCwpQgiLFbDs0tS8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1loY85-007ucV-D8
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Jun 2021 21:10:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 438CC613EC;
 Wed,  2 Jun 2021 21:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622668206;
 bh=Ok8zVEw+Qf45jYl/oslq70nw8I7NuMhIQOkXPuJMz9Q=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=fci9acJn7hX9eb86KKLIP6Vl8vDFdBDPwfBNp4DXUstcGKFZPyNjMYVyOuPzalRdx
 I5KddkOwMj+++RRhTtllRul9khnJH73gfo8yrI/AhGMMEzC8PfjXCGjbcR6584F+cY
 QlqAty8LjtJEH3Hf5L3K51u1cwcacjMofQS+raKlYKK8r6kwti78/nZP1EU7Lw8dz9
 3BJWNT8VAc9iM06OdnR1s7l7Uu2FP8JxGOhURDxMa9RpRXfNzCNyNSmbzdU96os31V
 Z18HLYzDNDnXGVPAg4aEGqFlcNBGt3qiMDxwas87cmg5pKcIe3VXRQrg3qbc/uPaxm
 2epeLbL1uMRpw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 3863760A39;
 Wed,  2 Jun 2021 21:10:06 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162266820622.24657.674222916835053753.git-patchwork-notify@kernel.org>
Date: Wed, 02 Jun 2021 21:10:06 +0000
References: <20210602065442.104765-1-zhengyongjun3@huawei.com>
In-Reply-To: <20210602065442.104765-1-zhengyongjun3@huawei.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1loY85-007ucV-D8
Subject: Re: [V9fs-developer] [PATCH net-next] 9p/trans_virtio: Fix spelling
 mistakes
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

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Wed, 2 Jun 2021 14:54:42 +0800 you wrote:
> reseting  ==> resetting
> alloced  ==> allocated
> accomodate  ==> accommodate
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  net/9p/trans_virtio.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Here is the summary with links:
  - [net-next] 9p/trans_virtio: Fix spelling mistakes
    https://git.kernel.org/netdev/net-next/c/8ab1784df651

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
