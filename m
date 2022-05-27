Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF825356E5
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:00:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNPL-0003WF-1P; Fri, 27 May 2022 00:00:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNPJ-0003W2-QM
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8pdt9j0YTn4gITTYumjXbqE/LEAOIMIl+jNZOjh5y9Q=; b=DY9ApFS+tqvGatgFUMtUFBCcPI
 LpgpPUpzKmVfnmg4fISNGBDrAGgYmZaBF385cep1ZEzdVCyCKzPYq50S1S7eFQfFc+1iVv4DFZryC
 t4VYLQwSR3//+4/rqq1NxY9prcvaNxV+rK+uEjZK8W1wanbNjjPaeAHzgSmmiMt0zHMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8pdt9j0YTn4gITTYumjXbqE/LEAOIMIl+jNZOjh5y9Q=; b=dC0MPZoEUyZ6+7GFRod7W/S7wl
 +tsflSqSG5bl5N5DXn5HCy3qnCDyPGUBeqEaiU9QdIwDwp8PZSgOs+WSr3Cls46v1huk9QgFwyqmd
 TqVkpcY4bXYSCstUSrs+hJN4WFvUbXutgsN/OtKW6FUj+iUwzmoVxwhb/3cbUyk9HDuM=;
Received: from [13.77.154.182] (helo=linux.microsoft.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNPA-0000Hy-IE
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:44 +0000
Received: from sequoia.corp.microsoft.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 41E3B20B87F6;
 Thu, 26 May 2022 17:00:29 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 41E3B20B87F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609629;
 bh=8pdt9j0YTn4gITTYumjXbqE/LEAOIMIl+jNZOjh5y9Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bqM8ydfpKp1R2Kwm8m7OBlevH7IJIMHPMoCSE1CaHbLVz/LOzrTju7Ar16s7Emix5
 RmZSiXqKjPUnhD8RzfRF61Lt1SR6UQGJ7+C1F9+hczFIgvYrUEckMTPDL0y2chY7Fg
 AW331OC6buNm2EunSqeYeI0BDWQle8Sp9C9XhHSY=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 26 May 2022 19:00:00 -0500
Message-Id: <20220527000003.355812-3-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -16.6 (----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Improve readability by using a new variable when dealing with
 the root fid. The root fid requires special handling in comparison to other
 fids used during fid lookup. Signed-off-by: Tyler Hicks
 <tyhicks@linux.microsoft.com>
 --- fs/9p/fid.c | 26 ++++++++++++++ 1 file changed, 14 insertions(+), 12
 deletions(-) 
 Content analysis details:   (-16.6 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nuNPA-0000Hy-IE
Subject: [V9fs-developer] [PATCH v2 2/5] 9p: Track the root fid with its own
 variable during lookups
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

Improve readability by using a new variable when dealing with the root
fid. The root fid requires special handling in comparison to other fids
used during fid lookup.

Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---
 fs/9p/fid.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 5a469b79c1ee..dae276ca7f7a 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -152,7 +152,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	const unsigned char **wnames, *uname;
 	int i, n, l, clone, access;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid, *old_fid;
+	struct p9_fid *fid, *root_fid, *old_fid;
 
 	v9ses = v9fs_dentry2v9ses(dentry);
 	access = v9ses->flags & V9FS_ACCESS_MASK;
@@ -178,8 +178,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	up_read(&v9ses->rename_sem);
 
 	/* start from the root and try to do a lookup */
-	fid = v9fs_fid_find(dentry->d_sb->s_root, uid, any);
-	if (!fid) {
+	root_fid = v9fs_fid_find(dentry->d_sb->s_root, uid, any);
+	if (!root_fid) {
 		/* the user is not attached to the fs yet */
 		if (access == V9FS_ACCESS_SINGLE)
 			return ERR_PTR(-EPERM);
@@ -189,17 +189,18 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		else
 			uname = v9ses->uname;
 
-		fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
-				       v9ses->aname);
-		if (IS_ERR(fid))
-			return fid;
+		root_fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
+					    v9ses->aname);
+		if (IS_ERR(root_fid))
+			return root_fid;
 
-		refcount_inc(&fid->count);
-		v9fs_fid_add(dentry->d_sb->s_root, fid);
+		refcount_inc(&root_fid->count);
+		v9fs_fid_add(dentry->d_sb->s_root, root_fid);
 	}
 	/* If we are root ourself just return that */
 	if (dentry->d_sb->s_root == dentry)
-		return fid;
+		return root_fid;
+
 	/*
 	 * Do a multipath walk with attached root.
 	 * When walking parent we need to make sure we
@@ -211,7 +212,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		fid = ERR_PTR(n);
 		goto err_out;
 	}
-	old_fid = fid;
+	fid = root_fid;
+	old_fid = root_fid;
 	clone = 1;
 	i = 0;
 	while (i < n) {
@@ -220,7 +222,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		 * We need to hold rename lock when doing a multipath
 		 * walk to ensure none of the patch component change
 		 */
-		fid = p9_client_walk(fid, l, &wnames[i], clone);
+		fid = p9_client_walk(old_fid, l, &wnames[i], clone);
 		p9_client_clunk(old_fid);
 		if (IS_ERR(fid)) {
 			kfree(wnames);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
