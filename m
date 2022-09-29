Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 242625EF23F
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 11:38:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odq08-0002Xy-Ch;
	Thu, 29 Sep 2022 09:38:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1odpzr-0002Xh-C2
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EGKXdYO0ZI4OV681j07jTPGiH/qrMo7dINYXEjkGlYg=; b=PkOJhDElmf58xCF/79lWBW7DCO
 PkFqLCb5uC9DQFlNb1j9BNAqtxlQhX2S0mkL1evVzh2zJbcxMnhfEKnVUegSA1iXqqoi8r8tftNZN
 AejYPX4xRLlX5tQaLrtvitYCx+KMpDBkUu9ftLkIZV7p1AU3SkF7YrxJ2K4gdb4P9GwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EGKXdYO0ZI4OV681j07jTPGiH/qrMo7dINYXEjkGlYg=; b=i
 95Y/zXrYbukVTFk6UA0eO56ejm3afzeTz/LKKEc1O0Rn9HYBArvYFGjefAE5xV1kYpYO00XGHbFrI
 UfvQ834MEDsvkPBJiDyYYYD2EIda/Abv53bscrDxahAm5llZ5teM47bZdq46ljKNyWfkze3PIvaov
 N3IB/Y7cx/4NDjbQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odpzn-0004Eo-1S for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:38:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BF5C7B82344;
 Thu, 29 Sep 2022 09:38:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB4B9C433C1;
 Thu, 29 Sep 2022 09:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664444283;
 bh=1jp7G5YeIFk6R583OyEfuXLFd7weNod/Eu3ajmd7lSk=;
 h=From:To:Cc:Subject:Date:From;
 b=kyi+BVuW5x/JOoECf5YJHsEZJ7qBns5AtF6uH9rAqothMkbNZsPDc09u7ChqZtvZF
 wZKb0LwJhtgHZq4CwQG7IiuZ4f9B22Cj6pQE5HwQ7RCbkBZxp+xqsUMADC0I575Xv6
 q/gL9og0Ez3ILyFgFGWndfsxaZZ/Mo/MReUxOWVZTwe6909TAFy0gQILAmJEZA0Vcn
 Ci8S1/Y2jAw0brT9azN9PFZzvuoZ7DmmdBF2uwGu5tw1JKRQVt17Fln5KfmbZ279eW
 gv8+PCpzwf3pNiqfH9x/0BVvhRCZh6OqCYz04sYodSxv7SzjXges8z0bNbkrFZj9xQ
 2qKblppR/QvHA==
From: Leon Romanovsky <leon@kernel.org>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 29 Sep 2022 12:37:54 +0300
Message-Id: <cover.1664442592.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is followup to our discussion
 https://lore.kernel.org/all/YzVIGuISTnIFSIs9@codewreck.org/
 with fixes to two syzkaller bugs in 9p. It is based on linux-next. Leon
 Romanovsky
 (2): Revert "9p: p9_client_create: use p9_client_destroy on failure" 9p:
 destroy client in symmetric order 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odpzn-0004Eo-1S
Subject: [V9fs-developer] [PATCH 0/2] Fix to latest syzkaller bugs in 9p area
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
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is followup to our discussion https://lore.kernel.org/all/YzVIGuISTnIFSIs9@codewreck.org/
with fixes to two syzkaller bugs in 9p.

It is based on linux-next.

Leon Romanovsky (2):
  Revert "9p: p9_client_create: use p9_client_destroy on failure"
  9p: destroy client in symmetric order

 net/9p/client.c | 47 +++++++++++++++++++++--------------------------
 1 file changed, 21 insertions(+), 26 deletions(-)

-- 
2.37.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
