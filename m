Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C4363D64A
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 14:09:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0MqE-0002hn-VC;
	Wed, 30 Nov 2022 13:09:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0Mq5-0002hA-Ip
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:09:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h6U6pKxwnhQVoSAmRgs97bjo6brEZhCoz3DBdXGke2Q=; b=Ms5o5OTqEdCBY6fC3jC1bCbxWb
 Ej0FpeYm7dVf3qEQPT6R2j4C/TNvcctMo+IIQKjTJ467C42oB3ndZ9F0+qN1cyypPOAQOau2HsUbf
 U7Hm5j78iTXL7BPD9Qx6fkSTBYcMxLOjv3phyGMf9XBBv2O5Ixvx5SceX9AttwVi1le8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h6U6pKxwnhQVoSAmRgs97bjo6brEZhCoz3DBdXGke2Q=; b=Y
 wAS5vhwoZndSMMreb+yHAmQNZnKSLeJDoDAFs2X2O31uiOmMEQqIZH71RwrYxCx+8GJR1pC5R4xUa
 5HHQ1xbtZ9GQ9CL70Wa9/aM1ie0VKcOqOXoBRoRDTaYlBIs1HrrldWrjBJA/TmySqNu7IATK+cEmo
 BFl8mvv0w9lwsXX8=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0Mq3-0008Me-Ru for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:09:25 +0000
Received: by mail-pf1-f182.google.com with SMTP id 124so729527pfy.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 05:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=h6U6pKxwnhQVoSAmRgs97bjo6brEZhCoz3DBdXGke2Q=;
 b=KmxDmulFwNTac6Q+zCbGcDrpFOdQrVDF8PNUNp+WReBqzsGE1xVM9k5ojobtdP00tO
 KnOSxiePV1PqkXSfHda2d9VJQrj+psLYTcMvGIjhs4xLm9J2MksN6/B0j7sPGTO9MYBj
 8kf/JUN19+BQA7EB/P0v4cEtzp4eBJNekp418K1wWp9DCQkrXDaMp3f526s3JC0Q8/YO
 eph9WwVU3dD0NUMd8gC5CrMkgAOLvX+uasbw9N3Wm+IQbCtH5nsLPg1isgf4XMSJI2fK
 hOTwqGDFOQgvL7PiVRabtxPVg+xM9oQVe1JNSSQ4bT/hShfTye/B48FSkCJioSm7Xuib
 QVhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=h6U6pKxwnhQVoSAmRgs97bjo6brEZhCoz3DBdXGke2Q=;
 b=leNf9WtDCXo1UCh8dBdqz5Vk8JrgoHRV1CYhSt1DpEGcpO88KMnOVeej61VG9EgUAw
 JowQx1Xxs3SJcApZJDLnIfkIP207FkfpW5/hMqJFpMuGmMt27ZF/PJUdNueBp6fAxW4m
 uw+jLBBLTdHtNACQ8eqeqfLNUuexXOqzz1HejMYBGJW1tkpLKkkW+5UbgaNjsbry3Shd
 Mh3cNZARNM0c5xTgJWeeNOwOtXl8LOU+K92onXT56xGUU6e7kk6xmMiotZcaBh1+WXHq
 81AtVmes6z1X9yVNcOWiEEs7wSoydOdRQGEogwFuFhFCiZYkWlfWJ7RLxLWvrQ/zS4S0
 70fA==
X-Gm-Message-State: ANoB5pmWhoRIYThaz4rm+Gp2HwR9rRakWX/0dfmMahAwdyfkI7JxuaHj
 TxIa0fawU+6OISMHH+wmnwU=
X-Google-Smtp-Source: AA0mqf7jil2oLqYE/pjfkA2t4sBYT+buNYBPj+vXowPApj2brdy8weMJGlARFcMZbKJeDEfjT22AHw==
X-Received: by 2002:a65:6c11:0:b0:477:2bc0:f1b with SMTP id
 y17-20020a656c11000000b004772bc00f1bmr35640254pgu.566.1669813758143; 
 Wed, 30 Nov 2022 05:09:18 -0800 (PST)
Received: from MBP.lan (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 w81-20020a627b54000000b0057255b7c8easm1372539pfc.33.2022.11.30.05.09.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Nov 2022 05:09:17 -0800 (PST)
From: Schspa Shi <schspa@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Wed, 30 Nov 2022 21:08:31 +0800
Message-Id: <20221130130830.97199-1-schspa@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the transport layer of fs cancels the request, it is
 deleted from the client side. But the server can send a response with the
 freed tag. When the new request allocated, we add it to idr, and use the id
 form idr as tag, which will have the same tag with high probability. Then
 initialize the refcount after adding it to idr. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p0Mq3-0008Me-Ru
Subject: [V9fs-developer] [PATCH v2] 9p/fd: set req refcount to zero to
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

When the transport layer of fs cancels the request, it is deleted from the
client side. But the server can send a response with the freed tag.

When the new request allocated, we add it to idr, and use the id form idr
as tag, which will have the same tag with high probability. Then initialize
the refcount after adding it to idr.

If the p9_read_work got a response before the refcount initiated. It will
use a uninitialized req, which will result in a bad request data struct.

There is the logs from syzbot.

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
complicated than this one, but this patch seems can fix it.

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
                            /* req->[refcount/tag] == uninitilzed */
                            m->rreq = p9_tag_lookup(m->client, m->rc.tag);

        refcount_set(&req->refcount, 2);
                            << do response/error >>
                            p9_req_put(m->client, m->rreq);
                            /* req->refcount == 1 */

    /* req->refcount == 1 */
    << got a bad refcount >>

To fix it, we can initize the refcount to zero before add to idr.

Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com

Signed-off-by: Schspa Shi <schspa@gmail.com>
---
 net/9p/client.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..a72cb597a8ab 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -297,6 +297,10 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
 	p9pdu_reset(&req->rc);
 	req->t_err = 0;
 	req->status = REQ_STATUS_ALLOC;
+	/* p9_tag_lookup relies on this refcount to be zero to avoid
+	 * getting a freed request.
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
