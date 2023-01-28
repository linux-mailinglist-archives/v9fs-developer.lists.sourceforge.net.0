Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A0867F90F
	for <lists+v9fs-developer@lfdr.de>; Sat, 28 Jan 2023 16:26:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pLn5n-0000AW-QF;
	Sat, 28 Jan 2023 15:26:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <trix@redhat.com>) id 1pLn5m-0000AF-Ih
 for v9fs-developer@lists.sourceforge.net;
 Sat, 28 Jan 2023 15:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iq/y1QTv41OfHtUj+eR0YkveZjKSMDd8lSSUgPMocJU=; b=KOC6ycxMC/Cx6jb8HKG++OO1Vk
 uognqFVIqjSlJ9w9/rLPGy5YiGXVl0nJ7LL2kzN4kl2ovODT77RLr6206zRlIsJSQtdvMKuzeB76P
 LhCFAb3u8gTXnEUgrhaLo265gC3rMuTSWYNIkhSP7aViNwTNpt1AIsPwRM1kELbZu1Tc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iq/y1QTv41OfHtUj+eR0YkveZjKSMDd8lSSUgPMocJU=; b=J
 Gxn59wt30HkWFGfG6U4lOKr+dR10nQyXZ3vpIfcosVFOwp2sxpXm7Dd/1MwfvbTdvcAs6E4Plfw1J
 lLWsFkMOjuCXIKm07cn+VIwjjM43BCCn+NsMaaV4Xac0+rPmkhWLvYk+p5MCN9hAaDNvjKHJcUYvv
 p84zHO2GR+EMorhQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pLn5f-0003ti-4N for v9fs-developer@lists.sourceforge.net;
 Sat, 28 Jan 2023 15:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674919557;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iq/y1QTv41OfHtUj+eR0YkveZjKSMDd8lSSUgPMocJU=;
 b=gjA9krPraNb6nLxoi78jp+JUb2FV86hMcTk5rJEr9hK6JvWuions3MHSAOehY4d2yMsy6a
 QVVI/m6jZ6Ensj18Nv/dIS5FYQNX8XK81ud0N/+cngRNEYhXl9CHXuX7Em253NfIOFqGmI
 XyfhGea4dUw3uvb3n60CXTfJJmb+T6o=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-660-1qmbkzy4O_GJCP657cnZUg-1; Sat, 28 Jan 2023 10:25:55 -0500
X-MC-Unique: 1qmbkzy4O_GJCP657cnZUg-1
Received: by mail-qk1-f199.google.com with SMTP id
 bp33-20020a05620a45a100b007090e2e1b0cso4906121qkb.16
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 28 Jan 2023 07:25:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iq/y1QTv41OfHtUj+eR0YkveZjKSMDd8lSSUgPMocJU=;
 b=S4KuEd7elLd38zWoCONluMuenzf1RLgCsu3jNYebfObCQHJ0yS/k1zloH1u8OXVtg3
 ARFhBrZaYhkzYsZjxyY+Dr7dPsAXgFlPtlSr07A5VdF8RHAljiphoiJkuO/POjMISXJX
 hc4dWqiumpca8v9fu8TEPGvZDh/vlMg/viatPegk14d1lthU50niz3XeXObgIpqxlCKf
 /fnuuPOWgksI5KByEqaT6raRknnO0U4PVpYneZJggeaG0/D/SS2c+aAJtZBDfLKkBazY
 Qt8vFTloQm/vOQJvHwutahKxaaOjXvUGZo5PzoWk8xezpcKb31Zblwp74sbuMvuWo/x/
 vEgg==
X-Gm-Message-State: AO0yUKU4gYVL5sNaG8fBZrhAXBy1LoUUZBh4NWP4mQ+qYG8YEEBHZr3H
 51G6581L9Yp53ehR5rS9/SpcfU8VeXJSaBPLmB4/8O9Wgbu+KaazeQSyccmnyuQU98Ku9BOTUB/
 UP3Yq+JvqtjGiRJr9/Ar8kI4r7seqIYSDRCM=
X-Received: by 2002:ac8:7f52:0:b0:3b8:53be:e51f with SMTP id
 g18-20020ac87f52000000b003b853bee51fmr1590928qtk.8.1674919555131; 
 Sat, 28 Jan 2023 07:25:55 -0800 (PST)
X-Google-Smtp-Source: AK7set+WWCUaSQResyucKM9xNxLbIuYfnmjyh3J+BnyLvgZQKaX6ZxyzY5bZ9BNdQDEQ6iIGibOtrw==
X-Received: by 2002:ac8:7f52:0:b0:3b8:53be:e51f with SMTP id
 g18-20020ac87f52000000b003b853bee51fmr1590898qtk.8.1674919554901; 
 Sat, 28 Jan 2023 07:25:54 -0800 (PST)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 v3-20020ac87283000000b003b62e9c82ebsm4737008qto.48.2023.01.28.07.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Jan 2023 07:25:54 -0800 (PST)
From: Tom Rix <trix@redhat.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com
Date: Sat, 28 Jan 2023 07:25:49 -0800
Message-Id: <20230128152549.1241870-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: cppcheck reports fs/9p/vfs_dir.c:219:8: style: Local variable
 'retval' shadows outer variable [shadowVariable] int retval =
 file_write_and_wait_range(filp, 
 0, -1); ^ Having another retval decl is not needed, if the initialized 0
 is overwritten by a non 0 value by the call to file_write_and_wait_ranget(),
 the function returns early. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pLn5f-0003ti-4N
Subject: [V9fs-developer] [PATCH] 9p: remove shadow variable retval in
 v9fs_dir_release()
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cppcheck reports
fs/9p/vfs_dir.c:219:8: style: Local variable 'retval' shadows outer variable [shadowVariable]
   int retval = file_write_and_wait_range(filp, 0, -1);
       ^

Having another retval decl is not needed, if the initialized 0 is overwritten by a non 0
value by the call to file_write_and_wait_ranget(), the function returns early.

Fixes: b67c64fb0143 ("fs/9p: Consolidate file operations and add readahead and writeback")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 fs/9p/vfs_dir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 1fc07bb86e6f..a5783afdf31a 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -216,7 +216,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 		 inode, filp, fid ? fid->fid : -1);
 	if (fid) {
 		if ((fid->qid.type == P9_QTFILE) && (filp->f_mode & FMODE_WRITE)) {
-			int retval = file_write_and_wait_range(filp, 0, -1);
+			retval = file_write_and_wait_range(filp, 0, -1);
 
 			if (retval != 0) {
 				p9_debug(P9_DEBUG_ERROR,
-- 
2.26.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
