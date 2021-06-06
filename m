Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EA339D2B8
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Jun 2021 03:48:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lq4NL-0005ol-Pf; Mon, 07 Jun 2021 01:48:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <changbin.du@gmail.com>) id 1lq4NJ-0005oX-Mi
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:48:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZECU1hyLVhQ0N+f9XI70I4J7ouuREDQIplmH8m1W4O0=; b=es+E0OQ2NbirBJDh8cTMMFAPRY
 0sdPp/YWMn16w0+NadXMcQpI7HENu9z+cdudpJ2w4mnzd3576QYiIM6F7yd/8MRiYGfHL1Pezu3dg
 I15Qne+nClriWkPXQKNB52uWIcTi5YP38AV24uXpo/uRWhqhFI9yZIIExQBrZzCC6uNo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZECU1hyLVhQ0N+f9XI70I4J7ouuREDQIplmH8m1W4O0=; b=WytssTyDrhPvqfBXBfVrA2oBRC
 51frImW9yzMKwh78S1Yd5dW8usvS+epr/Bj8ryVtY6Z/ItQCQnARHGH5mtyJKqUX6ivlUdGTOlCOp
 dJ6Ke81fu5Ghmx6RQeWUT7v6WqIRqFgn/sGlk8MQNZ1SVWxBz0pm7I/MJFxlKM/OrSus=;
Received: from mail-pl1-f173.google.com ([209.85.214.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lq4NG-00Bi0s-Fb
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:48:23 +0000
Received: by mail-pl1-f173.google.com with SMTP id c13so7791356plz.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 06 Jun 2021 18:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZECU1hyLVhQ0N+f9XI70I4J7ouuREDQIplmH8m1W4O0=;
 b=haUJDGuQWHq5YmEUB2WfHb9icntfo7knpg7VbBQgYzUQKCiIXG3U7JBU7GzOReMSjV
 8BiM4CwMjLNCUUqW4JqMCI8dsLY4xZOryphC4vuG9cVLq211jMMGlJaSQv++eI/GhhJN
 z4aKXwxrGJymSwLJMk9cTx1ONXB1cRBgdcYOoG+2jsClE0kzenu4bDpjQ39sBjgMam4S
 4sPyKAIKengDEjKJ2ZCLRk0+bM2eif83iz2MeYG8xTdwwaTY5/gyAXWY83CL3mzOU7UZ
 2cToJvNap5us8E9uHLzt6LaJosGP5rxRXQudZ3ZALIZBszqGiJhWKCaygLQKJDLS4XX2
 L9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZECU1hyLVhQ0N+f9XI70I4J7ouuREDQIplmH8m1W4O0=;
 b=bdwflFuEWtqxBS9sesko77CeLyG3/osZtEfrG15Y7rSSZfSK7qzsniTpyjI6c4jqav
 WNvD+//lcXDuWTn0d/jUmGUHiIH0EogXhdjMcfw+G50UQX550gKEz38n5fxS5t0iyrlc
 bRKECV4wkRFr4WcWpa4yL88khT13eo2NhzBqiNEh0lOsSIsbdonmAgHvuQ+JMnyzhDfC
 AM21NxRDkHSc+RcenHg4vb/Wt/ws1/GUD3iTBZJC04fniPbKfF2wui/iDqVM5kvBiYHd
 C3NGE0DSxZ8Iw5ER3A+l9v0tSPw5IfY348pwD0e8pK2jV6I8f+P85LAbvlpqR5KyMSl7
 ZaqQ==
X-Gm-Message-State: AOAM533ca1SRHI/+U8VLAHY6GqoNkoMV3NxyEBFjCjvzr+PEf4vml2OV
 HxVzrQsk/RDKMLecaxal6m6uKAuJMm3TeQ==
X-Google-Smtp-Source: ABdhPJzkD/YoZsDgMrwOfbOPHQUVN6m5e4E4JOzyke2xiAjlFiNdNIpHpKp85iONY4AZRLDxhNkk+w==
X-Received: by 2002:a17:902:b218:b029:f4:4b88:a44a with SMTP id
 t24-20020a170902b218b02900f44b88a44amr15379885plr.52.1623021001446; 
 Sun, 06 Jun 2021 16:10:01 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id f15sm6775672pgg.23.2021.06.06.16.09.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 16:10:01 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon,  7 Jun 2021 07:09:22 +0800
Message-Id: <20210606230922.77268-4-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210606230922.77268-1-changbin.du@gmail.com>
References: <20210606230922.77268-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lq4NG-00Bi0s-Fb
Subject: [V9fs-developer] [PATCH v3 3/3] 9p: doc: add v9fsroot description
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
Cc: linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>, v9fs-developer@lists.sourceforge.net,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This documentation is modified from cifs/cifsroot.rst.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 Documentation/filesystems/v9fs/index.rst    |  1 +
 Documentation/filesystems/v9fs/v9fsroot.rst | 52 +++++++++++++++++++++
 MAINTAINERS                                 |  1 +
 3 files changed, 54 insertions(+)
 create mode 100644 Documentation/filesystems/v9fs/v9fsroot.rst

diff --git a/Documentation/filesystems/v9fs/index.rst b/Documentation/filesystems/v9fs/index.rst
index a1e45b89e2a2..65e1ceb04c9c 100644
--- a/Documentation/filesystems/v9fs/index.rst
+++ b/Documentation/filesystems/v9fs/index.rst
@@ -9,3 +9,4 @@ v9fs
    :numbered:
 
    9p
+   v9fsroot
diff --git a/Documentation/filesystems/v9fs/v9fsroot.rst b/Documentation/filesystems/v9fs/v9fsroot.rst
new file mode 100644
index 000000000000..ce6b3c85e301
--- /dev/null
+++ b/Documentation/filesystems/v9fs/v9fsroot.rst
@@ -0,0 +1,52 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==========================================
+Mounting root file system via v9fs (9p.ko)
+==========================================
+
+:Author: Changbin Du <changbin.du@gmail.com>
+
+The CONFIG_9P_FS_ROOT option enables experimental root file system
+support for v9fs.
+
+It introduces a new kernel command-line option called 'v9fsroot='
+which will tell the kernel to mount the root file system by
+utilizing the 9p protocol.
+
+
+Kernel command line
+===================
+
+::
+
+    root=/dev/v9fs
+
+This is just a virtual device that basically tells the kernel to mount
+the root file system via 9p protocol.
+
+::
+
+    v9fsroot=<path>[,options]
+
+Enables the kernel to mount the root file system via 9p specified in this
+option.
+
+path
+	Could be a remote file server, Plan 9 From User Space applications
+	or mount tag of virtio transport.
+
+options
+	Optional mount options.
+
+Examples
+========
+Test it under QEMU on a kernel built with CONFIG_9P_FS_ROOT and
+CONFIG_IP_PNP options enabled::
+
+    # qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
+    -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
+    -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
+    -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"
+
+The above example mounts v9fs with tag 'r' as rootfs in qemu guest via
+virtio transport.
diff --git a/MAINTAINERS b/MAINTAINERS
index 3da44eef1471..dfcee6dfe182 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -243,6 +243,7 @@ F:	net/9p/
 R:	Changbin Du <changbin.du@gmail.com>
 S:	Supported
 F:	fs/9p/v9fsroot.c
+F:	Documentation/filesystems/v9fs/v9fsroot.rst
 
 A8293 MEDIA DRIVER
 M:	Antti Palosaari <crope@iki.fi>
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
