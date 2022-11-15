Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6466297E7
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 13:02:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ouuda-0004SF-AQ;
	Tue, 15 Nov 2022 12:01:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangpeng362@huawei.com>) id 1ouudX-0004S8-Cq
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 12:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r+dDAejIpOzWK/twCb3kw5A7Stk7zRAfE4+gijcGOQE=; b=Ds8gMSxsgrdefE7O/e1Uyrn75b
 heigLepPuycCPvGimprjkxJ1q7xWV/9Tk7UDsdU7RS3MxF1owAzdVOo50YbxpfjBoRwJw4Zfxcm6z
 McZlOfMxg0+vz4CpvMkyVSqWfwKH8UTnXG0WXJjDqMWowl6U1UMdS96hvVNyTzip2NTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r+dDAejIpOzWK/twCb3kw5A7Stk7zRAfE4+gijcGOQE=; b=i
 zNpoY/h5jM49PJ/7uLU5n/bk7mcA5KdWrzeFt+Ml1vFKKvWLY4oWPm8L7m3DMD1L3imKzhp2CMVIl
 Hph/HUQhHejLHaLb5OC31Xn7P2soj0v2KKdehGeAmiMz43pm8Ht+jwYd6f15+viHgIHrRmoXtdwqY
 +qnaguLx1+RwiQbM=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouudS-0093Hm-WC for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 12:01:55 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NBPsW30K6zmW1D;
 Tue, 15 Nov 2022 20:01:19 +0800 (CST)
Received: from kwepemm600020.china.huawei.com (7.193.23.147) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 20:01:39 +0800
Received: from localhost.localdomain (10.175.112.125) by
 kwepemm600020.china.huawei.com (7.193.23.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 20:01:38 +0800
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>, <dhowells@redhat.com>, <jlayton@kernel.org>,
 <v9fs-developer@lists.sourceforge.net>
Date: Tue, 15 Nov 2022 12:27:01 +0000
Message-ID: <20221115122701.2117502-1-zhangpeng362@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.125]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm600020.china.huawei.com (7.193.23.147)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: ZhangPeng <zhangpeng362@huawei.com> Syzbot reported
 slab-out-of-bounds Read in __fscache_acquire_volume.
 ==================================================================
 BUG: KASAN: slab-out-of-bounds in memcmp+0x16f/0x1c0 lib/string.c:757 Read
 of size 8 at addr ffff888016f3aa90 by task syz-executor344 [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ouudS-0093Hm-WC
Subject: [V9fs-developer] [PATCH] fscache: fix OOB Read in
 __fscache_acquire_volume
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
From: Peng Zhang via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Peng Zhang <zhangpeng362@huawei.com>
Cc: syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, ZhangPeng <zhangpeng362@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: ZhangPeng <zhangpeng362@huawei.com>

Syzbot reported slab-out-of-bounds Read in __fscache_acquire_volume.

==================================================================
BUG: KASAN: slab-out-of-bounds in memcmp+0x16f/0x1c0 lib/string.c:757
Read of size 8 at addr ffff888016f3aa90 by task syz-executor344/3613

CPU: 0 PID: 3613 Comm: syz-executor344 Not tainted
6.0.0-rc2-syzkaller-00327-g8379c0b31fbc #0
Hardware name: Google Compute Engine/Google Compute Engine, BIOS
Google 07/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:317 [inline]
 print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
 kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
 memcmp+0x16f/0x1c0 lib/string.c:757
 memcmp include/linux/fortify-string.h:420 [inline]
 fscache_volume_same fs/fscache/volume.c:133 [inline]
 fscache_hash_volume fs/fscache/volume.c:171 [inline]
 __fscache_acquire_volume+0x76c/0x1080 fs/fscache/volume.c:328
 fscache_acquire_volume include/linux/fscache.h:204 [inline]
 v9fs_cache_session_get_cookie+0x143/0x240 fs/9p/cache.c:34
 v9fs_session_init+0x1166/0x1810 fs/9p/v9fs.c:473
 v9fs_mount+0xba/0xc90 fs/9p/vfs_super.c:126
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f7d5064b1d9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 14 00 00 90 48 89 f8 48 89
f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01
f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd1700c028 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffd1700c060 RCX: 00007f7d5064b1d9
RDX: 0000000020000040 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000020000200 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000000f4240
R13: 0000000000000000 R14: 00007ffd1700c04c R15: 00007ffd1700c050
==================================================================

The type of a->key[0] is char. If the length of cache volume key is
greater than 127, the value of a->key[0] is less than 0. In this case,
klen becomes much larger than 255 after type conversion, because the
type of klen is size_t. As a result, memcmp() is read out of bounds. Fix
this by adding a check on the length of the key in
v9fs_cache_session_get_cookie().

Reported-by: syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com
Fixes: 24e42e32d347 ("9p: Use fscache indexing rewrite and reenable caching")
Signed-off-by: ZhangPeng <zhangpeng362@huawei.com>
---
 fs/9p/cache.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/9p/cache.c b/fs/9p/cache.c
index cebba4eaa0b5..2688840b734e 100644
--- a/fs/9p/cache.c
+++ b/fs/9p/cache.c
@@ -21,12 +21,20 @@ int v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses,
 {
 	struct fscache_volume *vcookie;
 	char *name, *p;
+	size_t nlen;
 
 	name = kasprintf(GFP_KERNEL, "9p,%s,%s",
 			 dev_name, v9ses->cachetag ?: v9ses->aname);
 	if (!name)
 		return -ENOMEM;
 
+	nlen = strlen(name);
+	if (nlen > 127) {
+		pr_err("Invalid cache volume key length: %d\n", nlen);
+		kfree(name);
+		return -EINVAL;
+	}
+
 	for (p = name; *p; p++)
 		if (*p == '/')
 			*p = ';';
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
