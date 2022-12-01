Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B08E63E85D
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Dec 2022 04:33:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0aKP-0008Ek-Bg;
	Thu, 01 Dec 2022 03:33:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0aKO-0008Ee-SC
 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 03:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9A6IXbc5qL2YaA9Z5Jlm1Xw7WJGjlGvWyIB5OHQsAis=; b=YytHIJfe3HdJdbjBB81u6jK6e1
 iHFiXf/v26BillOdDTVQSDx6Kihdtk+JAh/cIBvLOzzDvVG9NpJO14bvdjdjKgPiAgkXyJhEPcKoF
 fKEPj/eWXSITnJqZNnRMdZ2CA1UHZ0KpdkP1/y/SEInAde/gDwM6QjsIzd1+Y+NsgVXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9A6IXbc5qL2YaA9Z5Jlm1Xw7WJGjlGvWyIB5OHQsAis=; b=b
 ttXGupcBf6xeTiBozramuxFq+03AfF9zJiyOvXa0Cub4CrUvUJhZ1KDX7j7tpZc9Pp+OHZ6pbI/BK
 uqkXIREtxdLCmM0WizC8n8Saqs7KMwnfl3winsxP43ZVpngevxI9aIxACCL/6XyuwIfRoisGUp2yR
 yRFYtj3f+0F06W00=;
Received: from mail-pf1-f179.google.com ([209.85.210.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0aKN-0005En-De for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 03:33:36 +0000
Received: by mail-pf1-f179.google.com with SMTP id q12so655965pfn.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 19:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=9A6IXbc5qL2YaA9Z5Jlm1Xw7WJGjlGvWyIB5OHQsAis=;
 b=YIECMwftpYRiyM1xMWlkbV/0XnyVqrVgBfkT5g1BeEZlHp8wN9/9HGSzQLE9FuJ+cZ
 ItBVplaAUKprUcagA+AcN0wciBHfQk1CI4pBt6YLXN4LpwNxhhlyMm3i9yl3uLuvcmCN
 oaYhWXwnsW+jUZljq8jck4Pf2dXbuiLlQFmlHWwls9pOMS06jFib71hWCe6EfeX1v/DW
 FU2ekH3KVmQyfXu+YYib15vS0stKUJ4Fode/ka8bi200oJLPH0OACQMfWc+lfMsOK/7N
 v3J1x/75CgucbTv8JDPKk+dCioYmF8E6SPPEYoL+5MLF7Ao9sr/CcSRIqD1zPpQ36GBI
 TGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9A6IXbc5qL2YaA9Z5Jlm1Xw7WJGjlGvWyIB5OHQsAis=;
 b=lJ+DcSxvWYsBZA/iJ4Mr1pMbrtGbshQA8Kf3+bAFbRCRbNUwfN+Lm6y5RN2KulWjun
 ZSXbAgbexzUg78XEKBJXtxRiq5sUyXefqKnKltvuYdTheErTHtI7CpI/uRN1q2yR0mg9
 ZT2jST2tR7jeloHagwj/yChYCS7dqeyajSYgs49cfuNN/0dUoJjAYb+T4zw59F03usfa
 Ch7Bh5Esx8CP1guMbH3XJ/MxPOmy2JkyDqQVH7ZYuCq0stX9gqRm8P/v+dB+CeLjjHgV
 RuMkNGlReJQpYIAqJZQZPN3PF6+pbyGqzOc3CB9rAyVllLPAsQV89jicIG0wKBsP7K6I
 XKxA==
X-Gm-Message-State: ANoB5plV61w41sJbMe6sQLjtQCkiB46YjMKbbDyqw5bcEk8BSDHjk1gH
 izMwTLHfeEBd99ZlAJEuXjo=
X-Google-Smtp-Source: AA0mqf4nZdsomMfIQEh7EGH92ODcn4wu9r0Fvi783ledPNVijBn3X5dzfMhdPiv18Im2BFYYXif1ww==
X-Received: by 2002:a62:6d46:0:b0:563:54fd:3638 with SMTP id
 i67-20020a626d46000000b0056354fd3638mr66244570pfc.44.1669865608982; 
 Wed, 30 Nov 2022 19:33:28 -0800 (PST)
Received: from MBP.lan (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 u4-20020a170902714400b0017f756563bcsm2279577plm.47.2022.11.30.19.33.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Nov 2022 19:33:28 -0800 (PST)
From: Schspa Shi <schspa@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Thu,  1 Dec 2022 11:33:10 +0800
Message-Id: <20221201033310.18589-1-schspa@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the new request allocated, the refcount will be zero
 if it is resued one. But if the request is newly allocated from slab, it is
 not fully initialized before add it to idr. If the p9_read_work got a response
 before the refcount initiated. It will use a uninitialized req, which will
 result in a bad request data struct. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.179 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p0aKN-0005En-De
Subject: [V9fs-developer] [PATCH v3] 9p/fd: set req refcount to zero to
 avoid uninitialized usage
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
Cc: v9fs-developer@lists.sourceforge.net, Schspa Shi <schspa@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When the new request allocated, the refcount will be zero if it is resued
one. But if the request is newly allocated from slab, it is not fully
initialized before add it to idr.

If the p9_read_work got a response before the refcount initiated. It will
use a uninitialized req, which will result in a bad request data struct.

Here is the logs from syzbot.

Corrupted memory at 0xffff88807eade00b [ 0xff 0x07 0x00 0x00 0x00 0x00
0x00 0x00 . . . . . . . . ] (in kfence-#110):
 p9_fcall_fini net/9p/client.c:248 [inline]
 p9_req_put net/9p/client.c:396 [inline]
 p9_req_put+0x208/0x250 net/9p/client.c:390
 p9_client_walk+0x247/0x540 net/9p/client.c:1165
 clone_fid fs/9p/fid.h:21 [inline]
 v9fs_fid_xattr_set+0xe4/0x2b0 fs/9p/xattr.c:118
 v9fs_xattr_set fs/9p/xattr.c:100 [inline]
 v9fs_xattr_handler_set+0x6f/0x120 fs/9p/xattr.c:159
 __vfs_setxattr+0x119/0x180 fs/xattr.c:182
 __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:216
 __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:277
 vfs_setxattr+0x143/0x340 fs/xattr.c:309
 setxattr+0x146/0x160 fs/xattr.c:617
 path_setxattr+0x197/0x1c0 fs/xattr.c:636
 __do_sys_setxattr fs/xattr.c:652 [inline]
 __se_sys_setxattr fs/xattr.c:648 [inline]
 __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:648
 do_syscall_32_irqs_on arch/x86/entry/common.c:112 [inline]
 __do_fast_syscall_32+0x65/0xf0 arch/x86/entry/common.c:178
 do_fast_syscall_32+0x33/0x70 arch/x86/entry/common.c:203
 entry_SYSENTER_compat_after_hwframe+0x70/0x82

Below is a similar scenario, the scenario in the syzbot log looks more
complicated than this one, but this patch can fix it.

     T21124                   p9_read_work
======================== second trans =================================
p9_client_walk
  p9_client_rpc
    p9_client_prepare_req
      p9_tag_alloc
        req = kmem_cache_alloc(p9_req_cache, GFP_NOFS);
        tag = idr_alloc
        << preempted >>
        req->tc.tag = tag;
                            /* req->[refcount/tag] == uninitialized */
                            m->rreq = p9_tag_lookup(m->client, m->rc.tag);
                              /* increments uninitalized refcount */

        refcount_set(&req->refcount, 2);
                            /* cb drops one ref */
                            p9_client_cb(req)
                            /* reader thread drops its ref:
                               request is incorrectly freed */
                            p9_req_put(req)
    /* use after free and ref underflow */
    p9_req_put(req)

To fix it, we can initize the refcount to zero before add to idr.

Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com
Signed-off-by: Schspa Shi <schspa@gmail.com>

--

Changelog:
v1 -> v2:
        - Set refcount to fix the problem.
v2 -> v3:
        - Comment messages improve as asmadeus suggested.
---
 net/9p/client.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..ec74cd29d3bc 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -297,6 +297,11 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
 	p9pdu_reset(&req->rc);
 	req->t_err = 0;
 	req->status = REQ_STATUS_ALLOC;
+	/* refcount needs to be set to 0 before inserting into the idr
+	 * so p9_tag_lookup does not accept a request that is not fully
+	 * initialized. refcount_set to 2 below will mark request live.
+	 */
+	refcount_set(&req->refcount, 0);
 	init_waitqueue_head(&req->wq);
 	INIT_LIST_HEAD(&req->req_list);
 
-- 
2.37.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
