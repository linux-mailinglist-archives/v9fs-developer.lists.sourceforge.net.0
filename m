Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F5954EC3F
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 23:10:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1wlQ-0005Mx-Ln; Thu, 16 Jun 2022 21:10:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1wlQ-0005Mr-1E
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 21:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VbuObtaq/Xj/9czX/5l9zKA6V33YfeHnptJycN7lX/0=; b=ZprpP+fdOs0g1yW3Uc4xaUNdcm
 thwY+jnhQO39xW0TpHmHuIQge/Ci0KQ+it94oMLzh2TwkR5pWtX2Bvy9UCottISNLSKDheWNmUdzO
 GzIkqKNeVQ/dYpI9VD6TmnQ7k6vsL541Fn/HQW7IOZG4T8XVA/4Y7eqMrTqUuxepuhXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VbuObtaq/Xj/9czX/5l9zKA6V33YfeHnptJycN7lX/0=; b=Vdh2L266lSeyN16JuH7+SK+z8f
 yJK2Nhkybwg0/5UbKtuSIr75694CTLeP0QZEvEdWZIP0xsw0tbpLC76J4U2qXqYAZaNY5qm+iU+2M
 hxehd8/4PPyWOp70STc1B0kVngTfulkFJSh6hmA+8FhflqAjWBxsOpa4WX1oPGqH1mjU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1wlN-0007xH-TZ
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 21:10:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id F3692C01D; Thu, 16 Jun 2022 23:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655413844; bh=VbuObtaq/Xj/9czX/5l9zKA6V33YfeHnptJycN7lX/0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t2KiccZzHDi58sq19Fwuhtd4F403cMuN761fHNRg6hXigyHJboAPQwI7O5x1Z57UD
 D482Mur4sR6jjYakgtPMy9x0gOo5/0MQE4Xtyuy44OkR4yoCQtfiPEW6nsCmezVava
 RSCnUln2Y3AWxesnZNdwZ9/nBXw6OSMaq3VD4SpeC1Xg4nhkvVAgYwM26ASA4QoeMD
 K3OF0O/rH+ecN2JX8/Stp2tEOLkn5Fio0zhENLij0B2lmyDViQomBn/tjqLs4PDMiv
 5zumaGfcJ94Ui6CUFXhzTlI0TjDNEEggruBpFXNlnWtx5GeqChYv/OtH4wT/jnka7o
 /axCjbS7g3ivQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CF64FC009;
 Thu, 16 Jun 2022 23:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655413844; bh=VbuObtaq/Xj/9czX/5l9zKA6V33YfeHnptJycN7lX/0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t2KiccZzHDi58sq19Fwuhtd4F403cMuN761fHNRg6hXigyHJboAPQwI7O5x1Z57UD
 D482Mur4sR6jjYakgtPMy9x0gOo5/0MQE4Xtyuy44OkR4yoCQtfiPEW6nsCmezVava
 RSCnUln2Y3AWxesnZNdwZ9/nBXw6OSMaq3VD4SpeC1Xg4nhkvVAgYwM26ASA4QoeMD
 K3OF0O/rH+ecN2JX8/Stp2tEOLkn5Fio0zhENLij0B2lmyDViQomBn/tjqLs4PDMiv
 5zumaGfcJ94Ui6CUFXhzTlI0TjDNEEggruBpFXNlnWtx5GeqChYv/OtH4wT/jnka7o
 /axCjbS7g3ivQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ca77515f;
 Thu, 16 Jun 2022 21:10:39 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>
Date: Fri, 17 Jun 2022 06:10:25 +0900
Message-Id: <20220616211025.1790171-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <15767273.MGizftpLG7@silver>
References: <15767273.MGizftpLG7@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  cached operations sometimes need to do invalid operations
 (e.g. read on a write only file) Historic fscache had added a "writeback fid", 
 a special handle opened RW as root, for this. The conversion to [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1wlN-0007xH-TZ
Subject: [V9fs-developer] [PATCH v3] 9p: fix EBADF errors in cached mode
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cached operations sometimes need to do invalid operations (e.g. read
on a write only file)
Historic fscache had added a "writeback fid", a special handle opened
RW as root, for this. The conversion to new fscache missed that bit.

This commit reinstates a slightly lesser variant of the original code
that uses the writeback fid for partial pages backfills if the regular
user fid had been open as WRONLY, and thus would lack read permissions.

Link: https://lkml.kernel.org/r/20220614033802.1606738-1-asmadeus@codewreck.org
Fixes: eb497943fa21 ("9p: Convert to using the netfs helper lib to do reads and caching")
Cc: stable@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>
Reported-By: Christian Schoenebeck <linux_oss@crudebyte.com>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Tested-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
v3: use the least permissive version of the patch that only uses
writeback fid when really required

If no problem shows up by then I'll post this patch around Wed 23 (next
week) with the other stable fixes.

 fs/9p/vfs_addr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index a8f512b44a85..d0833fa69faf 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -58,8 +58,21 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
  */
 static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
 {
+	struct inode *inode = file_inode(file);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
 	struct p9_fid *fid = file->private_data;
 
+	BUG_ON(!fid);
+
+	/* we might need to read from a fid that was opened write-only
+	 * for read-modify-write of page cache, use the writeback fid
+	 * for that */
+	if (rreq->origin == NETFS_READ_FOR_WRITE &&
+			(fid->mode & O_ACCMODE) == O_WRONLY) {
+		fid = v9inode->writeback_fid;
+		BUG_ON(!fid);
+	}
+
 	refcount_inc(&fid->count);
 	rreq->netfs_priv = fid;
 	return 0;
-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
