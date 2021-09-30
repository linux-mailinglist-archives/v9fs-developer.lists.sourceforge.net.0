Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBD741E525
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 01:55:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mW5tm-0005hE-8X; Thu, 30 Sep 2021 23:55:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sohaib.amhmd@gmail.com>) id 1mW5tk-0005h7-Em
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 23:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5BrSuGYueWf6EfrUyyUD6C+VJ4gRKADB8g+IHAwfFGg=; b=ku/oP+aj9sEAX9ZM0VCRCc/JjQ
 hrdVXt69O4P38aAtPsDvURZ3G4DcI3uV60CxdU7fEQn6Tud0K4iAafGGrj6DV2YnaNfTWcfRZfEt8
 wPZptziW9QIWwaPz6G/gmTwitcLR9qU7wNihQLA5aMU5Ti+dnReUOzxUypPIczXtTkXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5BrSuGYueWf6EfrUyyUD6C+VJ4gRKADB8g+IHAwfFGg=; b=d
 RCnQfrbPMOBcOXCb3jNLDfWal+il/BJ1bHK2d17fGRPtmxC2Pb1EN/TUjPA8imgEwa/yMsHzpjuNQ
 S8pvMgpG5mow3yFDMlXbops2asc9/W0bsBiBFVPQIjc3UF5Dbh4Oo2QjAbZqRXvhBH560VZt7N0Ll
 PMwsfW1lA3biLkCk=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mW5ti-0001ee-Oc
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 23:55:32 +0000
Received: by mail-wr1-f42.google.com with SMTP id v25so2060764wra.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Sep 2021 16:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5BrSuGYueWf6EfrUyyUD6C+VJ4gRKADB8g+IHAwfFGg=;
 b=aqKXppeMugpli8ejwnQ6/HAAv7/Tgkab/3kWMDC9hqyyJjXEaBiA4Adrc4wtKh87CM
 5DWcVYWDBPFL2XJILqSSjLHecQIuyYhgaM8ESb+WTyGQtUmcZH3pXL6pmGqLzzQwypSz
 5XBZj3VwRwHpPjEVfOpV1z2nEcrFMogiBk9mdYvyFVphRvZWIfnX6uxQJeOSl6/CqQb3
 ZguF37TN6VstUBDIsgi4tocYqpnyA8gDa5gC3ymwHuxXVHE8kTxGITaSkFdMmhJRMf+8
 1aAdyGdnWhJ2jsyzDwTGUUfV1B+w9NKcvR7pzMPmVl8rT3WIUGbuJPhoxfD+7QwW5VQ8
 ngsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5BrSuGYueWf6EfrUyyUD6C+VJ4gRKADB8g+IHAwfFGg=;
 b=M0uqRuJfS1KHStzp9aqhO8CdZ5oBnac++72r9SluiqSPREerSyz72rMDl9WjlHtS7A
 1l0mrQYPdAijyNtsL2BQ/8VLKGoudZj9nVgcUbrWm+W5/sqhI0yPYA9hRy8s1cwtmVhA
 qmr0YQOSzSGyufzkGZ4+D4lC9ZbRnfRbwMfv4vigv2OZkpgmfMsL+2F1B/CHfoKjNZKU
 ZXUiCC1AmQTWqwIKCwCUbyIsRnDt1LlHap9fu/JTihD3jm8V01odzoUKOSf65qhoA9hr
 VDCjXfHjNkyHoUr6798vLSYtkan5GwAGIw5kpGICEPY2iTJd+VTMWPVEIO6ceLuE7Ct9
 7/Yw==
X-Gm-Message-State: AOAM530LF/759KhdMyb7j0q7uBK7awL1dr6tCuGzpaQVxC5OsUN61Agf
 zAr3Z1UB54ivMr0WOy38+Sk=
X-Google-Smtp-Source: ABdhPJw01j7WcnhLmp3/4huTZDs72+/5mFipVznMuysmGkpjEJl521nXmUYbcUjQry4flDJzDMq1qw==
X-Received: by 2002:adf:a1d4:: with SMTP id v20mr5352257wrv.168.1633046124310; 
 Thu, 30 Sep 2021 16:55:24 -0700 (PDT)
Received: from localhost.localdomain ([197.49.49.194])
 by smtp.googlemail.com with ESMTPSA id r2sm4479114wmq.28.2021.09.30.16.55.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 16:55:24 -0700 (PDT)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: 
Date: Fri,  1 Oct 2021 01:55:03 +0200
Message-Id: <20210930235503.126033-1-sohaib.amhmd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Warnings found by checkpatch.pl Signed-off-by: Sohaib Mohamed
 --- fs/9p/vfs_dir.c | 4 +++- 1 file changed, 3 insertions(+), 1 deletion(-)
 diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c index
 b6a5a0be444d..61b29bad6d9a
 100644 --- a/fs/9p/vfs_dir.c +++ b/fs/9p/vfs_dir.c @@ -71,6 +71,7 @@ static
 inline int dt_type(struct p9_wstat *mistat) [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sohaib.amhmd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.42 listed in wl.mailspike.net]
X-Headers-End: 1mW5ti-0001ee-Oc
Subject: [V9fs-developer] [PATCH] 9p: fix minor indentation and codestyle
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Warnings found by checkpatch.pl

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 fs/9p/vfs_dir.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index b6a5a0be444d..61b29bad6d9a 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -71,6 +71,7 @@ static inline int dt_type(struct p9_wstat *mistat)
 static struct p9_rdir *v9fs_alloc_rdir_buf(struct file *filp, int buflen)
 {
 	struct p9_fid *fid = filp->private_data;
+
 	if (!fid->rdir)
 		fid->rdir = kzalloc(sizeof(struct p9_rdir) + buflen, GFP_KERNEL);
 	return fid->rdir;
@@ -108,6 +109,7 @@ static int v9fs_dir_readdir(struct file *file, struct dir_context *ctx)
 		if (rdir->tail == rdir->head) {
 			struct iov_iter to;
 			int n;
+
 			iov_iter_kvec(&to, READ, &kvec, 1, buflen);
 			n = p9_client_read(file->private_data, ctx->pos, &to,
 					   &err);
@@ -233,5 +235,5 @@ const struct file_operations v9fs_dir_operations_dotl = {
 	.iterate_shared = v9fs_dir_readdir_dotl,
 	.open = v9fs_file_open,
 	.release = v9fs_dir_release,
-        .fsync = v9fs_file_fsync_dotl,
+	.fsync = v9fs_file_fsync_dotl,
 };
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
