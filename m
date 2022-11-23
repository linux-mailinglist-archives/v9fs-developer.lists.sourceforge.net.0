Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B24276369D2
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 20:24:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxvMF-0008Nc-Ao;
	Wed, 23 Nov 2022 19:24:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1oxvMD-0008NV-VH
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 19:24:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j+ELa4vnCdlcQSFskyFjVopXXmTVuy1HbGajj4IL8ec=; b=f7RvTINsSnOfw0ngThVC20+utG
 sJuwj33ECG078NknsAwWpJo4nyOUrTE2yY5H54WXcPMZiMf8XF7MQGhRmtYYzzUF96YUdEO7QrhvU
 Q78ffCiG/+gRB1J+vhaii6kj0oPmuINKTBkq/fyNPu8UbF6bHFYoKpFv5BgZcPj508Is=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j+ELa4vnCdlcQSFskyFjVopXXmTVuy1HbGajj4IL8ec=; b=YH2FZbY+BNS7kozipXiZw7Aa5d
 LvGQ/ZK15oufkg2ufxiL/cDaFSRLPaFtGbOsM3ySigZ7fSEwz298B/hAfNdbogqVsS3qAOPNyym4P
 iZyGCZHITLxzDPIv0rUJdAbMwaXUu/woKTT/W/Oc/r1qEbtuKNybmgvJweg2JL9EHRQo=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxvM8-00Gxoh-KC for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 19:24:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 501ADB82449;
 Wed, 23 Nov 2022 19:24:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 057D3C433D6;
 Wed, 23 Nov 2022 19:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669231457;
 bh=JnvMqFARKDRgQcpv7qV4sfKwOEskmpy+MLQc3kVk6m0=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=JsDWn+vxh8zg8qimdWQW2WLNLobmtPm6ltVRwb6RMLbExIp2P5V3f4u2Sz1aPoZfh
 3bBXORyWTaHWjHqAC+5hRtlDHbKYE0L2Z49r0DAcx/FDU+nc2v10KHPeZzyG/sEAbo
 rcZDgeyOdS6G7mRhk59V4BGx/FXBVGJLjmooYRBjWuEXQCaIANy6gdhHk2Hwz24tjz
 0mkCkyl5hPESpFP51fqe0cdIFS/tUi2dVYH89VYzZ5kJnbFyeOlIDiugY6Yjk/sJ4D
 MqIu8dJ+CdYwNe+PDRVubPdOY7FaZBpJpatD1JsdmI7yVGHrXSHLf+3eCHzDD/ntqO
 4D12L56XEvgUQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 E53DDC395ED; Wed, 23 Nov 2022 19:24:16 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y32sfX54JJbldBIt@codewreck.org>
References: <Y32sfX54JJbldBIt@codewreck.org>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y32sfX54JJbldBIt@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-6.1-rc7
X-PR-Tracked-Commit-Id: 391c18cf776eb4569ecda1f7794f360fe0a45a26
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fd64898dfed510a55b66080f8ab5c9b06982bbce
Message-Id: <166923145692.2332.11368016095153725752.pr-tracker-bot@kernel.org>
Date: Wed, 23 Nov 2022 19:24:16 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 23 Nov 2022 14:15:41 +0900:
 > https://github.com/martinetd/linux tags/9p-for-6.1-rc7 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/fd64898dfed510a55b66080f8ab5c9b06982bbce
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxvM8-00Gxoh-KC
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 6.1-rc7
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 23 Nov 2022 14:15:41 +0900:

> https://github.com/martinetd/linux tags/9p-for-6.1-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fd64898dfed510a55b66080f8ab5c9b06982bbce

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
