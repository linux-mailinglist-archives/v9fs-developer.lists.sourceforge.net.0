Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA9F32C74D
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Mar 2021 02:10:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lHcVT-0003Ll-5h; Thu, 04 Mar 2021 01:10:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <patchwork-bot+netdevbpf@kernel.org>)
 id 1lHcVR-0003Le-Jv
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Mar 2021 01:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sTuzPvlcg16fbBgmFy94KTHMV1T9YmkUXGCfaTEzoPM=; b=WpvqvdapckBsQVNjtj6UYVfNyn
 R0eKP6d4W06dUpqwBh2YDFqNBt1Ahp0NkBq3lLY0jsn+UyfoGYoiBZdyIqbceNd+M9mAw1EsHdNsO
 12hMKFY9id7Vs72byN9K85W1GqTM9j+3I4jx3I1Gw7deI/qi9v5tMJy4+hbo3I/gCSZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sTuzPvlcg16fbBgmFy94KTHMV1T9YmkUXGCfaTEzoPM=; b=enNKd0g+BDp1LFEDNAblKt40Py
 U7nR5GPJjlBLnZzXcDJZ5ynoE/c4xyyqiR9rFXC7wERtMxwpRhCZjI/8+2eBXuZyIGjjA39WV0j7/
 jvf9bfxEj18qq1spXfLapQ0sxufH+IQSWLVF9eEFFtSuIUuOspX7bQR+6RJkxk+MbUz8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lHcVI-00DBKX-QT
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Mar 2021 01:10:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 4D54264F6C;
 Thu,  4 Mar 2021 01:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614820207;
 bh=/qfHgCUQRUTtXcdHTg/4f1oGqVVw7OYzXDkei16Mxyk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EzBTs9e1LYuzADZ949c/ipQWsXZQpjmvSrDB65r12adcaIi0EZb/cT/r70JpTK88/
 I6o51vmspNQ2JHzJYg8bKl0LV6/nszWlz+cyXfdelMMeHdk6v3yhTXUlKnfm8LFlxo
 xftehVbt4CzPwVVDm4JsrSQx8TVRnw/V579tdY+LlBQFmM8w1/91IuLCdpSCZmbgnL
 nPuoZI32XYo8x5yHDKwwwXv7/d8CqCduRFtM2YyPN/BYeAEF48b5AI9EOM8/WVt5zJ
 aLpsewjZxdUPlznSI9qzf3Q7+hWjEsA98xWI1jvcb2RGVDn6X6Lb2M2QxMOe74YHAJ
 2iS9oAu0NZoQQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 3D496609D4;
 Thu,  4 Mar 2021 01:10:07 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161482020724.32353.3785422808049340949.git-patchwork-notify@kernel.org>
Date: Thu, 04 Mar 2021 01:10:07 +0000
References: <20210302171932.28e86231@xhacker.debian>
In-Reply-To: <20210302171932.28e86231@xhacker.debian>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lHcVI-00DBKX-QT
Subject: Re: [V9fs-developer] [PATCH v2] net: 9p: advance iov on empty read
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

This patch was applied to netdev/net.git (refs/heads/master):

On Tue, 2 Mar 2021 17:19:32 +0800 you wrote:
> I met below warning when cating a small size(about 80bytes) txt file
> on 9pfs(msize=2097152 is passed to 9p mount option), the reason is we
> miss iov_iter_advance() if the read count is 0 for zerocopy case, so
> we didn't truncate the pipe, then iov_iter_pipe() thinks the pipe is
> full. Fix it by removing the exception for 0 to ensure to call
> iov_iter_advance() even on empty read for zerocopy case.
> 
> [...]

Here is the summary with links:
  - [v2] net: 9p: advance iov on empty read
    https://git.kernel.org/netdev/net/c/d65614a01d24

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
