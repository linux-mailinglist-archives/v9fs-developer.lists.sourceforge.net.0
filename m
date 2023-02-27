Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D616A390F
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Feb 2023 03:53:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pWTdn-0002LF-Vl;
	Mon, 27 Feb 2023 02:53:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pWTdm-0002L9-N2
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 02:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iSVXa9L7exrNB3Hl9alx2sV/+yExKgv5adL6+54Js1w=; b=nSzAktw4Xl512+5DappTjT1ctH
 YA2Iz2tVceHnzpNQP8AcDCrbJFiq9NilTuZ8GFi87Hl+7kCKd7YQzyx4qlOqkq7+IPcLmb2FkRyeI
 +PuLnrV323g0ojN1YObDysTxm22IictsgKTs1YQHrGjP+0TOtfOHly0h/+27Y8AxyMd4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iSVXa9L7exrNB3Hl9alx2sV/+yExKgv5adL6+54Js1w=; b=ek2BKex2y2WpozYK7Hk5qMuwpE
 74ZwVR+LSh75/4owqIyGoiVMWpOynUngLsi23v83XOTyJNyq7xJvYmg/mbuFFO/KboTfH5vu5axyy
 7MUDYqZOdZvbmxLXjnhdakOU8YSlM2LE6lRYqVXPDfriJlJj/SZ+PMwEPZUKPBjMng8w=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWTdl-0002Zj-84 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 02:53:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B5703B80B1E;
 Mon, 27 Feb 2023 02:53:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DA18C4339B;
 Mon, 27 Feb 2023 02:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1677466397;
 bh=N6ubcD/dFtgXOAPcau3LnF8+6AA0rIbK/jLGuc5X2sU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LaG5G6F2fXMMMgRcI9J0GHjh//KMsw0ThjpS17oq/9sRrfwKxfjVptX18TM6uL9tQ
 Bkgl+xKxyw1fD0kzFNE6TkZI3sl6bJFf5hDj8lyXy9eLe38v8LrppRGEjWVNlh5D4e
 M82zS6mLoZMyMb8T+w38Sqv1d80rQljJl4zLqCbUWw/R+tIpJHz3xkNtgwQPMaxaN0
 Q3jed/4RyQfbkYvihDkplxb6+d9tiKuJFM4LmWWW9UNauA7zZ9WK2GSmK/5PkEgpPI
 SWmfe58Rt0BojGDziNDIocE+CbIItryhUO1/40q08wfp90XCU1lU3l5NNrnB735nSq
 2HlVlqEf61/dg==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: asmadeus@codewreck.org
Date: Mon, 27 Feb 2023 02:53:10 +0000
Message-Id: <20230227025310.24793-1-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <Y/CGvTCyhjFITkFs@codewreck.org>
References: <Y/CGvTCyhjFITkFs@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -3.4 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add some additional debug flags to assist with debugging
 cache
 changes. Also add some additional open modes so we can track cache state
 in fids more directly. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
 --- include/net/9p/9p.h | 6 ++++++ net/9p/client.c | 8 ++++---- 2 files
 changed, 10 insertions(+), 4 deletions(-) 
 Content analysis details:   (-3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pWTdl-0002Zj-84
Subject: [V9fs-developer] [PATCH v5 7/11] 9p: Add additional debug flags and
 open modes
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ericvh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add some additional debug flags to assist with debugging
cache changes.  Also add some additional open modes so we
can track cache state in fids more directly.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 include/net/9p/9p.h | 6 ++++++
 net/9p/client.c     | 8 ++++----
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 429adf6be29c..60cad0d200a4 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -42,6 +42,8 @@ enum p9_debug_flags {
 	P9_DEBUG_PKT =		(1<<10),
 	P9_DEBUG_FSC =		(1<<11),
 	P9_DEBUG_VPKT =		(1<<12),
+	P9_DEBUG_CACHE =	(1<<13),
+	P9_DEBUG_MMAP =		(1<<14),
 };
 
 #ifdef CONFIG_NET_9P_DEBUG
@@ -213,6 +215,10 @@ enum p9_open_mode_t {
 	P9_ORCLOSE = 0x40,
 	P9_OAPPEND = 0x80,
 	P9_OEXCL = 0x1000,
+	P9L_MODE_MASK = 0x1FFF, /* don't send anything under this to server */
+	P9L_DIRECT = 0x2000, /* cache disabled */
+	P9L_NOWRITECACHE = 0x4000, /* no write caching  */
+	P9L_LOOSE = 0x8000, /* loose cache */
 };
 
 /**
diff --git a/net/9p/client.c b/net/9p/client.c
index 2adcb5e7b0e2..a3340268ec8d 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1230,9 +1230,9 @@ int p9_client_open(struct p9_fid *fid, int mode)
 		return -EINVAL;
 
 	if (p9_is_proto_dotl(clnt))
-		req = p9_client_rpc(clnt, P9_TLOPEN, "dd", fid->fid, mode);
+		req = p9_client_rpc(clnt, P9_TLOPEN, "dd", fid->fid, mode & P9L_MODE_MASK);
 	else
-		req = p9_client_rpc(clnt, P9_TOPEN, "db", fid->fid, mode);
+		req = p9_client_rpc(clnt, P9_TOPEN, "db", fid->fid, mode & P9L_MODE_MASK);
 	if (IS_ERR(req)) {
 		err = PTR_ERR(req);
 		goto error;
@@ -1277,7 +1277,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
 		return -EINVAL;
 
 	req = p9_client_rpc(clnt, P9_TLCREATE, "dsddg", ofid->fid, name, flags,
-			    mode, gid);
+			    mode & P9L_MODE_MASK, gid);
 	if (IS_ERR(req)) {
 		err = PTR_ERR(req);
 		goto error;
@@ -1321,7 +1321,7 @@ int p9_client_fcreate(struct p9_fid *fid, const char *name, u32 perm, int mode,
 		return -EINVAL;
 
 	req = p9_client_rpc(clnt, P9_TCREATE, "dsdb?s", fid->fid, name, perm,
-			    mode, extension);
+			    mode & P9L_MODE_MASK, extension);
 	if (IS_ERR(req)) {
 		err = PTR_ERR(req);
 		goto error;
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
