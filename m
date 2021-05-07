Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B64376D93
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 May 2021 02:00:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lfAOE-0001I2-In; Sat, 08 May 2021 00:00:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <changbin.du@gmail.com>) id 1lfAOD-0001Hq-2Y
 for v9fs-developer@lists.sourceforge.net; Sat, 08 May 2021 00:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dJj97jkvQvwH6GYyD+oH0hFSOaDbSE3kGZhZ3gTOaVQ=; b=myNXFMm5TJrahszFTG0xTT4/Fb
 eWdwxi/CsXVS/nRglwx8Y35CqZTPuNb3YMl55p2x5BZw8xsb9aguudp+MYNsAFThPf3Pi1LlLWg6O
 wZltM4htX3BYCE14tq4MDvz9UdaG1zZ0YxGvBmNASukro/v1879jOROfv3TS3wHYYeA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dJj97jkvQvwH6GYyD+oH0hFSOaDbSE3kGZhZ3gTOaVQ=; b=FvA95hpwzzby48OHz2QGrN+ali
 g7g37ywo+WrXuDv8mDix5x/eyKzFFu73sDFcg9ST2v4zzEszPJxzWGiqsf21sM1syQrhWwzstHE+b
 PKVTDMpTzqDC+kq4fJ5ZWoVeb/0FtAoGNf9WE35wnYgkWYg39WX22uDmy172aYh7VQXI=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lfAO6-00BYKe-FM
 for v9fs-developer@lists.sourceforge.net; Sat, 08 May 2021 00:00:13 +0000
Received: by mail-pf1-f181.google.com with SMTP id b15so9022725pfl.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 May 2021 17:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dJj97jkvQvwH6GYyD+oH0hFSOaDbSE3kGZhZ3gTOaVQ=;
 b=P43Oy7ADdjz4gKlFHryvy+Rc6INiDXFKSgCRsY0iP4iXCWfVDOvaGfsRpiN1gBQ7WJ
 VTCJS7yFmXvEcYLLoyebbFl1FD59YAdckR3ZztgZv8UcavQ7Rk8eWwBOEA4+SsrxzmZI
 SohKSMvO9vdocxGKP3noQ7+iCGhc3sILdsdVYGars2gqDquaK8CGuGugXTzkhetJKpdu
 XdhzaFALETIew8B1nNODJfrgo2YfBdWJO5Ac8Co23DiZ+v2KFLancpfTruZPAaiVIWOY
 aNgNzWjzrHEESLoQ+GCTUTCg4aVa+h2kGH01rLrUDLSlU17SWEB/0NUyaz9iCZHlTB1H
 LuCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dJj97jkvQvwH6GYyD+oH0hFSOaDbSE3kGZhZ3gTOaVQ=;
 b=qbdHrGZlOvfUcK1S8efPXsVgZgrQRabOPEf2opWwC/xkDsIn/rsUykDV432aQHkMat
 lHBhRpagGVeZKW+QAPGl9soiEei6VRyaq/9ZdwYzJylqDD8Jj9N9JyuRWZ6dlL8dNHwH
 oEVP6TLBD7ShH/GpLeusLL66rNPJMGdfJwRue5guWP3zT/1GSCu63gcfDYQ5OtcBi2Pf
 3VWwxotamV8xtdiyErxy7zlzTHZ8aacLVbPozxZ/DLDfUXSTFdB5FqtKPwGKd9Nkdw+H
 FCkirYaU9tdhC9d3jWo2tZJgBumhnLVdxFpyBzT+ByhIq2MhR+4aRzqioKIsfq4GhsxJ
 mg/Q==
X-Gm-Message-State: AOAM531QtUPR6j3+ZS32z6Ijy71+9xod12zOxf197fkxkrjosUnjnzHT
 0d8G76w7aLnPOGbSRLBY5X8=
X-Google-Smtp-Source: ABdhPJzMYCdvdJw/UR15P6oE1JRGjf2gHcMpVb+lQ+cJfrbRMLnSB6PJJ53fipovNahHip2ZZQwy7A==
X-Received: by 2002:a62:25c4:0:b029:276:a40:5729 with SMTP id
 l187-20020a6225c40000b02902760a405729mr12980832pfl.80.1620432000944; 
 Fri, 07 May 2021 17:00:00 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id g18sm5700449pfb.178.2021.05.07.16.59.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 17:00:00 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Sat,  8 May 2021 07:58:42 +0800
Message-Id: <20210507235842.16796-4-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210507235842.16796-1-changbin.du@gmail.com>
References: <20210507235842.16796-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfAO6-00BYKe-FM
Subject: [V9fs-developer] [PATCH v2 3/3] 9p: doc: add v9fsroot description
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
index 2d22e2af4d10..8c585d387f61 100644
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
