Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF185680C01
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 Jan 2023 12:31:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMSNF-0005TY-Kj;
	Mon, 30 Jan 2023 11:30:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jgross@suse.com>) id 1pMSNE-0005TC-AK
 for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 11:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qviUM8UM8K0sUVl1CBj5NTWfqEBaR5N6NdZBj3tn208=; b=hsngRk7o75IvvuNzSQjvjan+ae
 8ZXHiO/DDBcTLDDTz1o0BdtJ/pa9wUzU0taq5WpKnBUHYYJN7niZM99BQtcvteDBMtkd+EWcSuiI2
 Nv693Zssg6xM+UMUCp8tojMgRfASxRoCtsqoqGfqmfAlAmHfyFe3y7v+eFE28k4V7o2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qviUM8UM8K0sUVl1CBj5NTWfqEBaR5N6NdZBj3tn208=; b=lZdqu/Zhd98wrhMXmuPnLHcGLk
 vQglZvrCWsr+yMn+wt6PS2y5YPA79SDncYMEbO8Jrmkwn8gj7HNIdFGy4/oLyLwUEKyL8Yi8z5yhf
 hDX5Es+JqPPGCYYSqfwbpRd1EoLLpHI9DupWvCatDnql6SI5Fof6zNor+oSW4x2+UtoI=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pMSNB-0007Qj-2d for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 11:30:54 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id D2B541FDCD;
 Mon, 30 Jan 2023 11:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1675078245; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qviUM8UM8K0sUVl1CBj5NTWfqEBaR5N6NdZBj3tn208=;
 b=UF2rIHgnaUIktM11KSYG5U2h+oe0l5FVKifw+ts67xZlu7np7lB4W0YPS91C8aWC4rGXhT
 MQwbi7wGYlC7ZgR0TYC3rlYk4mj7RRCLc6xiH2GIZCR58u9Se2h3uxH5G0OFhVG8w8/y+4
 uTXHK70Ch/j0XnnNNmv0prDLt+JrpdU=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 87DC813A06;
 Mon, 30 Jan 2023 11:30:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id RkIKIGWq12PQJQAAMHmgww
 (envelope-from <jgross@suse.com>); Mon, 30 Jan 2023 11:30:45 +0000
To: linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 netdev@vger.kernel.org
Date: Mon, 30 Jan 2023 12:30:35 +0100
Message-Id: <20230130113036.7087-2-jgross@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230130113036.7087-1-jgross@suse.com>
References: <20230130113036.7087-1-jgross@suse.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When connecting the Xen 9pfs frontend to the backend, the
 "versions" Xenstore entry written by the backend is parsed in a wrong way.
 The "versions" entry is defined to contain the versions supported by the
 backend separated by commas (e.g. "1,2"). Today only version "1" is defined.
 Unfortunately the frontend doesn't look for "1" be [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pMSNB-0007Qj-2d
Subject: [V9fs-developer] [PATCH 1/2] 9p/xen: fix version parsing
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
From: Juergen Gross via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Juergen Gross <jgross@suse.com>
Cc: Juergen Gross <jgross@suse.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When connecting the Xen 9pfs frontend to the backend, the "versions"
Xenstore entry written by the backend is parsed in a wrong way.

The "versions" entry is defined to contain the versions supported by
the backend separated by commas (e.g. "1,2"). Today only version "1"
is defined. Unfortunately the frontend doesn't look for "1" being
listed in the entry, but it is expecting the entry to have the value
"1".

This will result in failure as soon as the backend will support e.g.
versions "1" and "2".

Fix that by scanning the entry correctly.

Fixes: 71ebd71921e4 ("xen/9pfs: connect to the backend")
Signed-off-by: Juergen Gross <jgross@suse.com>
---
 net/9p/trans_xen.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index 82c7005ede65..ad2947a3b376 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -378,13 +378,19 @@ static int xen_9pfs_front_probe(struct xenbus_device *dev,
 	int ret, i;
 	struct xenbus_transaction xbt;
 	struct xen_9pfs_front_priv *priv = NULL;
-	char *versions;
+	char *versions, *v;
 	unsigned int max_rings, max_ring_order, len = 0;
 
 	versions = xenbus_read(XBT_NIL, dev->otherend, "versions", &len);
 	if (IS_ERR(versions))
 		return PTR_ERR(versions);
-	if (strcmp(versions, "1")) {
+	for (v = versions; *v; v++) {
+		if (simple_strtoul(v, &v, 10) == 1) {
+			v = NULL;
+			break;
+		}
+	}
+	if (v) {
 		kfree(versions);
 		return -EINVAL;
 	}
-- 
2.35.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
