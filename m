Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AF463A6D1
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 12:10:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozc27-0003RZ-Up;
	Mon, 28 Nov 2022 11:10:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <patchwork-bot+netdevbpf@kernel.org>)
 id 1ozc27-0003RT-By for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 11:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uv7Jptbe5ueu/yDl+R0x9AOxm6KSJaYViBGynYSbRe4=; b=S7AeTOBLV/fGnG8qXoegt4My5Q
 zGCeOnj5R5bZsDWfSWlgyLcFVs4mHV6D2H2KXif0L4UgtXmjfr07GyOmocBk/M0J3zsbdWCjpUZwF
 jcmVuqYRMvTl7neygbMsNXYPr67RaIwgUi7Kc3mcYFAVBwGr877/q4g4Dl8IrchHWMtg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uv7Jptbe5ueu/yDl+R0x9AOxm6KSJaYViBGynYSbRe4=; b=AtlmRdJ+diYZ8bjh+ZqvkA6O1v
 0d51ZeHTXmsT7YpSIZmPKZVuqksRqDagRqgAJNnUQuOIXb3sZS8rsRSuTG1Uos7kHiOuBwsruuwXY
 gzJX9QdUGGwAgECMNErU+GM9w1m3yAS1719Xqrv6qv1KC72hbrsJJ5zcKEcNGF2WqtU4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozc26-00GYxo-Kl for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 11:10:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0905CB80D48;
 Mon, 28 Nov 2022 11:10:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12C6C433B5;
 Mon, 28 Nov 2022 11:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669633831;
 bh=z1o4hJOm9/9hcMA3ap+7ixzMjC/MFG4lVyFiMBfaNT0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=PE/SoITpvK1SoSCazHoFMoRO4gC6trGjqX7OOWxcRrAYTHlh6bhjaABCR1xO72BQr
 Xrfb2xL+JHQpSL7smoafBuzLOY77UrAOYfXaM5Ncwm0qydrl7FqL3wj37VSSDPSUNU
 +AsKGQfeCqwplKGoh7ey46L6XjDIzG17V2Jez+Wi8/Xnvw0H7y7D3N3YF9FJvf7mOh
 4mlO5Spi5J+5VD2GBPFaswF3SbagcprXi+C6Z8yxv/3+eQnq5zZ/fndS5DpdVSidl9
 QAUkIRllTL26ne54bOMxN8A1wJSVp8d5m1tAedctJrJUj7N9WjULdkvi3Rq0682q84
 Xg5qVq8LwX/UQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 81050C395EC; Mon, 28 Nov 2022 11:10:31 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166963383152.22058.5742377206245481714.git-patchwork-notify@kernel.org>
Date: Mon, 28 Nov 2022 11:10:31 +0000
References: <20221124081005.66579-1-wanghai38@huawei.com>
In-Reply-To: <20221124081005.66579-1-wanghai38@huawei.com>
To: wanghai (M) <wanghai38@huawei.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello: This patch was applied to netdev/net.git (master) by
 David S. Miller <davem@davemloft.net>: On Thu, 24 Nov 2022 16:10:05 +0800
 you wrote: > Both p9_fd_create_tcp() and p9_fd_create_unix() will call >
 p9_socket_open(). If the creation of p9_trans_fd fails, > p9_fd_create_tcp()
 and p9_fd_creat [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozc26-00GYxo-Kl
Subject: Re: [V9fs-developer] [PATCH net] net/9p: Fix a potential socket
 leak in p9_socket_open
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
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 viro@zeniv.linux.org.uk, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello:

This patch was applied to netdev/net.git (master)
by David S. Miller <davem@davemloft.net>:

On Thu, 24 Nov 2022 16:10:05 +0800 you wrote:
> Both p9_fd_create_tcp() and p9_fd_create_unix() will call
> p9_socket_open(). If the creation of p9_trans_fd fails,
> p9_fd_create_tcp() and p9_fd_create_unix() will return an
> error directly instead of releasing the cscoket, which will
> result in a socket leak.
> 
> This patch adds sock_release() to fix the leak issue.
> 
> [...]

Here is the summary with links:
  - [net] net/9p: Fix a potential socket leak in p9_socket_open
    https://git.kernel.org/netdev/net/c/dcc14cfd7deb

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
