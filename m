Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE24769B6EA
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 01:34:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTBBV-0008HM-6W;
	Sat, 18 Feb 2023 00:34:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pTBBB-0008Ga-04
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fw9lpMcRlQ98cMWAJ6yr69bVmkSt3U+zp7vHa9aUgRs=; b=PKjnlzD735S1lu55CrwAgaU1ZP
 0HczYeDx1/OxG0Qc+Sibh+FaJhMsJyYTjAkqjDjpVJyA5dSW/qh5i8wBrICP1ZEFzYygTp/8TteuK
 X+tuUKX+th+tvi+ul9T0hpI3k9x3Ed1uuxf7h4uZ1S6wDQfBPP+nRg1QtMYeeCccIX3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fw9lpMcRlQ98cMWAJ6yr69bVmkSt3U+zp7vHa9aUgRs=; b=X5S7QHpJUYoNQ+z+JbZ4IoiQM7
 e7cDU1ZkpQjvgY5r+8wuwwgwvlUtE4WhVulJA8tj9k/H9dJPTedyg9GulXhJL4qhp6uEvNlKf8+3n
 8Fjd45vjtH1hLY87itwSUhMFrEr3WwzBLz1mzJvD38falL8koOpKQQGbNsJbx9ANYXuQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTBAu-0004KX-H9 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 00:34:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 77B2861F17;
 Sat, 18 Feb 2023 00:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17A3FC433EF;
 Sat, 18 Feb 2023 00:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676680434;
 bh=PwWjKgBCrFlHwrWRE5cwXvsrY7AklcLgKZPzMWv8M98=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uoiSvOjVFdldq06YEWUWJ5d6yYyCFmNKfK/nQJ1caAuYFBSe7ItFqXHlKS9KpiDJb
 MSsdsh4qjW9ARIQiNRph5Oo4iG0l1JDWo7qyb67VWywhZy7Dywf1a7xANo3+otCeum
 GJ9XzUoh9k+IeI7+mGixH2//iLtq8jT8swpMNuKcsuSABU0n7xrejOOIThxQV3L8iI
 MSdh9sPUNQS7hNH8DRYKMfA+gocsbqWcCxOCX5k/OPtHxLqSW3D4lpZgHvTTDFNx08
 tqSwZFSqXIshydzqltmUOmhWXj+UD5dqeCchUFrIMIE3GNcsjsq41AlA5uz+B1MiwH
 FuDUdno65CPvg==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 18 Feb 2023 00:33:13 +0000
Message-Id: <20230218003323.2322580-2-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230218003323.2322580-1-ericvh@kernel.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add maximum p9 header size to MSIZE to make sure we can have
 page aligned data. Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
 --- net/9p/client.c | 6 +++++- 1 file changed, 5 insertions(+), 1 deletion(-)
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pTBAu-0004KX-H9
Subject: [V9fs-developer] [PATCH v4 01/11] net/9p: Adjust maximum MSIZE to
 account for p9 header
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add maximum p9 header size to MSIZE to make sure we can
have page aligned data.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 net/9p/client.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 622ec6a586ee..6c2a768a6ab1 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -28,7 +28,11 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
-#define DEFAULT_MSIZE (128 * 1024)
+/* DEFAULT MSIZE = 32 pages worth of payload + P9_HDRSZ +
+ * room for write (16 extra) or read (11 extra) operands.
+ */
+
+#define DEFAULT_MSIZE ((128 * 1024) + P9_IOHDRSZ)
 
 /* Client Option Parsing (code inspired by NFS code)
  *  - a little lazy - parse all client options
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
