Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9E5489722
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 12:15:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6sdl-00069S-2G; Mon, 10 Jan 2022 11:15:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n6sdk-00069M-EN
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 11:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/0pUiq7KFM+daYGEUE294c0IR+pDHWltFcA11lI6wFI=; b=LWEs5tqbII0GWEKViEowlIrhRX
 EDMLepebqsx/uBVN7ysm+OYSW7PSWsrrOfUtBybvl8iNoeePvD+xltKWz8QM88rsWuHlhTZDaBHDG
 /1fhz2ZN3jS4dKVQ+eCzTJlgw9zdurc/bqOHndzoHPPjoFJSBZYpnsi07dBOHwjN1q14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/0pUiq7KFM+daYGEUE294c0IR+pDHWltFcA11lI6wFI=; b=X
 fAkVkVVCnfLwoRtQFponABPFx+OGNREWJ07TUV3flh6Dmq3gEu9NPVqZZTy38zjgx2vCU88HVgg1f
 hpuphIUVJ8NG7Y9fp9xQrlq2KD9Hk73E5WJKZ7rpX9qqREPQMAANFxAjnDF35NZNUun7iFBGUsaVJ
 CNC9JFE7rLen58FM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6sdf-0002hS-Hq
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 11:15:03 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 397D1C01C; Mon, 10 Jan 2022 12:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641813292; bh=/0pUiq7KFM+daYGEUE294c0IR+pDHWltFcA11lI6wFI=;
 h=From:To:Cc:Subject:Date:From;
 b=zci0CAI01UnYDfTTKu/Gesnzf/IXr0qPf+13clr5+FncGR4f9IPqQU/VIC4SO98As
 xG1likKmvBAatcfkq2vGWLp4KBUELajCRoj+4pGBxCCe6Monfp9Xik7xkWNquyBhep
 eCCze1JO6k0Z9Q0y9EYzMWTT0aYXPZ/CeIydVHjox6GnUxMd6/DtVb3eQ1IvKMWF89
 vlcH5nOSRtboHs0DbfZVaaiaSDWRGDO8o/Bmr0xg+87WqMkRf+5aTq5Yl3F2XlbQ1m
 VWJaxaL+OvdFJ9V64X9LCKcGzGHtC3Z//gfSPUc6bL1YMl8VpvrN5yHj5cfMDqDsvl
 N1jJvOX1dXWUQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 9B56FC009;
 Mon, 10 Jan 2022 12:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641813291; bh=/0pUiq7KFM+daYGEUE294c0IR+pDHWltFcA11lI6wFI=;
 h=From:To:Cc:Subject:Date:From;
 b=I+zMu7zaOc9j0Y0BzuDbaY6ben6dzBtUQn7spawp62JEkXCPZoWknW/jKZ0y+1F1W
 f7mWyaUHXNX/gDsd0oV+O2kvJ1Gm0AxbCS/wo0Xomevc+GvLk9hlnlwaMWX3GW9raJ
 6gC1PiSmZ7QVh6Yy0glPIhHRsqbs0Ze8NhJWNkfVoddWBvhYYAUrsLEFivvOJVYj2s
 A7ikFWUAy52udEc9jU1yx56c4kB3kvauGK0OCHQ1kfXE6Y7fqfSTWgZzpZIty/Jm7D
 QXI0i/VumGbbLemp5fYlKOkBVKDVx+QB+5qs8UTH0BB1svbOQNiWbfZxdGLu8VuRai
 avVyRz1FWEGnw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ad3c41fc;
 Mon, 10 Jan 2022 11:14:45 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: dhowells@redhat.com,
	v9fs-developer@lists.sourceforge.net
Date: Mon, 10 Jan 2022 20:14:44 +0900
Message-Id: <20220110111444.926753-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Reading from a file that was just extended by a write, but
 the write had not yet reached the server would return ENODATA as illustrated
 by this command: $ xfs_io -c 'open -ft test' -c 'w 4096 1000' -c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n6sdf-0002hS-Hq
Subject: [V9fs-developer] [PATCH] 9p: fix enodata when reading growing file
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Reading from a file that was just extended by a write, but the write had
not yet reached the server would return ENODATA as illustrated by this
command:
$ xfs_io -c 'open -ft test' -c 'w 4096 1000' -c 'r 0 1000'
wrote 1000/1000 bytes at offset 4096
1000.000000 bytes, 1 ops; 0.0001 sec (5.610 MiB/sec and 5882.3529 ops/sec)
pread: No data available

Fix this case by having netfs assume zeroes when reads from server come
short like AFS and CEPH do

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
Co-authored-by: David Howells <dhowells@redhat.com>
Cc: stable@vger.kernel.org
---
 fs/9p/vfs_addr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index c72e9f8f5f32..9a10e68c5f30 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -43,6 +43,11 @@ static void v9fs_req_issue_op(struct netfs_read_subrequest *subreq)
 	iov_iter_xarray(&to, READ, &rreq->mapping->i_pages, pos, len);
 
 	total = p9_client_read(fid, pos, &to, &err);
+
+	/* if we just extended the file size, any portion not in
+	 * cache won't be on server and is zeroes */
+	__set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
+
 	netfs_subreq_terminated(subreq, err ?: total, false);
 }
 
-- 
2.33.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
