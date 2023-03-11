Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8DC6B58F9
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 07:34:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pasoR-0005lg-Nv;
	Sat, 11 Mar 2023 06:34:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1pasoQ-0005lY-30
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 06:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=30swHnKIN+jIFvRvtkwwf91dt5wPLQTt2b8IT3CLZQU=; b=Ij1r3onsKUUQAGGiEWHAgeAdYr
 TCQULloc7yjVv+O7yYB8/RIRTTZxnzXfqfTudmIgqCXmwTJ/XY71qlBUpeljgor29w9KO4evtS0Lv
 6c4qGdIrioGEaaCWZFEYmlF1qU5OqhUAA+Tw/mAf8f2PjMMgWs0E2UwfYOyXunXpER+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=30swHnKIN+jIFvRvtkwwf91dt5wPLQTt2b8IT3CLZQU=; b=g
 DTK/ySgG/m4IaqVBS+q0OYAU8qAjgoie8LVo1jsO+x9nx6cm0i1x7qi+J7AKDCe3ccub8JP0vmAt2
 cQ036HGReb5XCp4f0DWYim51dQ66FzbmAdF37kCSWOHLnjcV7ymKVi+d676+wRC+2b7c3epWm3QAJ
 5ccnvkWdRR+LtrK4=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pasoN-004RPg-EH for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 06:34:39 +0000
Received: by mail-ed1-f44.google.com with SMTP id er25so1084913edb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Mar 2023 22:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678516469;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=30swHnKIN+jIFvRvtkwwf91dt5wPLQTt2b8IT3CLZQU=;
 b=kG1dWIaq6ffBsaLcL7TH6rxOfBoF4IsAAAkbKbFc6NQD38+2A1zQymOLWKZ72bZHJY
 6yM9Kgc7MHHPWAoZlFcc/Yrt4DPgsXwukJ/Jep8hyKCwObeCPYHm6CsSDheUfV+q8C27
 NhhE65P7iSmmwSJnrieiiPTDyCTrVbqFVB+ooLen3VZ9QpRki2hNZSYskZeLo8Ak6ZtT
 vNQVUafhd7eDTAd9F3I+pklVKMClH/atScGnzITyr3aFyWtsKEIDH0Iv4jLjtUWY5GT3
 t2rwlZ9Mrw8xOQDmJ54xQmPnrUkh7GTNw5o39O0PlvdQPl0OiBxQy8tsFOqW7cfFuBoH
 N8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678516469;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=30swHnKIN+jIFvRvtkwwf91dt5wPLQTt2b8IT3CLZQU=;
 b=qJz8CNDA141GS98Sb67VURzv1aIrNyWtaIYerPdPymyYyWzEl/VOh5xBPLDAU81fC4
 fTlbreB+/HDLaTeddFRNvJ9elhwLNspZ0yv069r2LrpEAbj9yY23PcdjW14NE/WoSqAL
 ju7qZ37NzGiwxKXIq2/dlSMYakfuq1/1ih0Bx3M56lWAL/f7UeSTD8254g4CoYlM4fj5
 FN2wBYeuwHRXDfFyoRM64TnM1C7SVPBT+uRkn2Rt2OFvBHHCUTKLUmdFNh7ZRdKgcXVK
 JuHdBl76jfY3aqaspytHOPYPMLllbgKQnCMxidKzLxrZu8RYstL8ObCqRM61OOy+Yn7P
 7X0g==
X-Gm-Message-State: AO0yUKUVxSFJG/Gf+TAJmE2R31z5lN2UazFjZ66QVhxsz0tiTAOUM4eK
 ofDpwn6fk9MNS3Gjn9g/61U=
X-Google-Smtp-Source: AK7set9Cdn36F612qHzIDj2VO6b1Y3SmxJhRAR1oSJh26tUfrkCWCdgjoNjerHoLPAoP6FloxC/rUQ==
X-Received: by 2002:a17:906:1097:b0:8b1:4141:8a30 with SMTP id
 u23-20020a170906109700b008b141418a30mr4923013eju.6.1678516468713; 
 Fri, 10 Mar 2023 22:34:28 -0800 (PST)
Received: from ivan-HLYL-WXX9.. ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 sg42-20020a170907a42a00b009202ce3c8adsm493368ejc.27.2023.03.10.22.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Mar 2023 22:34:28 -0800 (PST)
From: Ivan Orlov <ivan.orlov0322@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com
Date: Sat, 11 Mar 2023 10:34:11 +0400
Message-Id: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: KASAN reported the following issue: [ 36.825817][ T5923] BUG:
 KASAN: wild-memory-access in v9fs_get_acl+0x1a4/0x390 [ 36.827479][ T5923]
 Write of size 4 at addr 9fffeb37f97f1c00 by task syz-executor79 [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pasoN-004RPg-EH
Subject: [V9fs-developer] [PATCH v2] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: Ivan Orlov <ivan.orlov0322@gmail.com>, linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, v9fs-developer@lists.sourceforge.net,
 himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

KASAN reported the following issue:
[   36.825817][ T5923] BUG: KASAN: wild-memory-access in v9fs_get_acl+0x1a4/0x390
[   36.827479][ T5923] Write of size 4 at addr 9fffeb37f97f1c00 by task syz-executor798/5923
[   36.829303][ T5923]
[   36.829846][ T5923] CPU: 0 PID: 5923 Comm: syz-executor798 Not tainted 6.2.0-syzkaller-18302-g596b6b709632 #0
[   36.832110][ T5923] Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
[   36.834464][ T5923] Call trace:
[   36.835196][ T5923]  dump_backtrace+0x1c8/0x1f4
[   36.836229][ T5923]  show_stack+0x2c/0x3c
[   36.837100][ T5923]  dump_stack_lvl+0xd0/0x124
[   36.838103][ T5923]  print_report+0xe4/0x4c0
[   36.839068][ T5923]  kasan_report+0xd4/0x130
[   36.840052][ T5923]  kasan_check_range+0x264/0x2a4
[   36.841199][ T5923]  __kasan_check_write+0x2c/0x3c
[   36.842216][ T5923]  v9fs_get_acl+0x1a4/0x390
[   36.843232][ T5923]  v9fs_mount+0x77c/0xa5c
[   36.844163][ T5923]  legacy_get_tree+0xd4/0x16c
[   36.845173][ T5923]  vfs_get_tree+0x90/0x274
[   36.846137][ T5923]  do_new_mount+0x25c/0x8c8
[   36.847066][ T5923]  path_mount+0x590/0xe58
[   36.848147][ T5923]  __arm64_sys_mount+0x45c/0x594
[   36.849273][ T5923]  invoke_syscall+0x98/0x2c0
[   36.850421][ T5923]  el0_svc_common+0x138/0x258
[   36.851397][ T5923]  do_el0_svc+0x64/0x198
[   36.852398][ T5923]  el0_svc+0x58/0x168
[   36.853224][ T5923]  el0t_64_sync_handler+0x84/0xf0
[   36.854293][ T5923]  el0t_64_sync+0x190/0x194

Calling '__v9fs_get_acl' method in 'v9fs_get_acl' creates the
following chain of function calls:

__v9fs_get_acl
	v9fs_fid_get_acl
		v9fs_fid_xattr_get
			p9_client_xattrwalk

Function p9_client_xattrwalk accepts a pointer to u64-typed
variable attr_size and puts some u64 value into it. However,
after the executing the p9_client_xattrwalk, in some circumstances
we assign the value of u64-typed variable 'attr_size' to the
variable 'retval', which we will return. However, the type of
'retval' is ssize_t, and if the value of attr_size is larger
than SSIZE_MAX, we will face the signed type overflow. If the
overflow occurs, the result of v9fs_fid_xattr_get may be
negative, but not classified as an error. When we try to allocate
an acl with 'broken' size we receive an error, but don't process
it. When we try to free this acl, we face the 'wild-memory-access'
error (because it wasn't allocated).

This patch will add new condition to the 'v9fs_fid_xattr_get'
function, so it will return an EOVERFLOW error if the 'attr_size'
is larger than SSIZE_MAX.

In this version of the patch I removed explicit type conversion and
added separate condition to check the possible overflow and return
an error (in v1 version I've just modified the existing condition).

Reported-by: syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=fbbef66d9e4d096242f3617de5d14d12705b4659
Signed-off-by: Ivan Orlov <ivan.orlov0322@gmail.com>
---
 fs/9p/xattr.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index 50f7f3f6b55e..6affd6b3f5e6 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -35,10 +35,14 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
 		return retval;
 	}
 	if (attr_size > buffer_size) {
-		if (!buffer_size) /* request to get the attr_size */
-			retval = attr_size;
-		else
+		if (!buffer_size) {/* request to get the attr_size */
+			if (attr_size > SSIZE_MAX)
+				retval = -EOVERFLOW;
+			else
+				retval = attr_size;
+		} else {
 			retval = -ERANGE;
+		}
 	} else {
 		iov_iter_truncate(&to, attr_size);
 		retval = p9_client_read(attr_fid, 0, &to, &err);
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
