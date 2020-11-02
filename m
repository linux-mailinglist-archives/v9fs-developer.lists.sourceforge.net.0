Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5762A351F
	for <lists+v9fs-developer@lfdr.de>; Mon,  2 Nov 2020 21:30:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kZgTA-0000Nb-0Y; Mon, 02 Nov 2020 20:30:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <patchwork-bot+netdevbpf@kernel.org>)
 id 1kZgT6-0000NK-Sg
 for v9fs-developer@lists.sourceforge.net; Mon, 02 Nov 2020 20:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ax+wJIlJPbSt791dNmaeH3ptURiP4iMPmbb4jg82lyg=; b=WecoXjoCas+yxXKzPByv9ZXH+h
 bVOly0C5SE5szvvs6MVaLDEwBVp6Lv9ARKYqEvT6gTfJMrHUrVmbruy6eAPCf56EKlcU8vLSitHqt
 jJPd3w/skRIQykL1K9SPAKKj5fQNZ4UdQYBm7Hvz9JBjVPPVeud4rU2nPC5HXSkC/25E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ax+wJIlJPbSt791dNmaeH3ptURiP4iMPmbb4jg82lyg=; b=LHc7+EyiYMSCaiXCKN2BuIPYxO
 RM9Dgn54qMAqyjev4IQi86J8VVgS6sv+BZkm6jEAM+c0u4TTfNop7O1jQf59oNGU0uMgk9N2c67WF
 sOHTT56bCdzU3tqdlm8rYlB1kIVMuzUJZ9P+xJoBA20ntXKE/hFyfdepWT4CWvlB8C5g=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kZgSw-006obi-MI
 for v9fs-developer@lists.sourceforge.net; Mon, 02 Nov 2020 20:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604349005;
 bh=HZnbHJR1h6GJ0Gcauc4KFGKuAHIgmjm2fkD8O/LDu8s=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=NRItzGPKWIwaBa34+Egk7lPzzpSZRtCNtHkeYzo6nYJ8YqT9h9Gqwsz7Q4CLLhA30
 PjoF4hJEphYFNFXbYsG3JWrZX1pjC0yDqfkJJC3pI+RZ7ytpKHLxjPFFWc5g7Gma+n
 qu5qzVObCkW2MDcZiSfEBVLrHgURG/9q/Oq5gqLU=
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <160434900508.15792.6186344267999954521.git-patchwork-notify@kernel.org>
Date: Mon, 02 Nov 2020 20:30:05 +0000
References: <20201031182655.1082065-1-andrew@lunn.ch>
In-Reply-To: <20201031182655.1082065-1-andrew@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
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
X-Headers-End: 1kZgSw-006obi-MI
Subject: Re: [V9fs-developer] [PATCH net-next] net: 9p: Fix kerneldoc
 warnings of missing parameters etc
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
Cc: ericvh@gmail.com, netdev@vger.kernel.org, lucho@ionkov.net,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Sat, 31 Oct 2020 19:26:55 +0100 you wrote:
> net/9p/client.c:420: warning: Function parameter or member 'c' not described in 'p9_client_cb'
> net/9p/client.c:420: warning: Function parameter or member 'req' not described in 'p9_client_cb'
> net/9p/client.c:420: warning: Function parameter or member 'status' not described in 'p9_client_cb'
> net/9p/client.c:568: warning: Function parameter or member 'uidata' not described in 'p9_check_zc_errors'
> net/9p/trans_common.c:23: warning: Function parameter or member 'nr_pages' not described in 'p9_release_pages'
> net/9p/trans_common.c:23: warning: Function parameter or member 'pages' not described in 'p9_release_pages'
> net/9p/trans_fd.c:132: warning: Function parameter or member 'rreq' not described in 'p9_conn'
> net/9p/trans_fd.c:132: warning: Function parameter or member 'wreq' not described in 'p9_conn'
> net/9p/trans_fd.c:56: warning: Function parameter or member 'privport' not described in 'p9_fd_opts'
> net/9p/trans_rdma.c:113: warning: Function parameter or member 'cqe' not described in 'p9_rdma_context'
> net/9p/trans_rdma.c:129: warning: Function parameter or member 'privport' not described in 'p9_rdma_opts'
> net/9p/trans_virtio.c:215: warning: Function parameter or member 'limit' not described in 'pack_sg_list_p'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'chan_list' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'p9_max_pages' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'ring_bufs_avail' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'tag' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'vc_wq' not described in 'virtio_chan'
> 
> [...]

Here is the summary with links:
  - [net-next] net: 9p: Fix kerneldoc warnings of missing parameters etc
    https://git.kernel.org/netdev/net-next/c/760b3d61fb4e

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
