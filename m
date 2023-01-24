Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1484F678E52
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:39:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9DX-0007XX-8D;
	Tue, 24 Jan 2023 02:39:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pK9DV-0007XC-Jo
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQ1wIVJNt5DXLKBshV7W2ww1uzBSJEoD/iEzMJIiQpg=; b=UOfS6+zo6YqJiXMnuxyasuC/U9
 UdcF5eymR26d3NRmSyivkIRvBBDE5PE/ga0VaEuPNu9xXXp4wPqyR8rnmI/0G0JmUrsApSSyU3uxE
 IxiO5rphPtYZ9QsvOxXAg1pvUR5i6uGFsrbgDlCRNgx726m5MBAXFV7EdavGdEj3HyL4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fQ1wIVJNt5DXLKBshV7W2ww1uzBSJEoD/iEzMJIiQpg=; b=drqef3tdlP+5kCaujkvyuywLqF
 7jL5os/eiqEHWbIvaE5c7BHHOjNVo8ohFOz93/+zayK/IcbFU28uq6NAc3G7NmZaz02xRAAr/Psw0
 yI831r6oVZhB2dSN9VJffZRX86l7ZHJEqT8D4Dpxs0DgR+cvV14iokzIiZfh15aLEOxc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9DT-0004Yq-Jc for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:39:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 30C6061164;
 Tue, 24 Jan 2023 02:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3336AC433A7;
 Tue, 24 Jan 2023 02:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674527954;
 bh=Ok4fLl47ydowKVxThK8D575DI78XULsYZEvV5sQqQ3E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QM9MKpOSh6OiNoRA4VtS6VKDgYN4katuG5qew4JF+Lwm5t23lbkWshm+aMORugO+8
 kyvSaL090RAAALaxoMAlPTYjYRUAlgdT3NqO+0p7Jc7NhU1G5XuOjlFEgojmkZMlZu
 FdBLlDpBpdccuexoXuo87A5neL/dUJ6hG6AoI7PcMhDftIbwafcjUvgdAcvrIzwfxG
 TWdfYgP9g+57ZGw66wEyy8ja6WEXsUSYMrdOhGDik50Qb6cj8mVU9h2+eVz7CplJeA
 xCeRVntitFR+3lk3CJsTQmf0ulwEAFUe1hgNdDn3i8HP2W7ZuOo7j5UmslKQy+zC86
 BzXcDjHlSySUQ==
From: Eric Van Hensbergen <ericvh@kernel.org>
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Tue, 24 Jan 2023 02:38:29 +0000
Message-Id: <20230124023834.106339-7-ericvh@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We are supposed to set fid->mode to reflect the flags that
 were used to open the file. We were actually setting it to the creation mode
 which is the default perms of the file not the flags the file wa [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pK9DT-0004Yq-Jc
Subject: [V9fs-developer] [PATCH v3 06/11] fix bug in client create for .L
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
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We are supposed to set fid->mode to reflect the flags
that were used to open the file.  We were actually setting
it to the creation mode which is the default perms of the
file not the flags the file was opened with.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 net/9p/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 6c2a768a6ab1..2adcb5e7b0e2 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1293,7 +1293,7 @@ int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
 		 qid->type, qid->path, qid->version, iounit);
 
 	memmove(&ofid->qid, qid, sizeof(struct p9_qid));
-	ofid->mode = mode;
+	ofid->mode = flags;
 	ofid->iounit = iounit;
 
 free_and_error:
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
