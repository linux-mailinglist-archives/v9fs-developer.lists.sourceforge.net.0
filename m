Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC4A5F97BD
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Oct 2022 07:23:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ohlGN-0002z5-Ie;
	Mon, 10 Oct 2022 05:23:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ohlGL-0002yz-Uv
 for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Oct 2022 05:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h7iN0yHsOk2Yc2OCw7yoF/YgYNpNTDxAmdvaxJlSsfk=; b=MQP1pG0L2l/LRB7mQQw0RGhVGC
 z2f/6u9UX50U4XZLAlLRTp0IaR/Tf0+kr6ZsXEXM36ax/a49+lKVMXLeArk7mfKEfX2RbQlwGfvVf
 Omq7c5yGFc4cRJ54k+y6dqgQKyw7YLlJvbohGWV9sQeN/6EExR2iXjLa3vg6qqbgD0j0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h7iN0yHsOk2Yc2OCw7yoF/YgYNpNTDxAmdvaxJlSsfk=; b=k
 6MlJHFIDq+zccxEg3fLO63F8ZPSdNQQRQpugvoEsiCTvu+YjPV5tPUv6wrNA2cjy39BVwLpGgy3zZ
 1315WG/dniGN9RkpgLlo9AXcopVhtVf0utsBmsLcqjWzfxmkhPoy6TXCL+XxtmPJBgjyo1CF7s0IM
 URCtjP0m6qmXvryM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ohlGG-000hQ1-UQ for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Oct 2022 05:23:37 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 91877C01C; Mon, 10 Oct 2022 07:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665379406; bh=h7iN0yHsOk2Yc2OCw7yoF/YgYNpNTDxAmdvaxJlSsfk=;
 h=Date:From:To:Cc:Subject:From;
 b=Tn82eudrPlb9PodZoc3hzbckAKkd3eJWFNIkueNiBbmz+hC6gSopoTdMrETZbj8N4
 QMWGq2zLFuxc1fy04LXxtwIlZBjWuvtCdBPpRbJuSRkPZn696jUKjbLEUiIBNRAXWU
 zObUzsTfdAVjRO489hf915vJ2pRZRuDVBNWcDneqRVLCIx09duvVVYzZrFq98lh9+U
 TqYuK70+JF1AXAV2ImpeIRbtXbWT3vR5ZMNRDdgEJBYmZKJXSeFM3NJLBfMpZaT8F0
 4nMCChj4KkcNlrQPEquGUH9/JQbwgfQHJHwJqAuLR+eFOPnzngo1L+2ei/gtnHoW2P
 xkURFxtMW7LGA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 57F46C009;
 Mon, 10 Oct 2022 07:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665379405; bh=h7iN0yHsOk2Yc2OCw7yoF/YgYNpNTDxAmdvaxJlSsfk=;
 h=Date:From:To:Cc:Subject:From;
 b=GqZBfNmbOjG22+M+cZzTCo4n8z9X7V67QyS/7n+alJFR/6IlDKczYTXM72lu3zcfP
 nItJqgINqgcDYC/gJP7nrwbsY2UicmslzaJqFR3fRCCzPUEiO3yefAVyuuNOZROJD4
 M2u9Xbgzqn79SR1FHAUGOhTs8DkGIxxs/eMVFDUVDHrPdhcyvyYLSxuxZl2kEoxLGf
 rWvdqdSq3C6w7Lc6+6s0T+ZXYoUkMLg5UyKcfitM4R/bSPEABRwzxw6zAvUR2nJhiC
 hivN63/v9blAuYFvl/Gp8vlIPJklEpgA5Ib62sh2APPPmTSnWMFD7/8/VI8VBDHVsL
 MhHlT5+DIGRiw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0979a99b;
 Mon, 10 Oct 2022 05:23:20 +0000 (UTC)
Date: Mon, 10 Oct 2022 14:23:05 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Y0OsOYmG+PU2CgcH@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 b90cb1053190353cc30f0fef0ef1f378ccc063c5:
 Linux 6.0-rc3 (2022-08-28 15:05:29 -0700) are available in the Git repository
 at: Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1ohlGG-000hQ1-UQ
Subject: [V9fs-developer] [GIT PULL] 9p fixes for 6.1
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
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


The following changes since commit b90cb1053190353cc30f0fef0ef1f378ccc063c5:

  Linux 6.0-rc3 (2022-08-28 15:05:29 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-6.1

for you to fetch changes up to a8e633c604476e24d26a636582c0f5bdb421e70d:

  net/9p: clarify trans_fd parse_opt failure handling (2022-10-07 21:23:09 +0900)

----------------------------------------------------------------
9p-for-6.1: smaller buffers for small messages and fixes

The highlight of this PR is Christian's patch to allocate smaller buffers
for most metadata requests: 9p with a big msize would try to allocate large
buffers when just 4 or 8k would be more than enough; this brings in nice
performance improvements.

There's also a few fixes for problems reported by syzkaller (thanks to
Schspa Shi, Tetsuo Handa for tests and feedback/patches) as well as some
minor cleanup

----------------------------------------------------------------
Christian Schoenebeck (5):
      net/9p: split message size argument into 't_size' and 'r_size' pair
      9p: add P9_ERRMAX for 9p2000 and 9p2000.u
      net/9p: add p9_msg_buf_size()
      net/9p: add 'pooled_rbuffers' flag to struct p9_trans_module
      net/9p: allocate appropriate reduced message buffers

Dominique Martinet (2):
      9p: trans_fd/p9_conn_cancel: drop client lock earlier
      net/9p: use a dedicated spinlock for trans_fd

Li Zhong (1):
      net/9p: clarify trans_fd parse_opt failure handling

Tetsuo Handa (1):
      9p/trans_fd: always use O_NONBLOCK read/write

Xiu Jianfeng (1):
      net/9p: add __init/__exit annotations to module init/exit funcs

 include/net/9p/9p.h        |   3 +++
 include/net/9p/transport.h |   5 ++++
 net/9p/client.c            |  48 +++++++++++++++++++++++++++++++--------
 net/9p/protocol.c          | 167 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 net/9p/protocol.h          |   2 ++
 net/9p/trans_fd.c          |  50 ++++++++++++++++++++++++++--------------
 net/9p/trans_rdma.c        |   1 +
 net/9p/trans_virtio.c      |   1 +
 net/9p/trans_xen.c         |   5 ++--
 9 files changed, 254 insertions(+), 28 deletions(-)
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
