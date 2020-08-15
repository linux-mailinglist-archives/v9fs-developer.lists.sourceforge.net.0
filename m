Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 706852450B3
	for <lists+v9fs-developer@lfdr.de>; Sat, 15 Aug 2020 07:52:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k6p7U-00007B-Cy; Sat, 15 Aug 2020 05:52:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1k6p7T-00006u-BT
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Aug 2020 05:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7z+kdhuuxUNCnx1Fu3M+xqrav5SQcAWVEnsUeCCILCQ=; b=SJRVwgI+Dn0L6HU8zi0thqIgA4
 t5pBVavPZsPDAwCwvHLxl+NqSk9gfa7h+4UzZbBYhVuPunhxXCZH7aYwuIpIA9WVbk7oETPcbZKmn
 Qkj88LU8VOpMyGM2FHzP+p/KVJbRLKcRXrFROpIc9DX+pwKb01y3BPbV5WZOfWXhQuaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7z+kdhuuxUNCnx1Fu3M+xqrav5SQcAWVEnsUeCCILCQ=; b=J
 S4SNY0uR7z7q1nufpEKlYXljErN4nQA7y1JOuI2Bb08uaJz9U02D2pblsCbgXlsDzMHjjxxtm0RFd
 PV7giUjBJWgLCgpJ7Q6+BMuTjWaszmmS/Q2nypaqlXszKmH73/j9QRdzKo7JEn7RMu7Bz9hw+LVoM
 Oj1w2LitK7soZrdY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k6p7R-00C5B7-6w
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Aug 2020 05:52:43 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id B67A3C009; Sat, 15 Aug 2020 07:52:34 +0200 (CEST)
Date: Sat, 15 Aug 2020 07:52:19 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200815055219.GA20922@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k6p7R-00C5B7-6w
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.9-rc1
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

the usual small stuff.

Thanks!


The following changes since commit 74d6a5d5662975aed7f25952f62efbb6f6dadd29:

  9p/trans_fd: Fix concurrency del of req_list in p9_fd_cancelled/p9_read_work (2020-07-19 14:58:47 +0200)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.9-rc1

for you to fetch changes up to 2ed0b7578170c3bab10cde09d4440897b305e40c:

  9p: Remove unneeded cast from memory allocation (2020-07-31 07:28:25 +0200)

----------------------------------------------------------------
9p pull request for inclusion in 5.9

- some code cleanup
- a couple of static analysis fixes
- setattr: try to pick a fid associated with the file rather than the
dentry, which might sometimes matter

----------------------------------------------------------------
Alexander Kapshuk (1):
      net/9p: Fix sparse endian warning in trans_fd.c

Jianyong Wu (2):
      9p: retrieve fid from file when file instance exist.
      9p: remove unused code in 9p

Li Heng (1):
      9p: Remove unneeded cast from memory allocation

Zheng Bin (1):
      9p: Fix memory leak in v9fs_mount

 fs/9p/v9fs.c           |  5 ++---
 fs/9p/vfs_inode.c      | 65 ++++++++---------------------------------------------------------
 fs/9p/vfs_inode_dotl.c |  9 +++++++--
 net/9p/trans_fd.c      |  2 +-
 4 files changed, 18 insertions(+), 63 deletions(-)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
