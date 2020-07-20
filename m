Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB803225590
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jul 2020 03:46:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxKtE-0005F7-Ke; Mon, 20 Jul 2020 01:46:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jxKtB-0005Ew-Hv
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aZ9GiExZW3QkniI9rzQ6OJi5UzrpNK8QDOpkq2ajCRw=; b=Pg2IvJ6exr4Ew2wSa23GyZINno
 /KawkfiaXuSU8ELtltgLJwpiNXEkYXXa6dbdUeZdJUAzJiE6XrzBTrTAI0f32O9dtg3mJ+nUa3+cZ
 KNL8UmcsS1AfrgsTcr4Q21X38vl3GtlFnlkIZ0F9PhRaSauPP+jYoWuld2dmWDUfO3Fk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aZ9GiExZW3QkniI9rzQ6OJi5UzrpNK8QDOpkq2ajCRw=; b=lCNF4c+4eLQREtzz8RxFhBPZjn
 RiEKKJ7Q1hIjJLbOcCLGXxgBRQ/rNqHWEtOkprsK5BGLYCpbe15NTt82BHzk59BPrhAk4sXYlPbbh
 qyEWyUipBMwDsBnn+ITt/TuSvQ+S3xOnWj4j4O/yD08YchVTF2LOQz5HOGLMkP3lGhqk=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jxKtA-00CHJM-5A
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:46:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAE8F12FC;
 Sun, 19 Jul 2020 18:46:37 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.212.212])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 79D6C3F66E;
 Sun, 19 Jul 2020 18:46:34 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, hch@lst.de, dhowells@redhat.com, lucho@ionkov.net,
 asmadeus@codewreck.org
Date: Mon, 20 Jul 2020 09:46:21 +0800
Message-Id: <20200720014622.37364-2-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200720014622.37364-1-jianyong.wu@arm.com>
References: <20200720014622.37364-1-jianyong.wu@arm.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxKtA-00CHJM-5A
Subject: [V9fs-developer] [RFC PATCH 1/2] vfs: pass file down when getattr
 to avoid losing info.
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
Cc: justin.he@arm.com, wei.chen@arm.com, jianyong.wu@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Currently, getting attribute for a file represented by fd is always
by inode or path which may lead to bug for a certain network file system.
Adding file struct into struct kstat and assigning file for it in
vfs_statx_fd can avoid this issue. This change refers to struct istat.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 fs/stat.c            | 1 +
 include/linux/stat.h | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/fs/stat.c b/fs/stat.c
index 44f8ad346db4..0dee5487f6d6 100644
--- a/fs/stat.c
+++ b/fs/stat.c
@@ -147,6 +147,7 @@ int vfs_statx_fd(unsigned int fd, struct kstat *stat,
 		return -EINVAL;
 
 	f = fdget_raw(fd);
+	stat->filp = f.file;
 	if (f.file) {
 		error = vfs_getattr(&f.file->f_path, stat,
 				    request_mask, query_flags);
diff --git a/include/linux/stat.h b/include/linux/stat.h
index 56614af83d4a..4755c528d49a 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -48,6 +48,12 @@ struct kstat {
 	struct timespec64 btime;			/* File creation time */
 	u64		blocks;
 	u64		mnt_id;
+
+	/*
+	 * Not an attribute, but an auxiliary info for filesystems wanting to
+	 * implement an fstat() like method.
+	 */
+	struct file	*filp;
 };
 
 #endif
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
