Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1A664FBAB
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Dec 2022 19:53:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6cIx-0005LL-O3;
	Sat, 17 Dec 2022 18:53:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6cIv-0005LF-RH
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tv8Rf5ihdxdQfuJc2Vv4j++4j0iFH7YIU+fu3T81ngo=; b=BU4CXkN1vugI1FJkqbmsXfLnSH
 F4q6+ew6//e8V4JU7nyxWf+hENhVmEALvkeJNq1Fsmsy15R82sDCQNhQ2jTKfeYl4j92NYwEQgRPw
 14IkM1uqZdLAcErBDS8B1unXSTskDLG/Alkehoq4dMwI7f8ciKuQlJBtSjfkNO0kSr+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tv8Rf5ihdxdQfuJc2Vv4j++4j0iFH7YIU+fu3T81ngo=; b=J0G8XDfsq+rYQrn3cuVAqZdQoR
 LZzD5v3si+uvnjgnjZFNiy1wwgJ2rQ2GiIp6vy2PlUY+2eDySk/Iwc+qEz04O7JtCp9psVGTkvNhz
 wY8JNbg8IYTvkaye+vsg/mOEAaWWZAT7OHG+4Zocw4i/J70NpIMUp+HiPLVovxAzlTUU=;
Received: from ms11p00im-qufo17291601.me.com ([17.58.38.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6cIv-002jTO-9X for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671303172;
 bh=tv8Rf5ihdxdQfuJc2Vv4j++4j0iFH7YIU+fu3T81ngo=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=QgV90wLcmfY0Xy2YR3+w+PEVMBvX4siVZsOdmLkD4Tnf2bMwuhsZb4b2sOgfrmt2v
 lqiki3e6k6RvIUuWiQAAiDI8vldQXGfIo186pzWehYp7mlzpsRBxLw4CILXE/B0+KW
 DWBKF+Prtz7YS+owlLO7NxhuUWyYh2Rz6Lrt48HahcwGWTzQaTa1fjNrQ/oBp5MqYa
 UApSZC13GYyn8DkMWT4nhgCNDDeVjGcueXIReKyCqbMl+LdbaVUryxH/m25xU5i+J5
 DJkUr+zM/VuyK2dIIFA/DDrFcg0Qh+TQtPJbdtW3vsnTj1IPn1ajOJyoNODWE63quK
 tyj4REyPCB2sw==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291601.me.com (Postfix) with ESMTPSA id A8A713A04A7;
 Sat, 17 Dec 2022 18:52:51 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 17 Dec 2022 18:52:09 +0000
Message-Id: <20221217185210.1431478-6-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221217185210.1431478-1-evanhensbergen@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-GUID: RnbgEI1NLLk12Oamr9yrZNdhbhR61zAj
X-Proofpoint-ORIG-GUID: RnbgEI1NLLk12Oamr9yrZNdhbhR61zAj
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 adultscore=0
 mlxlogscore=999 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212170174
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  These flags just add unnecessary extra operations. When 9p
 is run without cache, it inherently implements these options so we don't
 need them in the superblock (which ends up sending extraneous fsyncs [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.45 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p6cIv-002jTO-9X
Subject: [V9fs-developer] [PATCH 5/6] Remove unnecessary superblock flags
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
From: Eric Van Hensbergen via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

These flags just add unnecessary extra operations.
When 9p is run without cache, it inherently implements
these options so we don't need them in the superblock
(which ends up sending extraneous fsyncs, etc.).  User
can still request these options on mount, but we don't
need to set them as default.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
---
 fs/9p/vfs_super.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 266c4693e20c..65d96fa94ba2 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -84,9 +84,7 @@ v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
 		sb->s_bdi->io_pages = v9ses->maxdata >> PAGE_SHIFT;
 	}
 
-	sb->s_flags |= SB_ACTIVE | SB_DIRSYNC;
-	if (!v9ses->cache)
-		sb->s_flags |= SB_SYNCHRONOUS;
+	sb->s_flags |= SB_ACTIVE;
 
 #ifdef CONFIG_9P_FS_POSIX_ACL
 	if ((v9ses->flags & V9FS_ACL_MASK) == V9FS_POSIX_ACL)
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
