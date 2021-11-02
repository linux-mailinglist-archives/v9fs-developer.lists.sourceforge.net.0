Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50761443013
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 15:16:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhuaJ-0006Qw-0l; Tue, 02 Nov 2021 14:16:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dominique.martinet@codewreck.org>)
 id 1mhuaI-0006Qm-EF
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 14:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eNkC3i76BHgMBfrSRssAFvVJTxkYznWrmGCv+l1LvbE=; b=hmdOoc8OqAo3SIpGjPdkbEWwyG
 OdLQu6m5W/GO3uL4/8kvqSj84QjnIxl6Gn/4yBROSdpsRxX0GveLObtC8MVWIKjUW8sxxS4pNoAk+
 64gqqq/7quaXZXnIKfy3zV5gKP0K6+IFY3M7lqfWtMXkDiNEoD92yJafchlXbV3Vtdqw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eNkC3i76BHgMBfrSRssAFvVJTxkYznWrmGCv+l1LvbE=; b=DLikJVptMHz69Vw802lCkuOLfb
 PAeh/36ijy6DP5lSuewA0l4MOScy0bUVFAcf+YxZA1tL2BQQJ/aN1526pLfz+H6+5XMEtilMSGJR2
 bwubQzADvxiVu7IUL6OnJs1BdKqUiyqcCI6IyRDoDBsVwiMpJBneMREVfa+Q6A9xcXKY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhuaG-00EysN-44
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 14:16:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 07171C01E; Tue,  2 Nov 2021 15:08:33 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 433CEC009;
 Tue,  2 Nov 2021 15:08:28 +0100 (CET)
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4a9f868c;
 Tue, 2 Nov 2021 13:46:12 +0000 (UTC)
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue,  2 Nov 2021 22:46:08 +0900
Message-Id: <20211102134608.1588018-5-dominique.martinet@atmark-techno.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211102134608.1588018-1-dominique.martinet@atmark-techno.com>
References: <20211102134608.1588018-1-dominique.martinet@atmark-techno.com>
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Dominique Martinet <asmadeus@codewreck.org> This is
 also a checkpatch warning fix but this one might have implications so keeping
 it separate Signed-off-by: Dominique Martinet <asmadeus@codewreck.org> ---
 fs/9p/vfs_inode.c | 13 +++++++++---- 1 file changed, 9 insertions(+),
 4 deletions(-)
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mhuaG-00EysN-44
Subject: [V9fs-developer] [PATCH 4/4] 9p p9mode2perm: remove useless strlcpy
 and check sscanf return code
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

This is also a checkpatch warning fix but this one might have implications
so keeping it separate

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/vfs_inode.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 139dfee23b98..328c338ff304 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -109,7 +109,7 @@ static int p9mode2perm(struct v9fs_session_info *v9ses,
 static umode_t p9mode2unixmode(struct v9fs_session_info *v9ses,
 			       struct p9_wstat *stat, dev_t *rdev)
 {
-	int res;
+	int res, r;
 	u32 mode = stat->mode;
 
 	*rdev = 0;
@@ -127,11 +127,16 @@ static umode_t p9mode2unixmode(struct v9fs_session_info *v9ses,
 		res |= S_IFIFO;
 	else if ((mode & P9_DMDEVICE) && (v9fs_proto_dotu(v9ses))
 		 && (v9ses->nodev == 0)) {
-		char type = 0, ext[32];
+		char type = 0;
 		int major = -1, minor = -1;
 
-		strlcpy(ext, stat->extension, sizeof(ext));
-		sscanf(ext, "%c %i %i", &type, &major, &minor);
+		r = sscanf(stat->extension, "%c %i %i", &type, &major, &minor);
+		if (r != 3) {
+			p9_debug(P9_DEBUG_ERROR,
+				 "invalid device string, umode will be bogus: %s\n",
+				 stat->extension);
+			return res;
+		}
 		switch (type) {
 		case 'c':
 			res |= S_IFCHR;
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
