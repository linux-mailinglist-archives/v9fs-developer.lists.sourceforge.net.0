Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4255F46EE15
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 17:55:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvMhF-0003ZK-K2; Thu, 09 Dec 2021 16:55:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvMhD-0003ZE-83
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 16:55:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=txiUwFn6LAU9WLX8nAEhd/3eVdsKrcCT/qigEzpFoBU=; b=ibewkjAjUgDv9FYta9WdfI9odX
 dqtaS4Zrz8uT68qA6zQiafajOODBEBKANBvaOEnAGhDeE+i3DKwzFpHETYNfmhMZdTO8NCZMbw0w1
 /BtWIaUNEhtTHs437gzEtobrH9N16Z3BAiCiHNfwXSdCKK1EE1WtxCZXWAgWivftMMXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=txiUwFn6LAU9WLX8nAEhd/3eVdsKrcCT/qigEzpFoBU=; b=D6vrwaPSrOAnVl+CWIGxvFlbLK
 08DkBoWIbb9eKl8AN+NmHKPJiIwMDV19JiKX3+0WmqeTL/r+Bd6F5xlmIoF8UDHWkaIeFZLCMXd0e
 5eXw0SHnSbyZUbCiaOwNHHRCKTyMh0MXRPEKaq8OzQpSplq0rQkHfq2/yzeVrFaSBWyc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvMhC-00ABaO-F9
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 16:55:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639068896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=txiUwFn6LAU9WLX8nAEhd/3eVdsKrcCT/qigEzpFoBU=;
 b=isc8SNIWFlGNho/is4gvqZj+KYL9moiqcFPG7w7xMReyMQKdtb414zxAaY/CfGzqpHYgUv
 vL1+YwoSTF0MLpHjXpDzO7rPBKebP1Vbnc0wlyOXqL+QN7BEAwnC5gpR3SXkWZkA5jaHFr
 R3kv4wzvcfhdC2793yERkO/38VUoSAg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-72-KYhtqsjfPZC3bzPLw8PaoQ-1; Thu, 09 Dec 2021 11:54:53 -0500
X-MC-Unique: KYhtqsjfPZC3bzPLw8PaoQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A88839382;
 Thu,  9 Dec 2021 16:54:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 340EF60BF1;
 Thu,  9 Dec 2021 16:54:48 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 09 Dec 2021 16:54:47 +0000
Message-ID: <163906888735.143852.10944614318596881429.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Implement a function to generate hashes. It needs to be
 stable
 over time and endianness-independent as the hashes will appear on disk in
 future patches. It can assume that its input is a multiple of f [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvMhC-00ABaO-F9
Subject: [V9fs-developer] [PATCH v2 07/67] fscache: Implement a hash function
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Implement a function to generate hashes.  It needs to be stable over time
and endianness-independent as the hashes will appear on disk in future
patches.  It can assume that its input is a multiple of four bytes in size
and alignment.

This is borrowed from the VFS and simplified.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/163819586113.215744.1699465806130102367.stgit@warthog.procyon.org.uk/ # v1
---

 fs/fscache/internal.h |    2 ++
 fs/fscache/main.c     |   39 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index ea52f8594a77..64767992bd15 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -22,6 +22,8 @@
  */
 extern unsigned fscache_debug;
 
+extern unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n);
+
 /*
  * proc.c
  */
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index 819de2ee1276..a4afba1b9d3b 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -24,6 +24,45 @@ MODULE_PARM_DESC(fscache_debug,
 struct workqueue_struct *fscache_wq;
 EXPORT_SYMBOL(fscache_wq);
 
+/*
+ * Mixing scores (in bits) for (7,20):
+ * Input delta: 1-bit      2-bit
+ * 1 round:     330.3     9201.6
+ * 2 rounds:   1246.4    25475.4
+ * 3 rounds:   1907.1    31295.1
+ * 4 rounds:   2042.3    31718.6
+ * Perfect:    2048      31744
+ *            (32*64)   (32*31/2 * 64)
+ */
+#define HASH_MIX(x, y, a)	\
+	(	x ^= (a),	\
+	y ^= x,	x = rol32(x, 7),\
+	x += y,	y = rol32(y,20),\
+	y *= 9			)
+
+static inline unsigned int fold_hash(unsigned long x, unsigned long y)
+{
+	/* Use arch-optimized multiply if one exists */
+	return __hash_32(y ^ __hash_32(x));
+}
+
+/*
+ * Generate a hash.  This is derived from full_name_hash(), but we want to be
+ * sure it is arch independent and that it doesn't change as bits of the
+ * computed hash value might appear on disk.  The caller also guarantees that
+ * the hashed data will be a series of aligned 32-bit words.
+ */
+unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n)
+{
+	unsigned int a, x = 0, y = salt;
+
+	for (; n; n--) {
+		a = *data++;
+		HASH_MIX(x, y, a);
+	}
+	return fold_hash(x, y);
+}
+
 /*
  * initialise the fs caching module
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
