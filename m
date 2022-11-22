Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E916344A0
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 20:33:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxZ1T-0000ox-1c;
	Tue, 22 Nov 2022 19:33:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <8f2a5c12a446c3b544da64e0b1550e1fb2d6f972@lizzy.crudebyte.com>)
 id 1oxZ1S-0000or-04 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 19:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=weFqBBEuoYe8WdB7ucJUMCD7rrVXpr62keLdAWyCS78=; b=a/2YD4I4q+/vzvFtllJrENgQ/4
 brh8/Gnr7wQOGMz6TczQ5uyzV/BkUH9F1gnnwa0kZLGe8hx6MHV9s+KU2HQlB2nDDBgHD+tAKWPDC
 cVG2sotBSZa64IAhtpMCmehveooAukfFNtSaRGzNYkT+CEO6m3ltaTW3o2KZUnwM9w+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=weFqBBEuoYe8WdB7ucJUMCD7rrVXpr62keLdAWyCS78=; b=bWMx4EE9NkKk4SCNUuJUAVAYNx
 aE6tcTWBL56ZZU9WQp+3sx3f/dFlCa6b7VSqwxWfddqYYgPPqheotPVdkDdPLiH9cbEoNOs+83LRP
 bCYwKhB0hRiEjU7YEsoS2D9MzNfcJZHQJqtoqmR2k2vz764fYLZvCGuIhp0I1Q/XffDE=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxZ1P-00ClWV-Th for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 19:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=weFqBBEuoYe8WdB7ucJUMCD7rrVXpr62keLdAWyCS78=; b=c/Y03
 viW3pfh0CXBuJXFUV546K3MLlDBf5+7XUhj4ROuE0l2qcUJ/JnBG4GE2ZcQ8owjiLrsSiRBZ31Rzq
 flAl00AViUPcqtsLv7xfi4YgHhblZsPut5DgW7z1+/pIDGV+HPWGI7ve9dLnzocVWY9Uu/vFi2qgs
 MwXFy2RgWFApTkOzb03wORpqHFmlRLgKyfUNKfuryT9xA5O3olsNxQtO2l/rLzKCeD5DqTGd1F3iB
 eF9a2y9XdqVfimrDVR3XI3tOJK6PIQiQ2AX6E4jJP0qsVOplVBBBfpBaLGLMXUeiW7R3LZvgojpuz
 nQGnvZgL/mJ2ffyIyMUa5THslAimA==;
Message-Id: <8f2a5c12a446c3b544da64e0b1550e1fb2d6f972.1669144861.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1669144861.git.linux_oss@crudebyte.com>
References: <cover.1669144861.git.linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 20:20:22 +0100
To: Dominique Martinet <asmadeus@codewreck.org>,
 Stefano Stabellini <sstabellini@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add boolean `zc` member to struct p9_fcall to distinguish
 zero-copy messages (not using the linear `sdata` buffer for message payload)
 from regular messages (which do copy message payload to `sdata` b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1oxZ1P-00ClWV-Th
Subject: [V9fs-developer] [PATCH v2 1/2] net/9p: distinguish zero-copy
 requests
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add boolean `zc` member to struct p9_fcall to distinguish zero-copy
messages (not using the linear `sdata` buffer for message payload) from
regular messages (which do copy message payload to `sdata` before being
further processed).

This new member is appended to end of structure to avoid inserting huge
padding in generated layout.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Tested-by: Stefano Stabellini <sstabellini@kernel.org>
---
 include/net/9p/9p.h | 2 ++
 net/9p/client.c     | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 13abe013af21..429adf6be29c 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -531,6 +531,7 @@ struct p9_rstatfs {
  * @offset: used by marshalling routines to track current position in buffer
  * @capacity: used by marshalling routines to track total malloc'd capacity
  * @sdata: payload
+ * @zc: whether zero-copy is used
  *
  * &p9_fcall represents the structure for all 9P RPC
  * transactions.  Requests are packaged into fcalls, and reponses
@@ -549,6 +550,7 @@ struct p9_fcall {
 
 	struct kmem_cache *cache;
 	u8 *sdata;
+	bool zc;
 };
 
 int p9_errstr2errno(char *errstr, int len);
diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..c7935e392812 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -680,6 +680,9 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	if (IS_ERR(req))
 		return req;
 
+	req->tc.zc = false;
+	req->rc.zc = false;
+
 	if (signal_pending(current)) {
 		sigpending = 1;
 		clear_thread_flag(TIF_SIGPENDING);
@@ -778,6 +781,9 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	if (IS_ERR(req))
 		return req;
 
+	req->tc.zc = true;
+	req->rc.zc = true;
+
 	if (signal_pending(current)) {
 		sigpending = 1;
 		clear_thread_flag(TIF_SIGPENDING);
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
