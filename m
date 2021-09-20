Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F38A411D06
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 19:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8MFXWyANMoUub11hQ3E/S2autSJ+g5CAgfGpBs7YRP4=; b=OtJInpjTIfQ/UN+x5+j/D/AKhA
	GdeZT6gbYNwZBZb9fkb12X63zhBE4eYsB3qTBonDBXd9YSVILxHWk+K1H5ncs1ZEqMo/glO8h8Pxt
	o15QY65cdfSDxFT2F4cCenXSrGo6vUd62ayF5IeZIB7AUjysrtvYAHE5wvilv8E0GtXs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSMrr-0004EV-T8; Mon, 20 Sep 2021 17:14:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <5ddf3d27d79ba6b3c0893099e7fe465d49c05c45@lizzy.crudebyte.com>)
 id 1mSMrq-0004EE-Gf
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xGiunjavhziw/hR6JJjI0G+puRHTGyjYNaa0pMUw2PY=; b=b7JYHUUGnR7WHh+/cqD87UYrD
 iMH/JGtCXEL/MtpTCyF2yDVnErAWMjyXkFw7iYdN+rJcESjabzPU/WhxtFes8BpSc7xKh6KXBjDQw
 fzURcwCNrMcIEex3Ygqus1AwVgjkk+Asi0eHdrvI/QLWWPadnBzJx91uW8Ig5ZmMnwnaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xGiunjavhziw/hR6JJjI0G+puRHTGyjYNaa0pMUw2PY=; b=MoJqltsbK52IltLPrzs+N63ST/
 2oiNgF0H1ZqM8XEhudhYEz/caWhjtZjxglU+4Y62zl7ALufoj34qmt/p4fGS0A0KHbGC/E9h8AH5x
 34dNK1UUSEqO7a3Ue3dq/AOqt957iKLvj/w2D3SQGeXTxI6ronkH2Wrja6XGdl2R7+QM=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSMrq-0002UR-0k
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=xGiunjavhziw/hR6JJjI0G+puRHTGyjYNaa0pMUw2PY=; b=E0SOp
 TTlBPScvhXtgv3NiN6z/fuhWAj2TcJHu79KfKD9ub4Uwr7b0mfeGCfK50BLKh+/1mCzKUPGBS20+P
 duxwMaZyukRoKR4L4O+tVDxRMoFkFt7JrmsHxEek59+BK8x7C88riDEt6RJ1QnDA00akrn6c8sPoS
 8BYFLTR4PrIajqVpqi5Jnz93k5K5WwGXSPQbKCwDPOVPaOoYE7zoU7Jp2JX4VG1vNhVNocUSYqeQV
 XaCoCq2x2PdtMbLLW95ZDqI7kekFFusmhnPizp2AQHMrR4qxC68i/Vuwy0AHeLfyShIk49inR0E2R
 xiGu+glS+pNZF+aQsaENUrkE1EsPg==;
Message-Id: <5ddf3d27d79ba6b3c0893099e7fe465d49c05c45.1632156835.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
Date: Mon, 20 Sep 2021 18:44:07 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This new field 'trans_maxsize' optionally allows transport
 to update it to reflect the actual maximum msize supported by allocated
 transport
 channel. Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com> ---
 include/net/9p/client.h | 2 ++ net/9p/client.c | 12 ++++++++++-- 2 files
 changed, 12 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSMrq-0002UR-0k
Subject: [V9fs-developer] [PATCH v2 5/7] net/9p: add trans_maxsize to struct
 p9_client
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This new field 'trans_maxsize' optionally allows transport to
update it to reflect the actual maximum msize supported by
allocated transport channel.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 include/net/9p/client.h |  2 ++
 net/9p/client.c         | 12 ++++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index e1c308d8d288..e48c4cdf9be0 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -89,6 +89,7 @@ struct p9_req_t {
  * struct p9_client - per client instance state
  * @lock: protect @fids and @reqs
  * @msize: maximum data size negotiated by protocol
+ * @trans_maxsize: actual maximum msize supported by transport channel
  * @proto_version: 9P protocol version to use
  * @trans_mod: module API instantiated with this client
  * @status: connection state
@@ -103,6 +104,7 @@ struct p9_req_t {
 struct p9_client {
 	spinlock_t lock;
 	unsigned int msize;
+	unsigned int trans_maxsize;
 	unsigned char proto_version;
 	struct p9_trans_module *trans_mod;
 	enum p9_trans_status status;
diff --git a/net/9p/client.c b/net/9p/client.c
index 4f4fd2098a30..a75034fa249b 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1037,6 +1037,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		goto free_client;
 	}
 
+	/*
+	 * transport will get a chance to increase trans_maxsize (if
+	 * necessary) and it may update trans_maxsize in create() function
+	 * below accordingly to reflect the actual maximum size supported by
+	 * the allocated transport channel
+	 */
+	clnt->trans_maxsize = clnt->trans_mod->maxsize;
+
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
 		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
 
@@ -1044,8 +1052,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto put_trans;
 
-	if (clnt->msize > clnt->trans_mod->maxsize) {
-		clnt->msize = clnt->trans_mod->maxsize;
+	if (clnt->msize > clnt->trans_maxsize) {
+		clnt->msize = clnt->trans_maxsize;
 		pr_info("Limiting 'msize' to %d as this is the maximum "
 			"supported by transport %s\n",
 			clnt->msize, clnt->trans_mod->name
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
