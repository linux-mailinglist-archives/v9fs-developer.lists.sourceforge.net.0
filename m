Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7453C571EC0
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 17:17:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBHdw-0004db-4O; Tue, 12 Jul 2022 15:17:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <2506fd2ed484f688826cdc33c177c467e2b0506c@lizzy.crudebyte.com>)
 id 1oBHdh-0004d6-Nx
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p78n0j+aija+d8Yb4f8ouk+I4Dnzsq0NMzCi4AYsSxU=; b=VTp7PBTUpitqaU2qaDyoA5AH0C
 68Xum9qQT9d0+jb9c+XcpZFqyBwQ2JKyZksRq3qa0ONgXZdXI0QvbnFeOhYbkktHqC+Ug3WVFefvu
 E7LzjHMGMHt0p9EbUZc/48GiI98ticQXFplUVMJTJ6NWnUsGBzPCnA1T6uBGoJuzOnLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p78n0j+aija+d8Yb4f8ouk+I4Dnzsq0NMzCi4AYsSxU=; b=MKDhHsTViMnD1dFPwWv3Ehz0LR
 0dz5KI+2yn7VpCVMVAswaxbjCmd6DSvKUrMWdxrNdBCAp0MYB0lMC39wMfsAjZOc+BY+BMQqfwPJV
 IJtk2jKgpBcSfOMBHJGN6Y/b1F+FC6iE2RKC7UOQPvFBbWtyTnt/Ct+GqzBUDCdKg56c=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBHdh-00Epqd-Qv
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=p78n0j+aija+d8Yb4f8ouk+I4Dnzsq0NMzCi4AYsSxU=; b=py8F9
 hYhY8+dGDBcqTZo9UX97sZyab9Y+6UPXYg0gOLCs7L3OLhWmfg3z1U644dBCLnsyw7oRXVQiuRwtq
 8JLYjO5ccPMq5heCaEVdu0v7TFCcR/F5IP1vNoz1YqsFehoV2ezv+XfkE4wwIdcRENrAH6whjXWxH
 58sh5ty23IexJWLD7Uk0dBdYN2il93xNGyb9o62IQN/m72jxVsgPWJIEMpQF5Ntr+s6rU6WBJgAF5
 wwulgVLcm3P/8D6RnrmX2FEB8LT2r6jQUiSvxAHpn7MDWOuNsfXKVhVGInW8e5OY3glai+/Mi4w3h
 S4odkqtNIsrHsf733KObRlUyM3asg==;
Message-Id: <2506fd2ed484f688826cdc33c177c467e2b0506c.1657636554.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657636554.git.linux_oss@crudebyte.com>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
Date: Tue, 12 Jul 2022 16:31:26 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This 9p client implementation is yet using linear message
 buffers for most message types, i.e. they use kmalloc() et al. for allocating
 continuous physical memory pages, which is usually limited to 4M [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oBHdh-00Epqd-Qv
Subject: [V9fs-developer] [PATCH v5 07/11] net/9p: limit 'msize' to
 KMALLOC_MAX_SIZE for all transports
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This 9p client implementation is yet using linear message buffers for
most message types, i.e. they use kmalloc() et al. for allocating
continuous physical memory pages, which is usually limited to 4MB
buffers. Use KMALLOC_MAX_SIZE though instead of a hard coded 4MB for
constraining this more safely.

Unfortunately we cannot simply replace the existing kmalloc() calls by
vmalloc() ones, because that would yield in non-logical kernel addresses
(for any vmalloc(>4MB) that is) which are in general not accessible by
hosts like QEMU.

In future we would replace those linear buffers by scatter/gather lists
to eventually get rid of this limit (struct p9_fcall's sdata member by
p9_fcall_init() and struct p9_fid's rdir member by
v9fs_alloc_rdir_buf()).

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---

Hmm, that's a bit too simple, as we also need a bit of headroom for
transport specific overhead. So maybe this has to be handled by each
transport appropriately instead?

 net/9p/client.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index 20054addd81b..fab939541c81 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1042,6 +1042,17 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
 		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
 
+	/*
+	 * due to linear message buffers being used by client ATM
+	 */
+	if (clnt->msize > KMALLOC_MAX_SIZE) {
+		clnt->msize = KMALLOC_MAX_SIZE;
+		pr_info("Limiting 'msize' to %zu as this is the maximum "
+			"supported by this client version.\n",
+			(size_t) KMALLOC_MAX_SIZE
+		);
+	}
+
 	err = clnt->trans_mod->create(clnt, dev_name, options);
 	if (err)
 		goto put_trans;
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
