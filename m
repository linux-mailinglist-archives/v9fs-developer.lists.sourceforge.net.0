Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 596AF16172C
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Feb 2020 17:13:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1j3j11-0005uC-02; Mon, 17 Feb 2020 16:12:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@bombadil.infradead.org>) id 1j3j10-0005u5-P1
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Feb 2020 16:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G8lDDv1JK8b0jHvPwyJYj+kHxvR8kXxKB1b/XhJcnWw=; b=kuJ0TyP24Zcarcu3kv83HypGKS
 Tfw87pGaoDjPtDO753CubTWcyFp5egD4YlCrcGfBso4/pGF6kiIb7k8tnkobweseP9VakcupfDayo
 8T/SfOE5+9EUElGmOFyRR7du85KmQhan4I4bUoXHAmEywLzj/xNnMGDyCwRU8r9Flz/8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G8lDDv1JK8b0jHvPwyJYj+kHxvR8kXxKB1b/XhJcnWw=; b=jTmxPFDBamz1B46wP+v9QW1eIU
 ZxBg2IHRzY4B3DOswDNK6ozWkL7o6x4cI57AprFNsdtqj6YicoINy1EidrEpg/nj4fqBm9VaQRGZe
 d9LnOOJLvKuxdrAiqO6vNDYMmmAg5aOi3BANU1tYBl2hA9nF2na5P6OjnvqmrR70Ke9c=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j3j0x-00Feev-AJ
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Feb 2020 16:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=G8lDDv1JK8b0jHvPwyJYj+kHxvR8kXxKB1b/XhJcnWw=; b=HyJvKOEFutvgV3wfePY1Ucs+29
 O1NCk/l6TVNSE4JdpekjkxQY5LiP1R4Tv5Tg5D/+1bAhKxX4OgKwAC1UcdJkKgh2vCs1kksZ7clmR
 Tijozu0LNo/odIyXMOMEE00QzawIrNBT9r6ahZo5Dwy1QPBSvnZEgUkyXaTju3al/1W8Hahb23G18
 dmj5LTEYlftTms05cAtUhhhjNuNmGo0vtz00Z6LL/HdKNoQxptIDp3SXOD6mBdYdvl5I9ZobLTzbk
 Fceryla3WOgLvRaq8b2hW8Rby7c59S/adHi4jcl98gZiCI1Dz6HMk7tXW6R7Inrv7H/D9/8r70sPT
 3NpP4emw==;
Received: from tmo-109-126.customers.d1-online.com ([80.187.109.126]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3j0e-0006uh-3v; Mon, 17 Feb 2020 16:12:36 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.3)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1j3j0Z-000fZ0-IZ; Mon, 17 Feb 2020 17:12:31 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Mon, 17 Feb 2020 17:11:47 +0100
Message-Id: <96a060b7b5c0c3838ab1751addfe4d6d3bc37bd6.1581955849.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1581955849.git.mchehab+huawei@kernel.org>
References: <cover.1581955849.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j3j0x-00Feev-AJ
Subject: [V9fs-developer] [PATCH 01/44] docs: filesystems: convert 9p.txt to
 ReST
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

- Add a SPDX header;
- Add a document title;
- Adjust section titles;
- Some whitespace fixes and new line breaks;
- Mark literal blocks as such;
- Add table markups;
- Add it to filesystems/index.rst.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/filesystems/{9p.txt => 9p.rst} | 114 +++++++++++--------
 Documentation/filesystems/index.rst          |   1 +
 2 files changed, 70 insertions(+), 45 deletions(-)
 rename Documentation/filesystems/{9p.txt => 9p.rst} (63%)

diff --git a/Documentation/filesystems/9p.txt b/Documentation/filesystems/9p.rst
similarity index 63%
rename from Documentation/filesystems/9p.txt
rename to Documentation/filesystems/9p.rst
index fec7144e817c..f054d1c45e86 100644
--- a/Documentation/filesystems/9p.txt
+++ b/Documentation/filesystems/9p.rst
@@ -1,7 +1,10 @@
-	  	    v9fs: Plan 9 Resource Sharing for Linux
-		    =======================================
+.. SPDX-License-Identifier: GPL-2.0
 
-ABOUT
+=======================================
+v9fs: Plan 9 Resource Sharing for Linux
+=======================================
+
+About
 =====
 
 v9fs is a Unix implementation of the Plan 9 9p remote filesystem protocol.
@@ -14,32 +17,34 @@ and Maya Gokhale.  Additional development by Greg Watson
 
 The best detailed explanation of the Linux implementation and applications of
 the 9p client is available in the form of a USENIX paper:
+
    http://www.usenix.org/events/usenix05/tech/freenix/hensbergen.html
 
 Other applications are described in the following papers:
+
 	* XCPU & Clustering
-		http://xcpu.org/papers/xcpu-talk.pdf
+	  http://xcpu.org/papers/xcpu-talk.pdf
 	* KVMFS: control file system for KVM
-		http://xcpu.org/papers/kvmfs.pdf
+	  http://xcpu.org/papers/kvmfs.pdf
 	* CellFS: A New Programming Model for the Cell BE
-		http://xcpu.org/papers/cellfs-talk.pdf
+	  http://xcpu.org/papers/cellfs-talk.pdf
 	* PROSE I/O: Using 9p to enable Application Partitions
-		http://plan9.escet.urjc.es/iwp9/cready/PROSE_iwp9_2006.pdf
+	  http://plan9.escet.urjc.es/iwp9/cready/PROSE_iwp9_2006.pdf
 	* VirtFS: A Virtualization Aware File System pass-through
-		http://goo.gl/3WPDg
+	  http://goo.gl/3WPDg
 
-USAGE
+Usage
 =====
 
-For remote file server:
+For remote file server::
 
 	mount -t 9p 10.10.1.2 /mnt/9
 
-For Plan 9 From User Space applications (http://swtch.com/plan9)
+For Plan 9 From User Space applications (http://swtch.com/plan9)::
 
 	mount -t 9p `namespace`/acme /mnt/9 -o trans=unix,uname=$USER
 
-For server running on QEMU host with virtio transport:
+For server running on QEMU host with virtio transport::
 
 	mount -t 9p -o trans=virtio <mount_tag> /mnt/9
 
@@ -48,18 +53,22 @@ mount points. Each 9P export is seen by the client as a virtio device with an
 associated "mount_tag" property. Available mount tags can be
 seen by reading /sys/bus/virtio/drivers/9pnet_virtio/virtio<n>/mount_tag files.
 
-OPTIONS
+Options
 =======
 
+  ============= ===============================================================
   trans=name	select an alternative transport.  Valid options are
   		currently:
-			unix 	- specifying a named pipe mount point
-			tcp	- specifying a normal TCP/IP connection
-			fd   	- used passed file descriptors for connection
-                                (see rfdno and wfdno)
-			virtio	- connect to the next virtio channel available
-				(from QEMU with trans_virtio module)
-			rdma	- connect to a specified RDMA channel
+
+			========  ============================================
+			unix 	  specifying a named pipe mount point
+			tcp	  specifying a normal TCP/IP connection
+			fd   	  used passed file descriptors for connection
+                                  (see rfdno and wfdno)
+			virtio	  connect to the next virtio channel available
+				  (from QEMU with trans_virtio module)
+			rdma	  connect to a specified RDMA channel
+			========  ============================================
 
   uname=name	user name to attempt mount as on the remote server.  The
   		server may override or ignore this value.  Certain user
@@ -69,28 +78,36 @@ OPTIONS
   		offering several exported file systems.
 
   cache=mode	specifies a caching policy.  By default, no caches are used.
-                        none = default no cache policy, metadata and data
+
+                        none
+				default no cache policy, metadata and data
                                 alike are synchronous.
-			loose = no attempts are made at consistency,
+			loose
+				no attempts are made at consistency,
                                 intended for exclusive, read-only mounts
-                        fscache = use FS-Cache for a persistent, read-only
+                        fscache
+				use FS-Cache for a persistent, read-only
 				cache backend.
-                        mmap = minimal cache that is only used for read-write
+                        mmap
+				minimal cache that is only used for read-write
                                 mmap.  Northing else is cached, like cache=none
 
   debug=n	specifies debug level.  The debug level is a bitmask.
-			0x01  = display verbose error messages
-			0x02  = developer debug (DEBUG_CURRENT)
-			0x04  = display 9p trace
-			0x08  = display VFS trace
-			0x10  = display Marshalling debug
-			0x20  = display RPC debug
-			0x40  = display transport debug
-			0x80  = display allocation debug
-			0x100 = display protocol message debug
-			0x200 = display Fid debug
-			0x400 = display packet debug
-			0x800 = display fscache tracing debug
+
+			=====   ================================
+			0x01    display verbose error messages
+			0x02    developer debug (DEBUG_CURRENT)
+			0x04    display 9p trace
+			0x08    display VFS trace
+			0x10    display Marshalling debug
+			0x20    display RPC debug
+			0x40    display transport debug
+			0x80    display allocation debug
+			0x100   display protocol message debug
+			0x200   display Fid debug
+			0x400   display packet debug
+			0x800   display fscache tracing debug
+			=====   ================================
 
   rfdno=n	the file descriptor for reading with trans=fd
 
@@ -103,9 +120,12 @@ OPTIONS
   noextend	force legacy mode (no 9p2000.u or 9p2000.L semantics)
 
   version=name	Select 9P protocol version. Valid options are:
-			9p2000          - Legacy mode (same as noextend)
-			9p2000.u        - Use 9P2000.u protocol
-			9p2000.L        - Use 9P2000.L protocol
+
+			========        ==============================
+			9p2000          Legacy mode (same as noextend)
+			9p2000.u        Use 9P2000.u protocol
+			9p2000.L        Use 9P2000.L protocol
+			========        ==============================
 
   dfltuid	attempt to mount as a particular uid
 
@@ -118,22 +138,27 @@ OPTIONS
 		hosts.  This functionality will be expanded in later versions.
 
   access	there are four access modes.
-			user  = if a user tries to access a file on v9fs
+			user
+				if a user tries to access a file on v9fs
 			        filesystem for the first time, v9fs sends an
 			        attach command (Tattach) for that user.
 				This is the default mode.
-			<uid> = allows only user with uid=<uid> to access
+			<uid>
+				allows only user with uid=<uid> to access
 				the files on the mounted filesystem
-			any   = v9fs does single attach and performs all
+			any
+				v9fs does single attach and performs all
 				operations as one user
-			client = ACL based access check on the 9p client
+			clien
+				 ACL based access check on the 9p client
 			         side for access validation
 
   cachetag	cache tag to use the specified persistent cache.
 		cache tags for existing cache sessions can be listed at
 		/sys/fs/9p/caches. (applies only to cache=fscache)
+  ============= ===============================================================
 
-RESOURCES
+Resources
 =========
 
 Protocol specifications are maintained on github:
@@ -158,4 +183,3 @@ http://plan9.bell-labs.com/plan9
 
 For information on Plan 9 from User Space (Plan 9 applications and libraries
 ported to Linux/BSD/OSX/etc) check out http://swtch.com/plan9
-
diff --git a/Documentation/filesystems/index.rst b/Documentation/filesystems/index.rst
index 45d791905e91..a9330c3f8c2e 100644
--- a/Documentation/filesystems/index.rst
+++ b/Documentation/filesystems/index.rst
@@ -46,6 +46,7 @@ Documentation for filesystem implementations.
 .. toctree::
    :maxdepth: 2
 
+   9p
    autofs
    fuse
    overlayfs
-- 
2.24.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
