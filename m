Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C8BB063E8
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Jul 2025 18:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QwmNlarny8oGAy9Rffn6SMB893fcDwAHkXDGUJBpkWg=; b=ZyLxJFv2TIM9dnWayct5mtY3Zz
	bEaeG8XBaJGUJGlLQZo1TpEqnoiEWJKf4VN3ojePw/cqgZ+K+Td001pOqokMxJOzBsLZ3AoDiPp0Z
	LA6V2EVQHNiyX2eIpIT+2IX6TPrXRY2wcqhL+jtuFxx2HhLgaofMiJNe376d27kyOGKI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ubiBh-0006Us-KJ;
	Tue, 15 Jul 2025 16:07:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Sergey.Nalivayko@kaspersky.com>) id 1ubiBg-0006Ug-79
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Jul 2025 16:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9gU0AfKr4YjzUxSgA+NdV2Yg+QJia3Jk/uXqq1EDjVw=; b=WjRplw8bcILapEH80FjZjltBNh
 GUr1BL2nBT4ZGoS62j3dk1ZtPvVetfaE7/ZJwPogF9Q/q3Wjz33lqtaBudfVIl/kov2kcEYQrdMQp
 Yjgw/4Kx5u3/9a3eLu2C5hDvK+XeqZShntO2ktjN5ku3DrTAnm/dfY86tUXy2Ab2H/pA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9gU0AfKr4YjzUxSgA+NdV2Yg+QJia3Jk/uXqq1EDjVw=; b=E
 1RwSWSaPf9BgwuLUMVON5GCVCM+8RbUGy8MP5HEdTfJIgxCP/VIDvNLer30hUrZhJBk4loGm/eA86
 8GFMB9u6ofkg/8Z4wxGY/afHEad48wMZySggKq3Y7oV/2Z4BxQFyX+4Qx6WojIEyjUtAYTr6A6Jgq
 bV2g+zq+Yfm3I+hE=;
Received: from mailhub11-fb.kaspersky-labs.com ([81.19.104.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ubiBf-0008Qm-Av for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Jul 2025 16:07:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaspersky.com;
 s=mail202505; t=1752594650;
 bh=9gU0AfKr4YjzUxSgA+NdV2Yg+QJia3Jk/uXqq1EDjVw=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 b=YAcs6g4if9h5bTvIxcTrEZhUBa0caEL2zuycPJkLI8EHNw8P0efI8D/T0F1WnD/x5
 pipuLoRVm/Tym+itVaEmw3UDMsquv8qVoRdz2NsgL8LjpBDnjJyatpbfXN9HlGyQQr
 drYQAbhdUVLwv0qzl8fbxuxiQ89Gv4BRBJl5CTaB3wg2yE/vNtYC1om6Vty/QaraM0
 RcGrKygg9qg4ycj2+WjbfBOVJ/RwLO7sFgIjugayWupfHNp8VMJIg3oV/Yh79mV1wg
 5bMX6OBv+ZaIu7Ycf0C5rbKwtojeZV4DhEvvQQZP87DXZ67UhzIjfXWhPN2RgGvmNR
 JHYUMSfGwVAgg==
Received: from mailhub11-fb.kaspersky-labs.com (localhost [127.0.0.1])
 by mailhub11-fb.kaspersky-labs.com (Postfix) with ESMTP id 879B5E8E599
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 15 Jul 2025 18:50:50 +0300 (MSK)
Received: from mx13.kaspersky-labs.com (mx13.kaspersky-labs.com
 [91.103.66.164])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "mx13.kaspersky-labs.com",
 Issuer "Kaspersky MailRelays CA G3" (verified OK))
 by mailhub11-fb.kaspersky-labs.com (Postfix) with ESMTPS id 59EAFE8E593
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 15 Jul 2025 18:50:50 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaspersky.com;
 s=mail202505; t=1752594642;
 bh=9gU0AfKr4YjzUxSgA+NdV2Yg+QJia3Jk/uXqq1EDjVw=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 b=GO2ZlztNSJKaJsD+KHDh6kbW37GRJnVMXiae37+puVystSIFNCRg0eA19ewiAk8d5
 kYrAC3O/oKnJEw+v9BF34K6DBtcpmdQkOnttEO9j+UcCQNhAOqE8WP/FbvGsu6kLDH
 jHR60K+31WOndxHEo3sHPctRV6ltqAqqllX6gA6G9G7v/9qKYzuSFHEDG/Yc3/RS0N
 pITSxd3cuEb+Oi4xWt/EaVQ7d59Fm24elpg9lIeduc2XKuUHHZg4MMuPAAG3Ij3JJ8
 Ym9z3xgExFzxOfu40Kt/Jup3D0JFWR1dEMaVo9GTXRypEi7wW6cEiIIkXZN8pHTJ3/
 rhC8cwpKLfmYw==
Received: from relay13.kaspersky-labs.com (localhost [127.0.0.1])
 by relay13.kaspersky-labs.com (Postfix) with ESMTP id E2B503E2085;
 Tue, 15 Jul 2025 18:50:42 +0300 (MSK)
Received: from mail-hq2.kaspersky.com (unknown [91.103.66.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail-hq2.kaspersky.com",
 Issuer "Kaspersky MailRelays CA G3" (verified OK))
 by mailhub13.kaspersky-labs.com (Postfix) with ESMTPS id 2EDD73E21E5;
 Tue, 15 Jul 2025 18:50:42 +0300 (MSK)
Received: from Nalivayko.avp.ru (10.16.106.60) by HQMAILSRV3.avp.ru
 (10.64.57.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 15 Jul
 2025 18:49:50 +0300
To: <v9fs-developer@lists.sourceforge.net>, <netdev@vger.kernel.org>
Date: Tue, 15 Jul 2025 18:48:15 +0300
Message-ID: <20250715154815.3501030-1-Sergey.Nalivayko@kaspersky.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Originating-IP: [10.16.106.60]
X-ClientProxiedBy: HQMAILSRV2.avp.ru (10.64.57.52) To HQMAILSRV3.avp.ru
 (10.64.57.53)
X-KSE-ServerInfo: HQMAILSRV3.avp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 07/15/2025 15:31:12
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 194865 [Jul 15 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: Sergey.Nalivayko@kaspersky.com
X-KSE-AntiSpam-Info: LuaCore: 63 0.3.63
 9cc2b4b18bf16653fda093d2c494e542ac094a39
X-KSE-AntiSpam-Info: {Tracking_cluster_exceptions}
X-KSE-AntiSpam-Info: {Tracking_real_kaspersky_domains}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;
 127.0.0.199:7.1.2; kaspersky.com:5.0.1,7.1.1
X-KSE-AntiSpam-Info: {Tracking_white_helo}
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Deterministic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 07/15/2025 15:33:00
X-KSE-AttachmentFiltering-Interceptor-Info: no applicable attachment filtering
 rules found
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 7/15/2025 2:29:00 PM
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-KSE-AttachmentFiltering-Interceptor-Info: no applicable attachment filtering
 rules found
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-KSMG-AntiPhishing: NotDetected
X-KSMG-AntiSpam-Interceptor-Info: not scanned
X-KSMG-AntiSpam-Status: not scanned, disabled by settings
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.1.1.8310,
 bases: 2025/07/15 13:18:00 #27641879
X-KSMG-AntiVirus-Status: NotDetected, skipped
X-KSMG-LinksScanning: NotDetected
X-KSMG-Message-Action: skipped
X-KSMG-Rule-ID: 52
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reports a KASAN issue as below: general protection
 fault, probably for non-canonical address 0xfbd59c0000000021: 0000 [#1] PREEMPT
 SMP KASAN NOPTI KASAN: maybe wild-memory-access in range
 [0xdead000000000108-0xdead00000000010f] CPU: [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ubiBf-0008Qm-Av
Subject: [V9fs-developer] [PATCH] net: 9p: fix double req put in
 p9_fd_cancelled
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Nalivayko Sergey via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Nalivayko Sergey <Sergey.Nalivayko@kaspersky.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Wang Hai <wanghai38@huawei.com>,
 lvc-project@linuxtesting.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Nalivayko Sergey <Sergey.Nalivayko@kaspersky.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Syzkaller reports a KASAN issue as below:

general protection fault, probably for non-canonical address 0xfbd59c0000000021: 0000 [#1] PREEMPT SMP KASAN NOPTI
KASAN: maybe wild-memory-access in range [0xdead000000000108-0xdead00000000010f]
CPU: 0 PID: 5083 Comm: syz-executor.2 Not tainted 6.1.134-syzkaller-00037-g855bd1d7d838 #0
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
RIP: 0010:__list_del include/linux/list.h:114 [inline]
RIP: 0010:__list_del_entry include/linux/list.h:137 [inline]
RIP: 0010:list_del include/linux/list.h:148 [inline]
RIP: 0010:p9_fd_cancelled+0xe9/0x200 net/9p/trans_fd.c:734

Call Trace:
 <TASK>
 p9_client_flush+0x351/0x440 net/9p/client.c:614
 p9_client_rpc+0xb6b/0xc70 net/9p/client.c:734
 p9_client_version net/9p/client.c:920 [inline]
 p9_client_create+0xb51/0x1240 net/9p/client.c:1027
 v9fs_session_init+0x1f0/0x18f0 fs/9p/v9fs.c:408
 v9fs_mount+0xba/0xcb0 fs/9p/vfs_super.c:126
 legacy_get_tree+0x108/0x220 fs/fs_context.c:632
 vfs_get_tree+0x8e/0x300 fs/super.c:1573
 do_new_mount fs/namespace.c:3056 [inline]
 path_mount+0x6a6/0x1e90 fs/namespace.c:3386
 do_mount fs/namespace.c:3399 [inline]
 __do_sys_mount fs/namespace.c:3607 [inline]
 __se_sys_mount fs/namespace.c:3584 [inline]
 __x64_sys_mount+0x283/0x300 fs/namespace.c:3584
 do_syscall_x64 arch/x86/entry/common.c:51 [inline]
 do_syscall_64+0x35/0x80 arch/x86/entry/common.c:81
 entry_SYSCALL_64_after_hwframe+0x6e/0xd8

This happens because of a race condition between:

- The 9p client sending an invalid flush request and later cleaning it up;
- The 9p client in p9_read_work() canceled all pending requests.

      Thread 1                              Thread 2
    ...
    p9_client_create()
    ...
    p9_fd_create()
    ...
    p9_conn_create()
    ...
    // start Thread 2
    INIT_WORK(&m->rq, p9_read_work);
                                        p9_read_work()
    ...
    p9_client_rpc()
    ...
                                        ...
                                        p9_conn_cancel()
                                        ...
                                        spin_lock(&m->req_lock);
    ...
    p9_fd_cancelled()
    ...
                                        ...
                                        spin_unlock(&m->req_lock);
                                        // status rewrite
                                        p9_client_cb(m->client, req, REQ_STATUS_ERROR)
                                        // first remove
                                        list_del(&req->req_list);
                                        ...

    spin_lock(&m->req_lock)
    ...
    // second remove
    list_del(&req->req_list);
    spin_unlock(&m->req_lock)
  ...

Commit 74d6a5d56629 ("9p/trans_fd: Fix concurrency del of req_list in
p9_fd_cancelled/p9_read_work") fixes a concurrency issue in the 9p filesystem
client where the req_list could be deleted simultaneously by both
p9_read_work and p9_fd_cancelled functions, but for the case where req->status
equals REQ_STATUS_RCVD.

Add an explicit check for REQ_STATUS_ERROR in p9_fd_cancelled before
processing the request. Skip processing if the request is already in the error
state, as it has been removed and its resources cleaned up.

Found by Linux Verification Center (linuxtesting.org) with Syzkaller.
Fixes: afd8d6541155 ("9P: Add cancelled() to the transport functions.")
Cc: stable@vger.kernel.org
Signed-off-by: Nalivayko Sergey <Sergey.Nalivayko@kaspersky.com>
---
 net/9p/trans_fd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index a69422366a23..a6054a392a90 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -721,9 +721,9 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
 
 	spin_lock(&m->req_lock);
 	/* Ignore cancelled request if message has been received
-	 * before lock.
-	 */
-	if (req->status == REQ_STATUS_RCVD) {
+	* or cancelled with error before lock.
+	*/
+	if (req->status == REQ_STATUS_RCVD || req->status == REQ_STATUS_ERROR) {
 		spin_unlock(&m->req_lock);
 		return 0;
 	}
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
