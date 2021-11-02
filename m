Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2416E443014
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 15:16:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhuaL-0007hM-Ki; Tue, 02 Nov 2021 14:16:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dominique.martinet@codewreck.org>)
 id 1mhuaH-0007hE-A5
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 14:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OXmhSK6YwjHI18cQ+mPVDWYRcDiydqbyIVRqWbX2hjA=; b=SNIMHgdwfYuq7m8lLtldEQtMEp
 gB9v9YNYFXjycDQNvGh2KnBwjHppnd8KWmVbZdTWKbgGOzluvVlYGL2akt+QxenrjkWwTxuQeT4Hz
 LpNrZkVL1ax0VH7YtcsgoTgWnjSjkKESXO7CAsB7EFjxW2o5wEXsCSaT/MLq1iHX5q14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OXmhSK6YwjHI18cQ+mPVDWYRcDiydqbyIVRqWbX2hjA=; b=Uz8kjuSGMX+hW9gL/xaXeegZb8
 kdTRBQcT+015L0qFS8l244+70gu7RIdxQq2iLH9RpFgys5e4UB3mRMSXiN74NQ4zNKWDUgYdhuw6g
 csHDj1Y9PO2WSYngfymv+EPgz9y2gbt/Um6+J8P/FFMfYkbbvS2aN4d8TXnRcur42RlI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhuaG-00EysO-41
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 14:16:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E6FCEC01B; Tue,  2 Nov 2021 15:08:28 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E5AFFC009;
 Tue,  2 Nov 2021 15:08:25 +0100 (CET)
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 27490f23;
 Tue, 2 Nov 2021 13:46:12 +0000 (UTC)
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue,  2 Nov 2021 22:46:07 +0900
Message-Id: <20211102134608.1588018-4-dominique.martinet@atmark-techno.com>
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
 also a checkpatch change, but this one might have more implications so keeping
 this separate Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
 --- fs/9p/v9fs.c | 13 +++++++------ 1 file changed, 7 insertions(+),
 6 deletions(-)
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mhuaG-00EysO-41
Subject: [V9fs-developer] [PATCH 3/4] 9p v9fs_parse_options: replace
 simple_strtoul with kstrtouint
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

This is also a checkpatch change, but this one might have more implications
so keeping this separate

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/v9fs.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index d92e5fdae111..e32dd5f7721b 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -164,7 +164,7 @@ static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
 	substring_t args[MAX_OPT_ARGS];
 	char *p;
 	int option = 0;
-	char *s, *e;
+	char *s;
 	int ret = 0;
 
 	/* setup defaults */
@@ -321,12 +321,13 @@ static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
 				v9ses->flags |= V9FS_ACCESS_CLIENT;
 			} else {
 				uid_t uid;
+
 				v9ses->flags |= V9FS_ACCESS_SINGLE;
-				uid = simple_strtoul(s, &e, 10);
-				if (*e != '\0') {
-					ret = -EINVAL;
-					pr_info("Unknown access argument %s\n",
-						s);
+				r = kstrtouint(s, 10, &uid);
+				if (r) {
+					ret = r;
+					pr_info("Unknown access argument %s: %d\n",
+						s, r);
 					kfree(s);
 					continue;
 				}
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
