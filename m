Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB5BAB965
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Sep 2019 15:38:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i6ERT-0000P4-IH; Fri, 06 Sep 2019 13:38:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <colin.king@canonical.com>) id 1i6ERS-0000Ow-P2
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Sep 2019 13:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sbLcBrROmPrOFCvrSfUG6iO92+BsnIizZdBn0J6rmy8=; b=dMrxFqgG0Sd4QP7q8wVyinOd2n
 l0xmdYI85y56gXnm4qVVYW1NfU9BUT4bom8TJQ/nDarSlxaHxuheUZ75RGdKdUS6SwXNk9P9IsudN
 RpAnc4SxdAgwyw8rjapZpbcH4xIsH+u9FMIaH4XMtlsyGlFYatyWU5obDGyrs2he6rFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sbLcBrROmPrOFCvrSfUG6iO92+BsnIizZdBn0J6rmy8=; b=U
 2nMtKgS2pos6+hTXnImtT+PJ/JO/dX4erI1lRC241kWe5RSqhtXP2VpvQvPV/SD4Gwb2kszL+6qXN
 w2ImxAefrQJ+Zl6pMbT0vlPc7uYitr/tW/nZpmMkXynddAn/F8HFJULjvayumpG2yGxcorqi830W7
 jJWdOcUUX2F/+mfQ=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.90_1) id 1i6ERQ-00CaWs-LV
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Sep 2019 13:38:22 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i6ERI-000166-RF; Fri, 06 Sep 2019 13:38:12 +0000
From: Colin King <colin.king@canonical.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 v9fs-developer@lists.sourceforge.net
Date: Fri,  6 Sep 2019 14:38:12 +0100
Message-Id: <20190906133812.17196-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i6ERQ-00CaWs-LV
Subject: [V9fs-developer] [PATCH] 9p: make two arrays static const,
 makes object smaller
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Colin Ian King <colin.king@canonical.com>

Don't populate the arrays on the stack but instead make them
static const. Makes the object code smaller by 386 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
  17443	   2076	      0	  19519	   4c3f	fs/9p/vfs_inode_dotl.o

After:
   text	   data	    bss	    dec	    hex	filename
  16897	   2236	      0	  19133	   4abd	fs/9p/vfs_inode_dotl.o

(gcc version 9.2.1, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 fs/9p/vfs_inode_dotl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 60328b21c5fb..961d8d0fa905 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -167,7 +167,7 @@ static int v9fs_mapped_dotl_flags(int flags)
 {
 	int i;
 	int rflags = 0;
-	struct dotl_openflag_map dotl_oflag_map[] = {
+	static const struct dotl_openflag_map dotl_oflag_map[] = {
 		{ O_CREAT,	P9_DOTL_CREATE },
 		{ O_EXCL,	P9_DOTL_EXCL },
 		{ O_NOCTTY,	P9_DOTL_NOCTTY },
@@ -512,7 +512,7 @@ static int v9fs_mapped_iattr_valid(int iattr_valid)
 {
 	int i;
 	int p9_iattr_valid = 0;
-	struct dotl_iattr_map dotl_iattr_map[] = {
+	static const struct dotl_iattr_map dotl_iattr_map[] = {
 		{ ATTR_MODE,		P9_ATTR_MODE },
 		{ ATTR_UID,		P9_ATTR_UID },
 		{ ATTR_GID,		P9_ATTR_GID },
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
