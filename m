Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6266D3359
	for <lists+v9fs-developer@lfdr.de>; Sat,  1 Apr 2023 21:07:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pigZ0-0007pF-K6;
	Sat, 01 Apr 2023 19:06:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pigYy-0007p6-Gf
 for v9fs-developer@lists.sourceforge.net;
 Sat, 01 Apr 2023 19:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LnneW8hcz5zDgGBwgGKNBslLJRWclA8JNJNRk5+ZHz0=; b=N7FkqySr62NdKr1PZgy5Q1vzVj
 f58zzNUQfRowSdKAETHrOYylkVOxmXUB1Gwmj3Pdj3XvYjiQy9shaVqz2RQSYSIQZUBp9iL8/9Q+p
 W3mc7kP/W/Ym5P8tSfkHLtmOguyWb5/Sp01mnoDvKeKxA3eudapIWFIwk3aoWELMmUaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LnneW8hcz5zDgGBwgGKNBslLJRWclA8JNJNRk5+ZHz0=; b=C
 jNxqVQSpx4zQKJA75gZjRiM0/+QDaSu7kkdN/ulfMAoaNxuen5CH25An9JdjhaLPtyeEVXPGTajBr
 +mBnzPSFVuyxCccekymAXsuRjGwC+0K/n+uuBuMdBjxYe9QtqVP5qppzdAjVNr4ugAygy+YPw22Kz
 vGJlIObFo1h4vsMY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pigYu-00C7wC-3c for v9fs-developer@lists.sourceforge.net;
 Sat, 01 Apr 2023 19:06:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 762DE606A0;
 Sat,  1 Apr 2023 19:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DE49C433EF;
 Sat,  1 Apr 2023 19:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680376002;
 bh=XndH/S9Pym3JldjOAUSU5oSQBK2eeCU0AUtP7DnlHzc=;
 h=From:Date:Subject:To:Cc:From;
 b=keomznfEeSQr3r/Pu7LNejIAgE4nEE3B1/0c00QzMlPh6ZrLtbKYOVcP0ge8ewQRQ
 bSgFc91MPLWJ5UZ4tqPcOh8/yF2fsEhpQSSR9Up3fkWxsmVnxbbA2YSYCrzsjTvIBc
 xU82lD7VWmZMgwmc4iIKLARH0uTaGqbyMcjFVnbEHxyEOozb3QtIgeo56Tb43qj/8f
 X8MJH5nCFW+lXqKFSOHHJoeNYmDGEe+I3usKjqLkc4xzEiBUZlFZeudIaRzML/QXmn
 Pr4/HyNKirZRMSzChLz7mbIRliNejl2WhKVxvvXF53287aBaa/39NToFJr+sdZfHs9
 oZWdWR/MfAdBQ==
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Sat, 01 Apr 2023 19:06:25 +0000
MIME-Version: 1.0
Message-Id: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
X-B4-Tracking: v=1; b=H4sIALCAKGQC/x2LwQ6CQAxEf4X0bOOyLMT4K8ZDWarbg9VsCSEh/
 LuFwxxm5r0NjKuwwb3ZoPIiJl/10l4ayIX0zSiTd4ghdiGFFh3PS8GXrPgh0dnD1fA29KmPPOT
 UEbg8kjGOlTSXQ3ec7aq8zsf5q3wO/jye+/4HjbwjSYUAAAA=
To: v9fs-developer@lists.sourceforge.net
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1457; i=ericvh@kernel.org;
 h=from:subject:message-id; bh=XndH/S9Pym3JldjOAUSU5oSQBK2eeCU0AUtP7DnlHzc=;
 b=owEBbQKS/ZANAwAKAYj/1ftKX/+YAcsmYgBkKIDBiokMrbNDCsIwcCQrElOLAozIyearG27Tl
 zm0HWDRFs6JAjMEAAEKAB0WIQSWlvDRlqWQmKTK0VGI/9X7Sl//mAUCZCiAwQAKCRCI/9X7Sl//
 mCZVEADCtQznRfgLyQ4PG3NZU+Pt3lPCtcFHnjMcKYfCt7eKR3ZvDYzqLzREmMrTMpGB89QsBIC
 e02qgjwDHqBY8FDK6MzDgGeGpCCHcrRmkZbLNYLOCusqIpYl/u/OdGN++L3KQVRp5UYzlZmVScs
 0hFirlFP3AS4a6MTiPoVCZlE06VcAWUwXnFZswz8btRR+8xCnze5zQf/K0pht8bPQ2XAO9vuzuD
 qfPomqT9NokjVSEv0eBJrc9qN/4PCGytNIp5IB6AceXFHBe2eCNKcT/TXDmzr0sOVqJk1cE9Mb5
 GVBTiRddxBF55+IBUE1LVtfmmI65ID/lQID8E+SU3oaNcPUEIy8UGNgeJt9D/DbciEpp7cAcp8P
 eTHZJq/4rW8LrAg3nv48b4G1xvOSvNRCFKwhAulj3baLt2ANHqxYHQpfTLBx2KIKpIi+0eJBvmc
 4BTT0+ajAEeXXKwSzJV0/ZJx802D9x671a8gYHacHlkbU9WWUzpA4vaJ//UMiZsbj+Ir8//cmv8
 WBresUWC+GSP9eGVTu38BPpXZUkQXanRq44pqw3PP3bPOgbyO+g6QibgcUV11npaAhNOQfVIQ+r
 hWYXp3X/39+4vc8Ndvu/JvW5Ko9GGwU9r7rqzvX//JumNvu8j8EXzbOsTVw/CVoL+QWWmqRbkun
 VATV0ZrBZ9uUyvg==
X-Developer-Key: i=ericvh@kernel.org; a=openpgp;
 fpr=9696F0D196A59098A4CAD15188FFD5FB4A5FFF98
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We've recently moved the mailing list to lists.linux.dev to
 move away from the sourceforge infrastructure. This also updates the website
 from the (no longer v9fs relevant?) swik.net address to the git [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pigYu-00C7wC-3c
Subject: [V9fs-developer] [PATCH] Update email address and mailing list for
 v9fs
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
Cc: lucho@ionkov.net, ericvh@gmail.com, v9fs@lists.linux.dev,
 linux_oss@crudebyte.com, rminnich@gmail.com,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We've recently moved the mailing list to lists.linux.dev to move away
from the sourceforge infrastructure.  This also updates the website
from the (no longer v9fs relevant?) swik.net address to the github
group which contains pointers to test cases, the protocol, servers,
etc.  This also changes my email from my gmail to my kernel.org
address.

Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
---
 MAINTAINERS | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8d5bc223f305..6567bae7137b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -224,13 +224,13 @@ S:	Orphan / Obsolete
 F:	drivers/net/ethernet/8390/
 
 9P FILE SYSTEM
-M:	Eric Van Hensbergen <ericvh@gmail.com>
+M:	Eric Van Hensbergen <ericvh@kernel.org>
 M:	Latchesar Ionkov <lucho@ionkov.net>
 M:	Dominique Martinet <asmadeus@codewreck.org>
 R:	Christian Schoenebeck <linux_oss@crudebyte.com>
-L:	v9fs-developer@lists.sourceforge.net
+L:	v9fs@lists.linux.dev <v9fs@lists.linux.dev>
 S:	Maintained
-W:	http://swik.net/v9fs
+W:	http://github.com/v9fs
 Q:	http://patchwork.kernel.org/project/v9fs-devel/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 T:	git git://github.com/martinetd/linux.git

---
base-commit: 707823e7f22f3864ddc7d85e8e9b614afe4f1b16
change-id: 20230401-ericvh-fix-maintainers-865452e6c43a

Best regards,
-- 
Eric Van Hensbergen <ericvh@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
