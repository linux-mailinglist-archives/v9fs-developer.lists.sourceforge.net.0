Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 976815356E6
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:00:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNPK-0001ay-Pd; Fri, 27 May 2022 00:00:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNPI-0001Zj-PF
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=va52FY3CxVCP4CDaqya7zxaHqwkN4nQrlRwZnNMAbec=; b=mdZHI1hccWEA2vYEy0k2uxgatp
 k04KK/aCfSjEi/D3BNuzcSC9hIdsw/7n8qolpLFnFaSr8XIwNeq2VeAqV8Fo+HfjLLf4arqUY77dG
 DZFiRylfwY4lg2A3KF8MK2HmERE4h7S5pGQsPzvD5iBScNd25tZNDpHoi5o2fyZRLgqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=va52FY3CxVCP4CDaqya7zxaHqwkN4nQrlRwZnNMAbec=; b=ZzvmkIBZJWKEBIytyKIDWCsEMq
 kKohgw6qagXiSSTmCzfY0hdbo353wHHHAouts2YfyBgtXi766H9rPnFYr3YJKgAKBoqejp3oxGsXI
 zbKrfw50hCqCmaYiPAzxcS68D7Na63UY0AczL+meHl+Yatl8zB1wCC7eY1YSEpNQZT9k=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNPB-003L3Y-CE
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:44 +0000
Received: from sequoia.corp.microsoft.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 8D85C20B44CF;
 Thu, 26 May 2022 17:00:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8D85C20B44CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609631;
 bh=va52FY3CxVCP4CDaqya7zxaHqwkN4nQrlRwZnNMAbec=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zr3h0vZVzjUnKnzcwb3bRT3m50dMDGbnXvq4t+KjgU8ZKb0L9PW3wNg71DoCtZjny
 rlAsS83qM8837mn79cM6xnxAiFJadS3UADG4sDuga74kS4IQ1/Lr1urFiKM3/kLY1b
 OCvI6YQ3xrPV0ZHJNHa2LfTmVTu01U3IPteZWL2E=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 26 May 2022 19:00:01 -0500
Message-Id: <20220527000003.355812-4-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Cloning during a path component walk is only needed when the
 old fid used for the walk operation is the root fid. Make that clear by
 comparing
 the two fids rather than using an additional variable. Signed-off-by: Tyler
 Hicks <tyhicks@linux.microsoft.com> --- fs/9p/fid.c | 7 +++---- 1 file changed,
 3 insertions(+), 4 deletions(-) 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nuNPB-003L3Y-CE
Subject: [V9fs-developer] [PATCH v2 3/5] 9p: Make the path walk logic more
 clear about when cloning is required
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

Cloning during a path component walk is only needed when the old fid
used for the walk operation is the root fid. Make that clear by
comparing the two fids rather than using an additional variable.

Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---
 fs/9p/fid.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index dae276ca7f7a..dfe98a308612 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -150,7 +150,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 {
 	struct dentry *ds;
 	const unsigned char **wnames, *uname;
-	int i, n, l, clone, access;
+	int i, n, l, access;
 	struct v9fs_session_info *v9ses;
 	struct p9_fid *fid, *root_fid, *old_fid;
 
@@ -214,7 +214,6 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	}
 	fid = root_fid;
 	old_fid = root_fid;
-	clone = 1;
 	i = 0;
 	while (i < n) {
 		l = min(n - i, P9_MAXWELEM);
@@ -222,7 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		 * We need to hold rename lock when doing a multipath
 		 * walk to ensure none of the patch component change
 		 */
-		fid = p9_client_walk(old_fid, l, &wnames[i], clone);
+		fid = p9_client_walk(old_fid, l, &wnames[i],
+				     old_fid == root_fid);
 		p9_client_clunk(old_fid);
 		if (IS_ERR(fid)) {
 			kfree(wnames);
@@ -230,7 +230,6 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		}
 		old_fid = fid;
 		i += l;
-		clone = 0;
 	}
 	kfree(wnames);
 fid_out:
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
