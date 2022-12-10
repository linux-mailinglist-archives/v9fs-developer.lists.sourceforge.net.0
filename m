Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43707648B91
	for <lists+v9fs-developer@lfdr.de>; Sat, 10 Dec 2022 01:11:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3nSP-0000x8-RC;
	Sat, 10 Dec 2022 00:11:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p3nSP-0000x2-1G
 for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Dec 2022 00:11:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HyFR8xSzRUqVUlavgT48EJ0ZVGK/uZU9vO4AzilxacY=; b=i9l4ZTK8QxRHT2Y+wPHMTiwDgW
 AhQg6+QKTxa/Z4dG86HVbIHt9eSDuIqIf9+Mu4eGIC055PhIEK+aX+paj8uh1E+muyrYbDwVl6o66
 cOsHc/uXP1jRHzSuBl17qjZvrVrIXgLm9BPgKa/9pEiFswqHeoGAa0VSqnxfp7y3i64E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HyFR8xSzRUqVUlavgT48EJ0ZVGK/uZU9vO4AzilxacY=; b=d
 QnfPlYI8JuThjC25cx+fP6lWz9NfL2mpKkO39tgYYbwrEYZbAAo70n/V7bbBEnD3icj2J3yAlucqZ
 8CA5ZwYtOzDsZpf9363aoZmhQMrFheIJgNU8wyLLFIs7yaVGNGcVExNLfhB2UZ96aBJa++XOYsofR
 H+Mcbgv0R2TUcK1k=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3nSJ-0003ge-O1 for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Dec 2022 00:11:08 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A16C0C01E; Sat, 10 Dec 2022 01:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670631067; bh=HyFR8xSzRUqVUlavgT48EJ0ZVGK/uZU9vO4AzilxacY=;
 h=From:To:Cc:Subject:Date:From;
 b=ripLB6FSl1Bmq/LE0nufGTv/HavizAqpw2unUao7R6KQeDmBLo8GB0b+YIqjNKC8d
 IutrWk/aOL2SpRYc/jOimr2kFQc81MPr34AIuIGh6BvMfotO9THbNxF6BO7M523mtT
 r/5NpZF05pVFzmEL9lYlDP79bzUkPmx/3941oZ0q3mQm2Qt3Z9nP0XKZj0YsK3gyi9
 dzRzt3oWA9WL41q8O3r0btW28xJdAR4JMLX2aPDp9s4mU29gn1aeeADbTtMEHW8qkC
 oZzhsEmZGJKhFbsK2VRarstSlxU+gxhxfgUs+aNlVLQaciwtBIuINexy6N07DMV4uM
 6CSDhOOTSOPeQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7E094C01B;
 Sat, 10 Dec 2022 01:11:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670631067; bh=HyFR8xSzRUqVUlavgT48EJ0ZVGK/uZU9vO4AzilxacY=;
 h=From:To:Cc:Subject:Date:From;
 b=ripLB6FSl1Bmq/LE0nufGTv/HavizAqpw2unUao7R6KQeDmBLo8GB0b+YIqjNKC8d
 IutrWk/aOL2SpRYc/jOimr2kFQc81MPr34AIuIGh6BvMfotO9THbNxF6BO7M523mtT
 r/5NpZF05pVFzmEL9lYlDP79bzUkPmx/3941oZ0q3mQm2Qt3Z9nP0XKZj0YsK3gyi9
 dzRzt3oWA9WL41q8O3r0btW28xJdAR4JMLX2aPDp9s4mU29gn1aeeADbTtMEHW8qkC
 oZzhsEmZGJKhFbsK2VRarstSlxU+gxhxfgUs+aNlVLQaciwtBIuINexy6N07DMV4uM
 6CSDhOOTSOPeQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 19dbb211;
 Sat, 10 Dec 2022 00:10:51 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat, 10 Dec 2022 09:10:44 +0900
Message-Id: <20221210001044.534859-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The request receiving thread writes into request then marks
 the request valid in p9_client_cb by setting status after a write barrier.
 p9_virtio_zc_request must like p9_client_rpc issue a read barrier after
 getting
 notified of the new request status before reading other request files. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p3nSJ-0003ge-O1
Subject: [V9fs-developer] [PATCH] 9p/virtio: add a read barrier in
 p9_virtio_zc_request
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
Cc: v9fs-developer@lists.sourceforge.net, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The request receiving thread writes into request then marks the request
valid in p9_client_cb by setting status after a write barrier.

p9_virtio_zc_request must like p9_client_rpc issue a read barrier after
getting notified of the new request status before reading other request
files.

(This has been noticed while fixing the usage of READ/WRITE_ONCE macros
for request status)

Link: https://lkml.kernel.org/r/167052961.MU3OA6Uzks@silver
Reported-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 net/9p/trans_virtio.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 3c27ffb781e3..98425c63b3c3 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -533,6 +533,12 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
 	err = wait_event_killable(req->wq,
 			          READ_ONCE(req->status) >= REQ_STATUS_RCVD);
+
+	/* Make sure our req is coherent with regard to updates in other
+	 * threads - echoes to wmb() in the callback like p9_client_rpc
+	 */
+	smp_rmb();
+
 	// RERROR needs reply (== error string) in static data
 	if (READ_ONCE(req->status) == REQ_STATUS_RCVD &&
 	    unlikely(req->rc.sdata[4] == P9_RERROR))
-- 
2.38.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
