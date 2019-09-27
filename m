Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67124C077E
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Sep 2019 16:27:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iDrDt-0001PZ-VD; Fri, 27 Sep 2019 14:27:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1iDrDs-0001PQ-31
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Sep 2019 14:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p1/L9Oz8ynFPYjysWMPYsXBG8y03Y8sjgZ70Dh0kPjU=; b=i8MFrUt4BjkrnaqX1B2A0pxwuh
 9XCq5hYat7xmLQCemvAccjF1zzg6z0q0nSjNiNXRgDCL/jJELsXygSxbx2taK+CJL6c4Wy7HpV97u
 flkUDP8RApdkQyNo5YttKe727MZl9iu/6m87ATGDFcOPM85R0JOFVuQ2XxgxVxUQt2IA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p1/L9Oz8ynFPYjysWMPYsXBG8y03Y8sjgZ70Dh0kPjU=; b=Q
 WWe2WlB/flthxvXeNBjtyidGHGlSOWne7dWFd3BXC3OAQyHavz45JQEkObAhVPUYjAN1lOaMc7Jx/
 jjwYaY0zJEkaCQvby+KPZWxlzsx8/4VTr+sf62zrXEGsiNvD2CQknVQZuuBpfTmQLHYn+0xl3JNXV
 /yPKv3Pvy2l9ijpU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iDrDp-008NhK-Ly
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Sep 2019 14:27:51 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 06DF6C009; Fri, 27 Sep 2019 16:27:41 +0200 (CEST)
Date: Fri, 27 Sep 2019 16:27:26 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190927142725.GA8169@nautica>
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iDrDp-008NhK-Ly
Subject: [V9fs-developer] [GIT PULL] 9p updates for 5.4
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Some of the usual small fixes and cleanup.

I didn't get the target version wrong this time! :)


The following changes since commit 089cf7f6ecb266b6a4164919a2e69bd2f938374a:

  Linux 5.3-rc7 (2019-09-02 09:57:40 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.4

for you to fetch changes up to aafee43b72863f1f70aeaf1332d049916e8df239:

  9p/vfs_super.c: Remove unused parameter data in v9fs_fill_super
  (2019-09-03 11:10:13 +0000)

----------------------------------------------------------------
9p pull request for inclusion in 5.4

Small fixes all around:
 - avoid overlayfs copy-up for PRIVATE mmaps
 - KUMSAN uninitialized warning for transport error
 - one syzbot memory leak fix in 9p cache
 - internal API cleanup for v9fs_fill_super

----------------------------------------------------------------
Bharath Vedartham (2):
      9p/cache.c: Fix memory leak in v9fs_cache_session_get_cookie
      9p/vfs_super.c: Remove unused parameter data in v9fs_fill_super

Chengguang Xu (1):
      9p: avoid attaching writeback_fid on mmap with type PRIVATE

Lu Shuaibing (1):
      9p: Transport error uninitialized

 fs/9p/cache.c     | 2 ++
 fs/9p/vfs_file.c  | 3 +++
 fs/9p/vfs_super.c | 4 ++--
 net/9p/client.c   | 1 +
 4 files changed, 8 insertions(+), 2 deletions(-)

Cheers,
-- 
Dominique | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
