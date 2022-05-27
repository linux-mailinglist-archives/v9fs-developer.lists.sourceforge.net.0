Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E23BD5356E3
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:00:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNPF-0001ZY-OO; Fri, 27 May 2022 00:00:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNPE-0001ZS-3l
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WyWhT64EqXgi1j+9Im254CVOA49spwfGfom1V/BOPbU=; b=KQUbp7RjFBvGHUzuISxiYLXAmJ
 pDtetPdJpLdCqJDezAdpbyToh7O4tMBwFVIKlAwMv2K+Taw06Cofp9Q6qUfKpYxXyu4llETgh/pyj
 cY65ZkWH0kDHQx6sZBBqCzNEwkD9d2tVTxb70L8glljYwy7HZvEDmx8Jhb7APbvP3zNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WyWhT64EqXgi1j+9Im254CVOA49spwfGfom1V/BOPbU=; b=Q9YCInTEPzDOlSGo07yd1x2xKC
 6AmvwT+oRH3lDsJeEvYMJn2nKl/kstF4q0B2h2LYPCHhzhYesgxkVGUR3mN5fUXL3GkjNHMPJVUfE
 rCF9JKYNZbcTPm0Glq/qL4v5t74WyLdsmluOn4i2mW4MlXmOJIEd4UokSGCZFeADERuU=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNPB-003L3g-KC
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:40 +0000
Received: from sequoia.corp.microsoft.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id BF81420B5B4E;
 Thu, 26 May 2022 17:00:31 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com BF81420B5B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609632;
 bh=WyWhT64EqXgi1j+9Im254CVOA49spwfGfom1V/BOPbU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bIse+ow20K7BpanHXQ49cUZmR92pHLe3BfWwyAAZ4EsY5q37ymkoDSmdVFd0TvL/Q
 K7+e+3sGrdKft2U3/DDB9FKWl2dsfSbjIjli2TdTUUtdC4j6TKNc4R5zav4yirSfco
 AMuyahFc8Kx/YQEStqu6yesnJ0mDPPL8jhvkZp6c=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 26 May 2022 19:00:02 -0500
Message-Id: <20220527000003.355812-5-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove the ofid variable that's local to the conditional
 block
 in favor of the old_fid variable that's local to the entire function.
 Signed-off-by:
 Tyler Hicks <tyhicks@linux.microsoft.com> --- fs/9p/fid.c | 6 +++--- 1 file
 changed, 3 insertions(+), 3 deletions(-) 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nuNPB-003L3g-KC
Subject: [V9fs-developer] [PATCH v2 4/5] 9p: Remove unnecessary variable for
 old fids while walking from d_parent
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove the ofid variable that's local to the conditional block in favor
of the old_fid variable that's local to the entire function.

Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---
 fs/9p/fid.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index dfe98a308612..d8c70c4cd3c2 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -169,10 +169,10 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	fid = v9fs_fid_find(ds, uid, any);
 	if (fid) {
 		/* Found the parent fid do a lookup with that */
-		struct p9_fid *ofid = fid;
+		old_fid = fid;
 
-		fid = p9_client_walk(ofid, 1, &dentry->d_name.name, 1);
-		p9_client_clunk(ofid);
+		fid = p9_client_walk(old_fid, 1, &dentry->d_name.name, 1);
+		p9_client_clunk(old_fid);
 		goto fid_out;
 	}
 	up_read(&v9ses->rename_sem);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
