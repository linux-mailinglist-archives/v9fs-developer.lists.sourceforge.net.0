Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D9927598E
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Sep 2020 16:12:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kL5VJ-0004XM-E2; Wed, 23 Sep 2020 14:12:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1kL5VI-0004X8-Lj
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aSxnKJMq7ZvzdQxbD1BksuZfe9Bc1twFNuFFnsAYGRg=; b=HrfaLJnylV0zFfwksquOllrV40
 +tznGuqCc5hMKDZ/GD+Q/3LgxCm6pS6zgcnZ5wcQBLqZkNV748vBlbvvsMQD6wYjp7/+s5/GkvURB
 qkHnpCvnHixT/3q1Ize3Z4E3l0vAKCfBeBOw4Fmy725eFo6FxEig/2PER9pDaTZDnW6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aSxnKJMq7ZvzdQxbD1BksuZfe9Bc1twFNuFFnsAYGRg=; b=DqhA9o0ocYu9tQesnw9WZaek+i
 SC9XLD4nMfogy5zE3OiHgqKqr5kqcq0GXueXfOd7Uo1v0NvBZZObamk44JeRh63T8uuKnbE9HhBup
 EwgKCir4roz+XTTWkmAHGLghWyi7K3TPlo7s8ciqERy2TRBhrDNNdAstF7eSDx6fYSMc=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kL5V7-004fA2-4F
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Sep 2020 14:12:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D00A113E;
 Wed, 23 Sep 2020 07:11:59 -0700 (PDT)
Received: from entos-thunderx2-desktop.shanghai.arm.com
 (entos-thunderx2-desktop.shanghai.arm.com [10.169.212.215])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 927EA3F73B;
 Wed, 23 Sep 2020 07:11:56 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 qemu_oss@crudebyte.com
Date: Wed, 23 Sep 2020 22:11:42 +0800
Message-Id: <20200923141146.90046-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kL5V7-004fA2-4F
Subject: [V9fs-developer] [PATCH RFC v2 0/4] 9p: fix open-unlink-f*syscall
 bug.
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
Cc: v9fs-developer@lists.sourceforge.net, jianyong.wu@arm.com,
 justin.he@arm.com, groug@kaod.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

open-unlink-f*syscall bug is well-known in 9p. We try to fix the bug
in this patch set.
I take Eric's and Greg's patches which constiute the 1/4 - 3/4 of this patch
set as the main frame of the solution. In patch 4/4, I fix the fid race issue
exists in Greg's patch.

change log:
v1 to v2:
        (1) in patch 4/4: do fid refcounter down in the clunk helper.
        (2) int patch 4/4: remove the enum value denoting from which of the
inode or dentry fids are allcated.

Eric Van Hensbergen (1):
  fs/9p: fix create-unlink-getattr idiom

Greg Kurz (1):
  fs/9p: search open fids first

Jianyong Wu (2):
  fs/9p: track open fids
  9p: fix race issue in fid contention.

 fs/9p/fid.c             | 69 ++++++++++++++++++++++++++++++++++++++---
 fs/9p/fid.h             | 11 ++++++-
 fs/9p/vfs_dentry.c      |  2 ++
 fs/9p/vfs_dir.c         |  6 +++-
 fs/9p/vfs_file.c        |  1 +
 fs/9p/vfs_inode.c       | 47 ++++++++++++++++++++++------
 fs/9p/vfs_inode_dotl.c  | 35 +++++++++++++++++----
 fs/9p/vfs_super.c       |  1 +
 fs/9p/xattr.c           | 16 ++++++++--
 include/net/9p/client.h |  7 +++++
 net/9p/client.c         | 14 ++++++---
 11 files changed, 179 insertions(+), 30 deletions(-)

-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
