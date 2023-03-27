Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC576C99DE
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Mar 2023 05:06:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgdBQ-0005F7-UJ;
	Mon, 27 Mar 2023 03:06:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pgdBQ-0005F1-Ck
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 03:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1pZkFG562xgFYvS+1VcUcJN4EnW3dvy90ZRzAF7Fz+Q=; b=Qt2hWWVT0U+41D8v1m+1qMg4J+
 olSbXpicMAGudKH+jE7TYh6eqWNluRjmsJxiCR136ItKlKFVtyi+c0OJ44QMTQKSmzyzfSmtwuy9/
 8N62bhNmfKmKWmNKOOdhcyvP3fI2wix7ZE48NObtcpsyPuxRTp7lQ19RAfcxJNxyWnKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1pZkFG562xgFYvS+1VcUcJN4EnW3dvy90ZRzAF7Fz+Q=; b=c
 fBQMwPtlsvmzf39TU6pjsW8V7U5dLugP9Zd5U0Cmy+rI5wYN5ss79iEwWVVIBoGItC5eCzDb5LMt3
 tziy+DcBG5a5MDqSjQO+bN15SSpZc9AKGsnJvFUNVVhH1Jub7UJ3KJpj8DFMZ+OrRLcIfbpcU7g2M
 hBUDuKWyu/z/MIcQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgdBO-0003Yo-QI for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 03:06:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E19E0B80D8C;
 Mon, 27 Mar 2023 03:05:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21912C433D2;
 Mon, 27 Mar 2023 03:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679886355;
 bh=Y5YgkurSEHTnuFb5rUWdtaOxzlRzLEHlxLRf+rlWEpE=;
 h=Date:From:To:Cc:Subject:From;
 b=P738GWtxdGHCmLrHqLACcemQjQ3hhSp4c1v4FQPM3ACwC6sz8aqZCj8SF8TXQD/Ph
 4D/r1b2R98NeyTJQx87cj25tZd2PRRyxsfhlexm1CCwhRvl7nu2/VznA2NNFSDukQX
 QP54idMONKsboYt5WLMsFcA7WXfedufNKQ7gbUfhvx2Dhu8BdE1h9ki/+JefbahIaq
 uWAttAbemwcz6sD9QXsuOeSHuJgnjbSQZnfz86T8vUthvWsBbKg4wl5f7mms8Innmo
 4qK3jdmkcCcePBQYJ5i7l4SeYKxGq0use9z4GrN5lY6kFi5aou9hjg6o0PkN+aW9BK
 5tQl/AjmFx+rA==
Date: Mon, 27 Mar 2023 03:05:52 +0000
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <ZCEIEKC0s/MFReT0@7e9e31583646>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Need to update the documentation for new mount flags and
 cache
 modes. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org> ---
 Documentation/filesystems/9p.rst
 | 29 ++++++++++++++++ 1 file changed, 16 insertions(+), 13 deletions(-) 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pgdBO-0003Yo-QI
Subject: [V9fs-developer] [PATCH] fs/9p: Add new options to Documentation
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
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Need to update the documentation for new mount flags
and cache modes.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 Documentation/filesystems/9p.rst | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
index 0e800b8f73cc..6d257854a02a 100644
--- a/Documentation/filesystems/9p.rst
+++ b/Documentation/filesystems/9p.rst
@@ -78,19 +78,18 @@ Options
   		offering several exported file systems.
 
   cache=mode	specifies a caching policy.  By default, no caches are used.
-
-                        none
-				default no cache policy, metadata and data
-                                alike are synchronous.
-			loose
-				no attempts are made at consistency,
-                                intended for exclusive, read-only mounts
-                        fscache
-				use FS-Cache for a persistent, read-only
-				cache backend.
-                        mmap
-				minimal cache that is only used for read-write
-                                mmap.  Northing else is cached, like cache=none
+		Modes are progressive and inclusive.  For example, specifying fscache
+		will use loose caches, writeback, and readahead.  Due to their
+		inclusive nature, only one cache mode can be specified per mount.
+
+			=========	=============================================
+			none		no cache of file or metadata
+			readahead	readahead caching of files
+			writeback	delayed writeback of files
+			mmap		support mmap operations read/write with cache
+			loose		meta-data and file cache with no coherency
+			fscache		use FS-Cache for a persistent cache backend
+			=========	=============================================
 
   debug=n	specifies debug level.  The debug level is a bitmask.
 
@@ -137,6 +136,10 @@ Options
   		This can be used to share devices/named pipes/sockets between
 		hosts.  This functionality will be expanded in later versions.
 
+  directio	bypass page cache on all read/write operations
+
+  ignoreqv	ignore qid.version==0 as a marker to ignore cache
+
   noxattr	do not offer xattr functions on this mount.
 
   access	there are four access modes.
-- 
2.39.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
