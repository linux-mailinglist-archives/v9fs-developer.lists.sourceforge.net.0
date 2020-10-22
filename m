Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11260295E0C
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Oct 2020 14:09:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kVZOx-0007ld-Sb; Thu, 22 Oct 2020 12:09:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kVZOw-0007lQ-10
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Oct 2020 12:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o8TCo1+HtfaQddD6ZHrH81FoLcr+VAoWp6ZaT+lEApk=; b=FVYsD+/1X37yCEP3kNk7LmpdoO
 XMWMy7YQCffWff90L91xI0BWTxeLEITcoS0elcMIImvPNXi2XHGQ4jTi/wmXlQugMxPCanRkc9ZDT
 Wxgi83oMFFWWs2n37VkzBdnkMikBFvWEzyZNJVYYTBWPoNWbB7ZPRXdvkDpQtg/5xoQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=o8TCo1+HtfaQddD6ZHrH81FoLcr+VAoWp6ZaT+lEApk=; b=N
 ShldrpXQStfISZngh/bP6Gp7w61P3Q7JI7Nq/HFQa1EBmNGwFDWW2EeyvgFYOrmSFegEwNzA22ZM2
 NJawRryey0MnmosBUmY+MtjHAXa9uhmV41MVyeRUm/8fkf87auCk1u9a2PvtQZ0xrAlyYGUsL6fbn
 B1M2Xk7ZP0rKuRZw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVZOq-002YdY-On
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Oct 2020 12:09:01 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id EEFABC009; Thu, 22 Oct 2020 14:08:41 +0200 (CEST)
Date: Thu, 22 Oct 2020 14:08:26 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20201022120826.GA28295@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kVZOq-002YdY-On
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc1
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
Cc: linux-fsdevel@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Hi Linus,

another harmless cycle.
(sorry latest commit's message isn't great, I was half expecting a v2
but it didn't come and I remembered too late/didn't want to reword it
myself; and it's still worth taking as is)

Thanks,


The following changes since commit 549738f15da0e5a00275977623be199fbbf7df50:

  Linux 5.9-rc8 (2020-10-04 16:04:34 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.10-rc1

for you to fetch changes up to 7ca1db21ef8e0e6725b4d25deed1ca196f7efb28:

  net: 9p: initialize sun_server.sun_path to have addr's value only when addr is valid (2020-10-12 10:05:47 +0200)

----------------------------------------------------------------
9p pull request for inclusion in 5.10

A couple of small fixes (loff_t overflow on 32bit, syzbot uninitialized
variable warning) and code cleanup (xen)

----------------------------------------------------------------
Anant Thazhemadam (1):
      net: 9p: initialize sun_server.sun_path to have addr's value only when addr is valid

Matthew Wilcox (Oracle) (1):
      9P: Cast to loff_t before multiplying

Ye Bin (1):
      9p/xen: Fix format argument warning

 fs/9p/vfs_file.c   | 4 ++--
 net/9p/trans_fd.c  | 2 +-
 net/9p/trans_xen.c | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
