Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F966B51D0
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Mar 2023 21:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pajLp-0002eb-6o;
	Fri, 10 Mar 2023 20:28:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1pajLl-0002eU-Ve
 for v9fs-developer@lists.sourceforge.net;
 Fri, 10 Mar 2023 20:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nj5Pya6YtC6FZkwNt6VTrCVc/MqS8ZrcuQEjsXDc0Os=; b=jjVMD98LxTTxT2PpK4oa/v2VE6
 ng1iXxcUcjQ4dzAjvI/x92uRW6YQRQb0c+2cuUh+Flm/wQ5XU0ehFVunCZ/R5nWd3dLv7ppAcdQCE
 4MT67iJzo/+6eGnrvdvelKetFbBxhmy6eSv8hSMC+1N3VBNYxI9DccnfbnqV3EX+td9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nj5Pya6YtC6FZkwNt6VTrCVc/MqS8ZrcuQEjsXDc0Os=; b=F
 YzWowXd/y8xUf3VvtH1+xWGjue/S8ooE+PWXJfGMK7mXFuxc8X2Us9i5i4fFvbLIWqQTeTQeAe1k3
 qtYgKakVMYSgdWqzCc++FDbucFJnm4KlCjGZSEVl11EE7PRUOFoFksatUuI8b7mg1dRpLPIqa27m9
 p4UVaLf38BQEz2ds=;
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pajLj-003vrX-DZ for v9fs-developer@lists.sourceforge.net;
 Fri, 10 Mar 2023 20:28:26 +0000
Received: by mail-ed1-f43.google.com with SMTP id i34so25371216eda.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Mar 2023 12:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678480097;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Nj5Pya6YtC6FZkwNt6VTrCVc/MqS8ZrcuQEjsXDc0Os=;
 b=JFvBWiv4O29p9nkvZSyqySeXpLFWrG/dvB8Xwadh0onr6XyucS682UvOyAD2WFt2+Z
 m+K0SA8O4Fivr18xiFdKwVSXouWTNf0AdrQNHTrM5G1heBYP9CfrPfB81JZ22yp8A24R
 xygIOCHAnxYWNvHA02XbLsa0szktm21/HsHEpZanepim9l0UYc1fdHQnsRXE5Q8xSbLq
 FKGHM4kkXEowNcwDs+O1x64Enm8hzlKAJ4VOOO6B7lwHxdUvknRQHOOK9uw+RYjKY5pl
 8cNM95rZ4oW7iG2a8xJXNzY4tJZ54GDQhPnmzhYNvF1Qesv3Q2l1GBosJUlFVX993vM+
 xa3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678480097;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Nj5Pya6YtC6FZkwNt6VTrCVc/MqS8ZrcuQEjsXDc0Os=;
 b=lssFAp4xqZNHDtwKT8mLjnYjt9L+u60+nj0164nHPy3KAd7T49pnbcyUI1+O25WVMF
 IyfKb4WrTfJOxPgsuKLeiM0aRwne3nqGOjghkb9NZxAIyzWvgKP0W7aFoo73feN665kn
 brT+5yMUi1VXKiLpK6n6Xw+zzSfcCJCgTCbKbwKlJlNDivXNgW6sun+ztrBRoTF8Cif7
 feNWSYhOHDd+VTnhl1YKWe8PqYzZrKyuhz4nR30oBF61ugw6VO/h0QH/VLOAUvwm7qB8
 SjuaENElMjmtqByCQ2LAXQnIbDHpXUJhHuAD0UmuLAXxdAzOMPA+RDs0LTMnBilIqROA
 u6Ig==
X-Gm-Message-State: AO0yUKVKZd+LUHg1yS5pH4G4mSQvbErzEIg+gkUsfKDmi4QhVL86DWMC
 I6OcXnWNts94mbdX4CO8Nww=
X-Google-Smtp-Source: AK7set/7HZ8W4oEzbgBOxclON9yaE4uHyP6GY9Kv1zpo6Of02/JFJNnPOCT6n6xfDGMxnkAjfBNAYQ==
X-Received: by 2002:a17:906:208a:b0:889:d24e:6017 with SMTP id
 10-20020a170906208a00b00889d24e6017mr3644384ejq.3.1678480096443; 
 Fri, 10 Mar 2023 12:28:16 -0800 (PST)
Received: from ivan-HLYL-WXX9.. ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 xa6-20020a170907b9c600b008b26f3d45fbsm260551ejc.143.2023.03.10.12.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Mar 2023 12:28:16 -0800 (PST)
From: Ivan Orlov <ivan.orlov0322@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com
Date: Sat, 11 Mar 2023 00:26:19 +0400
Message-Id: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pajLj-003vrX-DZ
Subject: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
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
 linux-kernel-mentees@lists.linuxfoundation.org, himadrispandya@gmail.com
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

This patch will modify the condition in the 'v9fs_fid_xattr_get'
function, so it will return an error if the 'attr_size' is larger
than SSIZE_MAX.

Reported-by: syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=fbbef66d9e4d096242f3617de5d14d12705b4659
Signed-off-by: Ivan Orlov <ivan.orlov0322@gmail.com>
---
 fs/9p/xattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index 50f7f3f6b55e..d6f7450107a8 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -35,7 +35,7 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
 		return retval;
 	}
 	if (attr_size > buffer_size) {
-		if (!buffer_size) /* request to get the attr_size */
+		if (!buffer_size && attr_size <= (u64) SSIZE_MAX) /* request to get the attr_size */
 			retval = attr_size;
 		else
 			retval = -ERANGE;
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
