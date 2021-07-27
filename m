Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C15E3D6AC7
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 02:08:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m8Adc-0000wX-W8; Tue, 27 Jul 2021 00:08:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <harshvardhan.jha@oracle.com>) id 1m8Ada-0000wP-Kr
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 00:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b5DkrcWqLQZxmjE/yC8G9x3pPclYWR6dZfCV7/oGyt8=; b=NI2WCmibFFigHWLL8zCAhr03gO
 zajRaN6bx2uSunIVhpzNcvPyNiK8xZrcHIXEPEWYTOH9HUbT7gz8cjNXhTdB76WJXTR6U/Vfm1R2u
 Nw/L+D3e5o49uZQhFMBC5+aDUuNABc5q9r0jtv+jwPCXJEgK3si+BKWJTaB20utKmEFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b5DkrcWqLQZxmjE/yC8G9x3pPclYWR6dZfCV7/oGyt8=; b=DQQhrhqsS0dd0Ve4Qko165iYOP
 RSSDAVOgwV3otj7afeaj18LB7BGPssWa8BSXngnFAbVqqAJydPy7WBgYoIa7ANTpjSW8WijC+VxFI
 zgfiVqlyJUCQhGtHnUrNouWOXmiwW/bDcB7sPS7W3OU0g3myIBcFqHSb8W72wNSDhIe4=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8AdV-003cDd-AX
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 00:07:58 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16R02dJB009873; Tue, 27 Jul 2021 00:07:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2021-07-09;
 bh=b5DkrcWqLQZxmjE/yC8G9x3pPclYWR6dZfCV7/oGyt8=;
 b=s5c132hjkTEwVgSeE/NT+XC9P97cgwaqsCqZnWdWPPfcADDL/8FGLkNHhESFFI7wg4Dn
 KSFZ1yBDvDcNmq+YQ7LhdnzUggFnXnKhiAH2oa8YLi3V7UVE0AkffsIcYSaDekGOHiK9
 zSmNVfxA6LLuLJLtOw4mbz0UAbkoT+duHgmQLq9UHQFi3FT3MHde1FYDUecnJSzD2irQ
 iAGodV5khyEWANQAQAG6tFXAVw05cqNzpe8gnn74mzi1zRLSJLLhoMUBIjJu92Q8nPva
 ITxUmUBJ6zxGzPq0V7lMLlN3VRYdOs76bD4Ahv/zQ990ov2+1QTQCuk2LENPKEK9QrAg aQ== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=b5DkrcWqLQZxmjE/yC8G9x3pPclYWR6dZfCV7/oGyt8=;
 b=WkFj0xU+wutVZkxgNN2htqD8ldSJqTlc4ioyYN8HEjZpK9zw5KHit13BA9vfsuJ2MUmx
 aYBx81qpVNqoeXUncObWCm7zvV3VPHSlO1t63fFhm5/UH83jMkHAYgllAcBjEvQrUu/D
 KbfVTchu9WPitIc8Dezg7laM4Kss/ZBdvncYZ2QDQV5JeR8YQew4mk0CtiSInK44o+b7
 ReE2mHBokz7mFT2my3uZaXQKGqxXA4HD2+X8JdbwJCoAQoT8RKxtF2rXQy08sF/40FWJ
 V1j4FBHGfC11ZwQ9imnIqmmA33tFO2crxJ0CToAbFBy6OR4Vq+n6HEQbxXfr/JWBEdf8 NQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3a234n0e90-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Jul 2021 00:07:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16R07bCA031100;
 Tue, 27 Jul 2021 00:07:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 3a2349c9r9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Jul 2021 00:07:38 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 16R07bIr031075;
 Tue, 27 Jul 2021 00:07:37 GMT
Received: from manjaro.in.oracle.com (dhcp-10-191-222-3.vpn.oracle.com
 [10.191.222.3]) by aserp3030.oracle.com with ESMTP id 3a2349c9hn-1;
 Tue, 27 Jul 2021 00:07:24 +0000
From: Harshvardhan Jha <harshvardhan.jha@oracle.com>
To: ericvh@gmail.com
Date: Tue, 27 Jul 2021 05:37:10 +0530
Message-Id: <20210727000709.225032-1-harshvardhan.jha@oracle.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
References: <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: clMVn-w0eemomDdiBljtF4wnrzKtlAdl
X-Proofpoint-GUID: clMVn-w0eemomDdiBljtF4wnrzKtlAdl
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.177.32 listed in bl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m8AdV-003cDd-AX
Subject: [V9fs-developer] [PATCH] 9p/xen: Fix end of loop tests for
 list_for_each_entry
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
Cc: lucho@ionkov.net, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Harshvardhan Jha <harshvardhan.jha@oracle.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This patch addresses the following problems:
 - priv can never be NULL, so this part of the check is useless
 - if the loop ran through the whole list, priv->client is invalid and
it is more appropriate and sufficient to check for the end of
list_for_each_entry loop condition.

Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
---
 net/9p/trans_xen.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index f4fea28e05da..3ec1a51a6944 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -138,7 +138,7 @@ static bool p9_xen_write_todo(struct xen_9pfs_dataring *ring, RING_IDX size)
 
 static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
 {
-	struct xen_9pfs_front_priv *priv = NULL;
+	struct xen_9pfs_front_priv *priv;
 	RING_IDX cons, prod, masked_cons, masked_prod;
 	unsigned long flags;
 	u32 size = p9_req->tc.size;
@@ -151,7 +151,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
 			break;
 	}
 	read_unlock(&xen_9pfs_lock);
-	if (!priv || priv->client != client)
+	if (list_entry_is_head(priv, &xen_9pfs_devs, list))
 		return -EINVAL;
 
 	num = p9_req->tc.tag % priv->num_rings;
-- 
2.32.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
