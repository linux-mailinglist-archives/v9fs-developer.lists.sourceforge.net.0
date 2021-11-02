Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E544432D1
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 17:36:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhwln-0007a6-D6; Tue, 02 Nov 2021 16:36:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dominique.martinet@codewreck.org>)
 id 1mhwll-0007Zz-Jf
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZxB///K86VbQ8iIChU2p/DTkuii3gYDZaeYcn50m9AA=; b=fXBmZjEqL/TEYOQ+ng7/5ui1/E
 kfTNswm/e59WziG2KChqez7kLHviqQEHsyzCcVRzo5jSOyxW5Pv4fWc08qoSTtmkVXtQdVfkXPbjL
 lg+WNLUyJod9qwPHcBQvPJb80YilZuI6vn1g3jMfn/PTD4NRMQtsWX50X4zKK0R6M85s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZxB///K86VbQ8iIChU2p/DTkuii3gYDZaeYcn50m9AA=; b=m0QUzDZdLqsAimvUTEi3Xu2Gqg
 UwGVSJJ1c0Qr82paTXFH9woReu3PHSlEyfGAau1/k5JOx8VuIumrRTqniHMo3YPCtaQwGy93UVWF4
 m/HidyMEGGMa7+FLHjpf85CKIXn8OqgOQBl+lCHJgzWz0bFH7G70wRA2L3Mmg3tYMfks=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhwlj-00FAId-On
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:36:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 93804C020; Tue,  2 Nov 2021 15:08:41 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 48EDAC009;
 Tue,  2 Nov 2021 15:08:36 +0100 (CET)
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id efde8c5c;
 Tue, 2 Nov 2021 13:46:12 +0000 (UTC)
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue,  2 Nov 2021 22:46:05 +0900
Message-Id: <20211102134608.1588018-2-dominique.martinet@atmark-techno.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211102134608.1588018-1-dominique.martinet@atmark-techno.com>
References: <20211102134608.1588018-1-dominique.martinet@atmark-techno.com>
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dominique Martinet <asmadeus@codewreck.org> - add
 missing
 SPDX-License-Identifier - remove (sometimes incorrect) file name from file
 header Signed-off-by: Dominique Martinet <asmadeus@codewreck.org> ---
 fs/9p/acl.c
 | 10 +--------- fs/9p/acl.h | 10 +--------- fs/9p/v9fs.c | 2 --
 fs/9p/vfs_addr.c
 | 2 -- fs/9p/vfs_dentry.c | 2 -- fs/9p/vfs_d [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mhwlj-00FAId-On
Subject: [V9fs-developer] [PATCH 1/4] 9p: fix file headers
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Dominique Martinet <asmadeus@codewreck.org>

- add missing SPDX-License-Identifier
- remove (sometimes incorrect) file name from file header

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---
 fs/9p/acl.c                | 10 +---------
 fs/9p/acl.h                | 10 +---------
 fs/9p/v9fs.c               |  2 --
 fs/9p/vfs_addr.c           |  2 --
 fs/9p/vfs_dentry.c         |  2 --
 fs/9p/vfs_dir.c            |  2 --
 fs/9p/vfs_file.c           |  2 --
 fs/9p/vfs_inode.c          |  2 --
 fs/9p/vfs_inode_dotl.c     |  2 --
 fs/9p/vfs_super.c          |  4 ----
 fs/9p/xattr.c              | 10 +---------
 fs/9p/xattr.h              | 10 +---------
 include/net/9p/9p.h        |  2 --
 include/net/9p/client.h    |  2 --
 include/net/9p/transport.h |  2 --
 net/9p/client.c            |  2 --
 net/9p/error.c             |  2 --
 net/9p/mod.c               |  2 --
 net/9p/protocol.c          |  2 --
 net/9p/protocol.h          |  2 --
 net/9p/trans_common.c      | 10 +---------
 net/9p/trans_common.h      | 10 +---------
 net/9p/trans_fd.c          |  2 --
 net/9p/trans_rdma.c        |  2 --
 net/9p/trans_xen.c         | 25 +------------------------
 25 files changed, 7 insertions(+), 116 deletions(-)

diff --git a/fs/9p/acl.c b/fs/9p/acl.c
index c381499f5416..d2ce7b7be93f 100644
--- a/fs/9p/acl.c
+++ b/fs/9p/acl.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: LGPL-2.1
 /*
  * Copyright IBM Corporation, 2010
  * Author Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- *
  */
 
 #include <linux/module.h>
diff --git a/fs/9p/acl.h b/fs/9p/acl.h
index d43c8949e807..cc741945c160 100644
--- a/fs/9p/acl.h
+++ b/fs/9p/acl.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: LGPL-2.1 */
 /*
  * Copyright IBM Corporation, 2010
  * Author Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- *
  */
 #ifndef FS_9P_ACL_H
 #define FS_9P_ACL_H
diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index cf5eacbf4e2f..0973d7a3536b 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/v9fs.c
- *
  *  This file contains functions assisting in mapping VFS to 9P2000
  *
  *  Copyright (C) 2004-2008 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 2a2368d83868..fc8feb4f320e 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/vfs_addr.c
- *
  * This file contians vfs address (mmap) ops for 9P2000.
  *
  *  Copyright (C) 2005 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_dentry.c b/fs/9p/vfs_dentry.c
index 4b4292123b3d..a0b660e47e46 100644
--- a/fs/9p/vfs_dentry.c
+++ b/fs/9p/vfs_dentry.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/vfs_dentry.c
- *
  * This file contians vfs dentry ops for the 9P2000 protocol.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 61b29bad6d9a..8c854d8cb0cd 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * linux/fs/9p/vfs_dir.c
- *
  * This file contains vfs directory ops for the 9P2000 protocol.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 8d5e0ef5518e..07aad7d6a09a 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/vfs_file.c
- *
  * This file contians vfs file ops for 9P2000.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 08f48b70a741..441f62d22064 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/vfs_inode.c
- *
  * This file contains vfs inode ops for the 9P2000 protocol.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 01b9e1281a29..272dddcbcde6 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/vfs_inode_dotl.c
- *
  * This file contains vfs inode ops for the 9P2000.L protocol.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 5fce6e30bc5a..c6028af51925 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -1,9 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  linux/fs/9p/vfs_super.c
- *
- * This file contians superblock ops for 9P2000. It is intended that
- * you mount this file system on directories.
  *
  *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
  *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index ee331845e2c7..a824441b95a2 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: LGPL-2.1
 /*
  * Copyright IBM Corporation, 2010
  * Author Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- *
  */
 
 #include <linux/module.h>
diff --git a/fs/9p/xattr.h b/fs/9p/xattr.h
index c63c3bea5de5..e097f0f112d6 100644
--- a/fs/9p/xattr.h
+++ b/fs/9p/xattr.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: LGPL-2.1 */
 /*
  * Copyright IBM Corporation, 2010
  * Author Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- *
  */
 #ifndef FS_9P_XATTR_H
 #define FS_9P_XATTR_H
diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 03614de86942..ff2b7f408966 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * include/net/9p/9p.h
- *
  * 9P protocol definitions.
  *
  *  Copyright (C) 2005 by Latchesar Ionkov <lucho@ionkov.net>
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index e1c308d8d288..2675b8413b5e 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * include/net/9p/client.h
- *
  * 9P Client Definitions
  *
  *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/include/net/9p/transport.h b/include/net/9p/transport.h
index 581555d88cba..86845e965efe 100644
--- a/include/net/9p/transport.h
+++ b/include/net/9p/transport.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * include/net/9p/transport.h
- *
  * Transport Definition
  *
  *  Copyright (C) 2005 by Latchesar Ionkov <lucho@ionkov.net>
diff --git a/net/9p/client.c b/net/9p/client.c
index 7973267ec846..fc480a230efa 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * net/9p/clnt.c
- *
  * 9P Client
  *
  *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/net/9p/error.c b/net/9p/error.c
index 61c18daf3050..a962217fc158 100644
--- a/net/9p/error.c
+++ b/net/9p/error.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * linux/fs/9p/error.c
- *
  * Error string handling
  *
  * Plan 9 uses error strings, Unix uses error numbers.  These functions
diff --git a/net/9p/mod.c b/net/9p/mod.c
index aa38b8b0e0f6..d38358c085ff 100644
--- a/net/9p/mod.c
+++ b/net/9p/mod.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- *  net/9p/9p.c
- *
  *  9P entry point
  *
  *  Copyright (C) 2007 by Latchesar Ionkov <lucho@ionkov.net>
diff --git a/net/9p/protocol.c b/net/9p/protocol.c
index 03593eb240d8..ba2a72c4655e 100644
--- a/net/9p/protocol.c
+++ b/net/9p/protocol.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * net/9p/protocol.c
- *
  * 9P Protocol Support Code
  *
  *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/net/9p/protocol.h b/net/9p/protocol.h
index 6835f91cfda5..39eab817f03d 100644
--- a/net/9p/protocol.h
+++ b/net/9p/protocol.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * net/9p/protocol.h
- *
  * 9P Protocol Support Code
  *
  *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
diff --git a/net/9p/trans_common.c b/net/9p/trans_common.c
index 6ea5ea548cd4..c827f694551c 100644
--- a/net/9p/trans_common.c
+++ b/net/9p/trans_common.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: LGPL-2.1
 /*
  * Copyright IBM Corporation, 2010
  * Author Venkateswararao Jujjuri <jvrao@linux.vnet.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- *
  */
 
 #include <linux/mm.h>
diff --git a/net/9p/trans_common.h b/net/9p/trans_common.h
index c43babb3f635..bab083353ad9 100644
--- a/net/9p/trans_common.h
+++ b/net/9p/trans_common.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: LGPL-2.1 */
 /*
  * Copyright IBM Corporation, 2010
  * Author Venkateswararao Jujjuri <jvrao@linux.vnet.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- *
  */
 
 void p9_release_pages(struct page **, int);
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 007bbcc68010..827c47620fc0 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * linux/fs/9p/trans_fd.c
- *
  * Fd transport layer.  Includes deprecated socket layer.
  *
  *  Copyright (C) 2006 by Russ Cox <rsc@swtch.com>
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 480fd27760d7..88e563826674 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * linux/fs/9p/trans_rdma.c
- *
  * RDMA transport layer based on the trans_fd.c implementation.
  *
  *  Copyright (C) 2008 by Tom Tucker <tom@opengridcomputing.com>
diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
index e264dcee019a..2418fa0b58f3 100644
--- a/net/9p/trans_xen.c
+++ b/net/9p/trans_xen.c
@@ -1,33 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/fs/9p/trans_xen
  *
  * Xen transport layer.
  *
  * Copyright (C) 2017 by Stefano Stabellini <stefano@aporeto.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation; or, when distributed
- * separately from the Linux kernel or incorporated into other
- * software packages, subject to the following license:
- *
- * Permission is hereby granted, free of charge, to any person obtaining a copy
- * of this source file (the "Software"), to deal in the Software without
- * restriction, including without limitation the rights to use, copy, modify,
- * merge, publish, distribute, sublicense, and/or sell copies of the Software,
- * and to permit persons to whom the Software is furnished to do so, subject to
- * the following conditions:
- *
- * The above copyright notice and this permission notice shall be included in
- * all copies or substantial portions of the Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
- * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
- * IN THE SOFTWARE.
  */
 
 #include <xen/events.h>
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
