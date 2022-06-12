Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1E5547954
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 10:54:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0JMa-00089x-FY; Sun, 12 Jun 2022 08:54:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0JMZ-00089q-44
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iguW8VJn2xpk0juxhAsB0Ag6tYkQSGJW6piilwKSWbE=; b=SD80Pi0CYeFbp7/M2uAaTHUCvK
 CSdNkSwbL86ENdW/2ZJsPW6VgwHZ0Q8c+IM7KIVPe5dgjLDX3KOJY5JXj8d8zrUh1ZVjarFzP+7FU
 +hmR2ghPMw5IoWem2M4BxGi+ZXvtNSNkVGjYsdtvrV/06yivkjgCLtqhiZjyd9+Dljz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iguW8VJn2xpk0juxhAsB0Ag6tYkQSGJW6piilwKSWbE=; b=cf7O9uaWCtDag7jIrhxRlXkBnA
 jj6Kk1N3MqfuPH4QE0QLGFs4UR+YtsHLkRcF6qzKjjLbmyyzv/7EPeiDk7wyRJ6wTEtYwhIyIwsWw
 Lj/B1dY3nFEU8GmA4PEdjujJbZyEUjLtfqKSaiZIfVtTiUHT8sbOg3/0Zd6vp28qYVqA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0JMX-00Fx6e-5F
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:54:25 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id EA8F2C026; Sun, 12 Jun 2022 10:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024058; bh=iguW8VJn2xpk0juxhAsB0Ag6tYkQSGJW6piilwKSWbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c+KTqWdVXotF/5fkqb1pV/VMI9c9zLiYEM6w6IDbaXlExQ05HCqB82C/Pdrf8Jyo/
 ZRra4lkx+4MzRSIuMy3jbImDhZUpwoskp0owNHeIlUm3ErMCgruf9kBpAEdaCv6uce
 PZCQN97OW5ybZ/VgxOLzBHU4isENHCeZa3d0PGlebg4cVUlHERbA2OeUhvmY2WcH1O
 URWPJPDy0epyKy0mw3r6MfHc5oWF+TE6AHRQPx26rQ/vvhMBYyvCUlKgjtHUwsB57G
 +JNv4hDUFSRR0dG3fwP4QQT+6rGyCTtEKp02lb94Ffmg9EpzhL2iOl3fclD8ttOzSc
 kn8iD4Ds9zYtA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 52F69C01F;
 Sun, 12 Jun 2022 10:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024058; bh=iguW8VJn2xpk0juxhAsB0Ag6tYkQSGJW6piilwKSWbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c+KTqWdVXotF/5fkqb1pV/VMI9c9zLiYEM6w6IDbaXlExQ05HCqB82C/Pdrf8Jyo/
 ZRra4lkx+4MzRSIuMy3jbImDhZUpwoskp0owNHeIlUm3ErMCgruf9kBpAEdaCv6uce
 PZCQN97OW5ybZ/VgxOLzBHU4isENHCeZa3d0PGlebg4cVUlHERbA2OeUhvmY2WcH1O
 URWPJPDy0epyKy0mw3r6MfHc5oWF+TE6AHRQPx26rQ/vvhMBYyvCUlKgjtHUwsB57G
 +JNv4hDUFSRR0dG3fwP4QQT+6rGyCTtEKp02lb94Ffmg9EpzhL2iOl3fclD8ttOzSc
 kn8iD4Ds9zYtA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 62618ee2;
 Sun, 12 Jun 2022 08:54:10 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Tyler Hicks <tyhicks@linux.microsoft.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 12 Jun 2022 17:53:26 +0900
Message-Id: <20220612085330.1451496-4-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220612085330.1451496-1-asmadeus@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tyler, I can just squash this in your commit if you're ok
 with this, as I've already rebased the other patches on top of it. Cc: Tyler
 Hicks <tyhicks@linux.microsoft.com> Signed-off-by: Dominique Martinet
 <asmadeus@codewreck.org>
 --- fs/9p/fid.c | 7 +++++-- 1 file changed, 5 insertions(+), 2 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0JMX-00Fx6e-5F
Subject: [V9fs-developer] [PATCH 03/06] 9p: v9fs_fid_lookup_with_uid fix's
 fix suggestion
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tyler, I can just squash this in your commit if you're ok with this,
as I've already rebased the other patches on top of it.

Cc: Tyler Hicks <tyhicks@linux.microsoft.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/fid.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 5a469b79c1ee..baf2b152229e 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -221,12 +221,15 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		 * walk to ensure none of the patch component change
 		 */
 		fid = p9_client_walk(fid, l, &wnames[i], clone);
-		p9_client_clunk(old_fid);
+		/* non-cloning walk will return the same fid */
+		if (fid != old_fid) {
+			p9_client_clunk(old_fid);
+			old_fid = fid;
+		}
 		if (IS_ERR(fid)) {
 			kfree(wnames);
 			goto err_out;
 		}
-		old_fid = fid;
 		i += l;
 		clone = 0;
 	}
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
