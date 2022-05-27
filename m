Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B27B5356E8
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:00:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNPN-0000j5-Je; Fri, 27 May 2022 00:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNPL-0000io-JM
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yXi1WGiCy9BLSBAV0/nUcn1Q6XY2f9IytAcNKCT0ldE=; b=T87NS3L42gIqnnyu7PDs/BLrUE
 EGjWNJHktPnD0qOkUUfPsnv8M77b8BtdFPpJTFXHDX5CU4xpmXsTMjG8lTY1gDULX7/z0e+vz4ugD
 cWkQsneHi/JEkcbSPul3bD232tFKJEwgAb94gDK3ek2qxtswK0IJl7JiKQ88/piVmYLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yXi1WGiCy9BLSBAV0/nUcn1Q6XY2f9IytAcNKCT0ldE=; b=FErASBpECSrN9oFFdve3QuckLh
 WfEQ6E8Gmd2F4IE4BarMA2ToR8/vQRbWWRTk5oRUWOLr6Q0DXhlg4JnTFGIfKnqGPTJ5bEP7sSKpj
 rTCQrT0R6zteQ1ph7cLrt+SZmDfz/xJ2AjHIoEg7KF2O2sM2D0gh33LjtdFIZsCgv0Tc=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNPJ-003L4t-Es
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:45 +0000
Received: from sequoia.corp.microsoft.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 2B59520B894E;
 Thu, 26 May 2022 17:00:33 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 2B59520B894E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609633;
 bh=yXi1WGiCy9BLSBAV0/nUcn1Q6XY2f9IytAcNKCT0ldE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JPVlWctq92O8hM0R654SAHPmKsSHY42k7UK+R1Rle+ZGMvFRyNcjnfqnzJKwC7FtB
 IbibTty/LulnMDsB3fPAXu/X7sEGoO3s2gjZEboI8+ovK9BxzBki6QaJKvfgzP4Kh3
 NtA+AMKQofdBs/1vvF9gadI0Cj0uuRGg1kjmHGnU=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 26 May 2022 19:00:03 -0500
Message-Id: <20220527000003.355812-6-tyhicks@linux.microsoft.com>
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
 Content preview: Fix s/patch/path/ typo and make it clear that we're talking
 about multiple path components. Signed-off-by: Tyler Hicks
 <tyhicks@linux.microsoft.com>
 --- fs/9p/fid.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
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
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nuNPJ-003L4t-Es
Subject: [V9fs-developer] [PATCH v2 5/5] 9p: Fix minor typo in code comment
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

Fix s/patch/path/ typo and make it clear that we're talking about
multiple path components.

Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---
 fs/9p/fid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index d8c70c4cd3c2..60fc62081598 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -219,7 +219,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		l = min(n - i, P9_MAXWELEM);
 		/*
 		 * We need to hold rename lock when doing a multipath
-		 * walk to ensure none of the patch component change
+		 * walk to ensure none of the path components change
 		 */
 		fid = p9_client_walk(old_fid, l, &wnames[i],
 				     old_fid == root_fid);
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
