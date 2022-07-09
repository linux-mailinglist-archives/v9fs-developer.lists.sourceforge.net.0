Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1306156CB4B
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jul 2022 22:00:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAGd0-0005lD-1z; Sat, 09 Jul 2022 20:00:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1oAGcx-0005l3-VW
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 20:00:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0/4/je5F3ph2qO9T5M9uqjsKhrJMFF9mOYX6DBCeVVI=; b=eV9pl7f+oCs8IQmHxL8MoZfME/
 s6OSx73MzGUONYvNGArYX8B7TyekyaYmXyHj6CNfFCw44cpbbmMJRs2zgu7X9huD+377t6mp/nKmv
 1wf5YY3vi44j7wrPunTZmr7Z7NR2+swQc1Ho3Z3MTdfOmRcjA8Jo+bB39fc/qKTXO+5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0/4/je5F3ph2qO9T5M9uqjsKhrJMFF9mOYX6DBCeVVI=; b=H
 ZI2J49KEsr2gJ87AJadGp6RE/vLYAbhGepN9Hd+F2P2bPLQn6/ka49J1RFRLnQ4of4wnIOXESe+6e
 g2wUJCaFcAwRdjyoSfAJ0rpXp3g7RcThNlcn0gy1LTtlpaTLVRjiYU2oCuqWjj79dsWMoCwqfsblD
 XOXAOiWalKObgYG4=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oAGcu-00CG00-B2
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 20:00:32 +0000
Received: from sequoia.devices.tihix.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id AC919204C8E0;
 Sat,  9 Jul 2022 13:00:18 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com AC919204C8E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1657396819;
 bh=0/4/je5F3ph2qO9T5M9uqjsKhrJMFF9mOYX6DBCeVVI=;
 h=From:To:Cc:Subject:Date:From;
 b=WwAVohwjMEHgPxZC8fl/YVpl7hgLuB3Ct1y5ziEld3gJ5uEsMj6vCC0cCBu3Dp7ih
 VSHgbFIzLHlkoc8NIssRqOYG4OviGqXv49J/OBO9QtU7me0jYqpcT1KMMLGvqDmqe6
 8jdmkB7MWMeAbmYcLMWWtX0+QxOXQPWlaPeUUKpg=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat,  9 Jul 2022 15:00:05 -0500
Message-Id: <20220709200005.681861-1-tyhicks@linux.microsoft.com>
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
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Headers-End: 1oAGcu-00CG00-B2
Subject: [V9fs-developer] [PATCH] net/9p: Initialize the iounit field during
 fid creation
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
fid struct shortly after the fid is created in p9_fid_create(). Other
operations that follow a call to p9_fid_create(), such as an XATTRWALK,
don't include an iounit value in the reply message from the server. In
the latter case, the iounit field remained uninitialized. Depending on
allocation patterns, the iounit value could have been something
reasonable that was carried over from previously freed fids or, in the
worst case, could have been arbitrary values from non-fid related usages
of the memory location.

The bug was detected in the Windows Subsystem for Linux 2 (WSL2) kernel
after the uninitialized iounit field resulted in the typical sequence of
two getxattr(2) syscalls, one to get the size of an xattr and another
after allocating a sufficiently sized buffer to fit the xattr value, to
hit an unexpected ERANGE error in the second call to getxattr(2). An
uninitialized iounit field would sometimes force rsize to be smaller
than the xattr value size in p9_client_read_once() and the 9P server in
WSL refused to chunk up the READ on the attr_fid and, instead, returned
ERANGE to the client. The virtfs server in QEMU seems happy to chunk up
the READ and this problem goes undetected there. However, there are
likely other non-xattr implications of this bug that could cause
inefficient communication between the client and server.

Cc: stable@vger.kernel.org
Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---

Note that I haven't had a chance to identify when this bug was
introduced so I don't yet have a proper Fixes tag. The history looked a
little tricky to me but I'll have another look in the coming days. We
started hitting this bug after trying to move from linux-5.10.y to
linux-5.15.y but I didn't see any obvious changes between those two
series. I'm not confident of this theory but perhaps the fid refcounting
changes impacted the fid allocation patterns enough to uncover the
latent bug?

 net/9p/client.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf975..1dfceb9154f7 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -899,6 +899,7 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
 	fid->clnt = clnt;
 	fid->rdir = NULL;
 	fid->fid = 0;
+	fid->iounit = 0;
 	refcount_set(&fid->count, 1);
 
 	idr_preload(GFP_KERNEL);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
