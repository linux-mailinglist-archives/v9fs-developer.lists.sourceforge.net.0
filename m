Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B42762421D
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Nov 2022 13:19:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ot6Wp-0005Pz-TL;
	Thu, 10 Nov 2022 12:19:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shaozhengchao@huawei.com>) id 1ot6Wm-0005Pl-5u
 for v9fs-developer@lists.sourceforge.net;
 Thu, 10 Nov 2022 12:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bDpoY14+sAKAk2rLSaHjwa44ycEIfeUCKnePfMq6NoE=; b=WD4/nQPWdipCsxtOg2oIH+O35N
 3ZMwMeiptA12Sdo07WJZv+fmTqdSzsKxxmgSy7Z66FwuR7DxlqEBf6ROtc/WdnnebmsuiAS5UmVHz
 we3Sj6N/dXYi74lgyD7it0kxHEYvwHe7aWtsZB5VxYrjCAxuuTpaVvYnCMKwVSGC6i1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bDpoY14+sAKAk2rLSaHjwa44ycEIfeUCKnePfMq6NoE=; b=J
 ggmmgzvyq411mZHlSTSoiY8ZWx2OPW2QRjREsDX1bQb9iTreEIYv1Pk3KSznvwi3CeMmAY6g1YoCo
 lOWaMdV5PV8r2IEKxHcmXW8C252fI6YpJNHBKvaFrP7ahmAEcibRUR/aK2fNOTdmFnDt4yZARMQIB
 KQIdfq+Bvb2PaxE4=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ot6Wf-0001U2-RW for v9fs-developer@lists.sourceforge.net;
 Thu, 10 Nov 2022 12:19:25 +0000
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.57])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4N7LV93zrFz15MMt;
 Thu, 10 Nov 2022 20:18:57 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpeml500026.china.huawei.com
 (7.185.36.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 10 Nov
 2022 20:19:10 +0800
To: <v9fs-developer@lists.sourceforge.net>, <netdev@vger.kernel.org>,
 <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <linux_oss@crudebyte.com>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
Date: Thu, 10 Nov 2022 20:26:06 +0800
Message-ID: <20221110122606.383352-1-shaozhengchao@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpeml500026.china.huawei.com (7.185.36.106)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syz reported the following issue: kernel BUG at
 lib/list_debug.c:53!
 invalid opcode: 0000 [#1] PREEMPT SMP KASAN RIP:
 0010:__list_del_entry_valid.cold+0x5c/0x72
 Call Trace: <TASK> p9_fd_cancel+0xb1/0x [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ot6Wf-0001U2-RW
Subject: [V9fs-developer] [PATCH net] net/9p: fix issue of list_del
 corruption in p9_fd_cancel()
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
From: Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Zhengchao Shao <shaozhengchao@huawei.com>
Cc: yuehaibing@huawei.com, shaozhengchao@huawei.com, weiyongjun1@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Syz reported the following issue:
kernel BUG at lib/list_debug.c:53!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
RIP: 0010:__list_del_entry_valid.cold+0x5c/0x72
Call Trace:
<TASK>
p9_fd_cancel+0xb1/0x270
p9_client_rpc+0x8ea/0xba0
p9_client_create+0x9c0/0xed0
v9fs_session_init+0x1e0/0x1620
v9fs_mount+0xba/0xb80
legacy_get_tree+0x103/0x200
vfs_get_tree+0x89/0x2d0
path_mount+0x4c0/0x1ac0
__x64_sys_mount+0x33b/0x430
do_syscall_64+0x35/0x80
entry_SYSCALL_64_after_hwframe+0x46/0xb0
</TASK>

The process is as follows:
Thread A:                       Thread B:
p9_poll_workfn()                p9_client_create()
...                                 ...
    p9_conn_cancel()                p9_fd_cancel()
        list_del()                      ...
        ...                             list_del()  //list_del
                                                      corruption
There is no lock protection when deleting list in p9_conn_cancel(). After
deleting list in Thread A, thread B will delete the same list again. It
will cause issue of list_del corruption.

Fixes: 52f1c45dde91 ("9p: trans_fd/p9_conn_cancel: drop client lock earlier")
Reported-by: syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com
Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
---
v2: set req status when removing list
---
 net/9p/trans_fd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 56a186768750..bd28e63d7666 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -202,9 +202,11 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
 
 	list_for_each_entry_safe(req, rtmp, &m->req_list, req_list) {
 		list_move(&req->req_list, &cancel_list);
+		req->status = REQ_STATUS_ERROR;
 	}
 	list_for_each_entry_safe(req, rtmp, &m->unsent_req_list, req_list) {
 		list_move(&req->req_list, &cancel_list);
+		req->status = REQ_STATUS_ERROR;
 	}
 
 	spin_unlock(&m->req_lock);
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
