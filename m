Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B7156CF62
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 16:14:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAXhW-00035R-Hz; Sun, 10 Jul 2022 14:14:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1oAXhV-00035G-3w
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 14:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5luTSbCpek4DmkxIhGE2kWN5CmMJaM+dDduiyURuJiM=; b=QbG5T7pdQGLPI40OJY2EFZZGtG
 IhFkoePtcR7B3nLcX00QhzKUekrf6M/XrnyN+xJvTP5mftstSCTOSSELfkmN88euVpKQEdSa7Ucui
 O9rsIO94xjhpmJsl4jZb7X56yIVlVkwuqYKhFsDIyhqq2nFdkc+EZ75Jb5EO5hQSrs14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5luTSbCpek4DmkxIhGE2kWN5CmMJaM+dDduiyURuJiM=; b=H
 wKLuQTn3t7DgYgDRNwyhR3YETMFTQ1jDtT4QW86jc6gxvmvpzrL4H/+08GShVlugBLg8jfrO6CoVx
 kDIqIs/GrMvcOMdKjLyPPJHtN6/brUS7QMB7VcykGdpg7URyFUkdBbCcr2NuuGHrckDztgqq3MsyB
 ykKTWP11tvoAMhLM=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oAXhS-00CsJJ-Ot
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 14:14:21 +0000
Received: from sequoia.devices.tihix.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 2331B204CB25;
 Sun, 10 Jul 2022 07:14:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 2331B204CB25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1657462451;
 bh=5luTSbCpek4DmkxIhGE2kWN5CmMJaM+dDduiyURuJiM=;
 h=From:To:Cc:Subject:Date:From;
 b=X8g5f1YwEVLfXet0rsx6tUQava5LirGnz2lNYN8QO64jhs55r6QAtuqnVuguzmiyC
 jIARGDheEzNVP/VCEoePMloq4Q2GU0OPtClDgSucD/USe4abLW/QZ/mYxVxpIfg8QC
 hTemGUV9IE7DPFG4bxDTQJsxjtxcz762FkC+Gikg=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Sun, 10 Jul 2022 09:14:02 -0500
Message-Id: <20220710141402.803295-1-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Ensure that the fid's iounit field is set to zero when a new
 fid is created. Certain 9P operations, such as OPEN and CREATE, allow the
 server to reply with an iounit size which the client code assigns [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1oAXhS-00CsJJ-Ot
Subject: [V9fs-developer] [PATCH v2] net/9p: Initialize the iounit field
 during fid creation
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ensure that the fid's iounit field is set to zero when a new fid is
created. Certain 9P operations, such as OPEN and CREATE, allow the
server to reply with an iounit size which the client code assigns to the
p9_fid struct shortly after the fid is created by p9_fid_create(). On
the other hand, an XATTRWALK operation doesn't allow for the server to
specify an iounit value. The iounit field of the newly allocated p9_fid
struct remained uninitialized in that case. Depending on allocation
patterns, the iounit value could have been something reasonable that was
carried over from previously freed fids or, in the worst case, could
have been arbitrary values from non-fid related usages of the memory
location.

The bug was detected in the Windows Subsystem for Linux 2 (WSL2) kernel
after the uninitialized iounit field resulted in the typical sequence of
two getxattr(2) syscalls, one to get the size of an xattr and another
after allocating a sufficiently sized buffer to fit the xattr value, to
hit an unexpected ERANGE error in the second call to getxattr(2). An
uninitialized iounit field would sometimes force rsize to be smaller
than the xattr value size in p9_client_read_once() and the 9P server in
WSL refused to chunk up the READ on the attr_fid and, instead, returned
ERANGE to the client. The virtfs server in QEMU seems happy to chunk up
the READ and this problem goes undetected there.

Fixes: ebf46264a004 ("fs/9p: Add support user. xattr")
Cc: stable@vger.kernel.org
Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---

v2:
- Add Fixes tag
- Improve commit message clarity to make it clear that this only affects
  xattr get/set
- kzalloc() the entire fid struct instead of individually zeroing each
  member
  - Thanks to Christophe JAILLET for the suggestion
v1: https://lore.kernel.org/lkml/20220710062557.GA272934@sequoia/

 net/9p/client.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf975..371519e7b885 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -889,16 +889,13 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 	struct p9_fid *fid;
 
 	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
-	fid = kmalloc(sizeof(*fid), GFP_KERNEL);
+	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
 	if (!fid)
 		return NULL;
 
-	memset(&fid->qid, 0, sizeof(fid->qid));
 	fid->mode = -1;
 	fid->uid = current_fsuid();
 	fid->clnt = clnt;
-	fid->rdir = NULL;
-	fid->fid = 0;
 	refcount_set(&fid->count, 1);
 
 	idr_preload(GFP_KERNEL);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
