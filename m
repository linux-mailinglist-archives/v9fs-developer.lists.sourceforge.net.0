Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB676477828
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:18:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtSy-0001PL-4u; Thu, 16 Dec 2021 16:18:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtSw-0001PF-QD
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=efjHSR9yvqtT49afRsxXb6zKzxK8bdo5iUK7s8P+3fQ=; b=ervwfwXv6YNsNC7rfeBayvhlmZ
 wbjNpebNmpPVBZySfi+QbuM4FBWMe3VU5CZkxauKTN8x74lmlGOjMCRoqHK08NGdaTGebSFrMOyOp
 9DzD3/rrdH0Y3SP9veb1hBF8Yr6lEygkCD72YpemnjaL3LT/Xbq0i+2pZjvlECqgjK/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=efjHSR9yvqtT49afRsxXb6zKzxK8bdo5iUK7s8P+3fQ=; b=Ks7qHhNYN94c51k4G4Y14PjVYI
 dm7zfjRD0q9H+xh5bKqVa9H9tOkmDdYNLsH0jZTwh1xnoCpVsDZL6qh+OzQ3ned2Inrio2Mv2wK+A
 9zN5VGKj9mqoMXiVBPBvFLjy/j8KC5tThtqutkUq1nujlCVveHFSN5+uXlUO3qZkNIsY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtSv-0007tS-FK
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639671519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=efjHSR9yvqtT49afRsxXb6zKzxK8bdo5iUK7s8P+3fQ=;
 b=A1BHxj+2eNpUOqgagpTECaCIHvLp+pOdHCZGkc62IrHKC0DseWV662mjH7DINZZvdTY8jw
 rUmFtMW54BccbVvxEknexHtzAILVFGRJSt9OTPNksZmBP35NNy52oAJMngWT34SeGHNDEn
 WGCZVnmZtTnTO24ubJVRzbB06v/bfGs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-647-6vXFgxdVNSeT8Ps8Ks3DjQ-1; Thu, 16 Dec 2021 11:18:35 -0500
X-MC-Unique: 6vXFgxdVNSeT8Ps8Ks3DjQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1DBE081CCB6;
 Thu, 16 Dec 2021 16:18:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1233AE2C8;
 Thu, 16 Dec 2021 16:18:18 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Thu, 16 Dec 2021 16:18:18 +0000
Message-ID: <163967149827.1823006.6088580775428487961.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Implement a function to encode a binary cookie key as
 something
 that can be used as a filename. Four options are considered: (1) All printable
 chars with no '/' characters. Prepend a 'D' to indicate the encoding but
 otherwise use as-is. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxtSv-0007tS-FK
Subject: [V9fs-developer] [PATCH v3 44/68] cachefiles: Implement key to
 filename encoding
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

Implement a function to encode a binary cookie key as something that can be
used as a filename.  Four options are considered:

 (1) All printable chars with no '/' characters.  Prepend a 'D' to indicate
     the encoding but otherwise use as-is.

 (2) Appears to be an array of __be32.  Encode as 'S' plus a list of
     hex-encoded 32-bit ints separated by commas.  If a number is 0, it is
     rendered as "" instead of "0".

 (3) Appears to be an array of __le32.  Encoded as (2) but with a 'T'
     encoding prefix.

 (4) Encoded as base64 with an 'E' prefix plus a second char indicating how
     much padding is involved.  A non-standard base64 encoding is used
     because '/' cannot be used in the encoded form.

If (1) is not possible, whichever of (2), (3) or (4) produces the shortest
string is selected (hex-encoding a number may be less dense than base64
encoding it).

Note that the prefix characters have to be selected from the set [DEIJST@]
lest cachefilesd remove the files because it recognise the name.

Changes
=======
ver #2:
 - Fix a short allocation that didn't allow for a string terminator[1]

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/bcefb8f2-576a-b3fc-cc29-89808ebfd7c1@linux.alibaba.com/ [1]
Link: https://lore.kernel.org/r/163819640393.215744.15212364106412961104.stgit@warthog.procyon.org.uk/ # v1
Link: https://lore.kernel.org/r/163906940529.143852.17352132319136117053.stgit@warthog.procyon.org.uk/ # v2
---

 fs/cachefiles/Makefile   |    1 
 fs/cachefiles/internal.h |    5 ++
 fs/cachefiles/key.c      |  138 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 144 insertions(+)
 create mode 100644 fs/cachefiles/key.c

diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
index d67210ece9cd..6f025940a65c 100644
--- a/fs/cachefiles/Makefile
+++ b/fs/cachefiles/Makefile
@@ -7,6 +7,7 @@ cachefiles-y := \
 	cache.o \
 	daemon.o \
 	interface.o \
+	key.o \
 	main.o \
 	namei.o \
 	security.o \
diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index 8763ee4a0df2..dbc37f5d4714 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -173,6 +173,11 @@ extern struct cachefiles_object *cachefiles_grab_object(struct cachefiles_object
 extern void cachefiles_put_object(struct cachefiles_object *object,
 				  enum cachefiles_obj_ref_trace why);
 
+/*
+ * key.c
+ */
+extern bool cachefiles_cook_key(struct cachefiles_object *object);
+
 /*
  * main.c
  */
diff --git a/fs/cachefiles/key.c b/fs/cachefiles/key.c
new file mode 100644
index 000000000000..bf935e25bdbe
--- /dev/null
+++ b/fs/cachefiles/key.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Key to pathname encoder
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#include <linux/slab.h>
+#include "internal.h"
+
+static const char cachefiles_charmap[64] =
+	"0123456789"			/* 0 - 9 */
+	"abcdefghijklmnopqrstuvwxyz"	/* 10 - 35 */
+	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"	/* 36 - 61 */
+	"_-"				/* 62 - 63 */
+	;
+
+static const char cachefiles_filecharmap[256] = {
+	/* we skip space and tab and control chars */
+	[33 ... 46] = 1,		/* '!' -> '.' */
+	/* we skip '/' as it's significant to pathwalk */
+	[48 ... 127] = 1,		/* '0' -> '~' */
+};
+
+static inline unsigned int how_many_hex_digits(unsigned int x)
+{
+	return x ? round_up(ilog2(x) + 1, 4) / 4 : 0;
+}
+
+/*
+ * turn the raw key into something cooked
+ * - the key may be up to NAME_MAX in length (including the length word)
+ *   - "base64" encode the strange keys, mapping 3 bytes of raw to four of
+ *     cooked
+ *   - need to cut the cooked key into 252 char lengths (189 raw bytes)
+ */
+bool cachefiles_cook_key(struct cachefiles_object *object)
+{
+	const u8 *key = fscache_get_key(object->cookie), *kend;
+	unsigned char ch;
+	unsigned int acc, i, n, nle, nbe, keylen = object->cookie->key_len;
+	unsigned int b64len, len, print, pad;
+	char *name, sep;
+
+	_enter(",%u,%*phN", keylen, keylen, key);
+
+	BUG_ON(keylen > NAME_MAX - 3);
+
+	print = 1;
+	for (i = 0; i < keylen; i++) {
+		ch = key[i];
+		print &= cachefiles_filecharmap[ch];
+	}
+
+	/* If the path is usable ASCII, then we render it directly */
+	if (print) {
+		len = 1 + keylen;
+		name = kmalloc(len + 1, GFP_KERNEL);
+		if (!name)
+			return false;
+
+		name[0] = 'D'; /* Data object type, string encoding */
+		memcpy(name + 1, key, keylen);
+		goto success;
+	}
+
+	/* See if it makes sense to encode it as "hex,hex,hex" for each 32-bit
+	 * chunk.  We rely on the key having been padded out to a whole number
+	 * of 32-bit words.
+	 */
+	n = round_up(keylen, 4);
+	nbe = nle = 0;
+	for (i = 0; i < n; i += 4) {
+		u32 be = be32_to_cpu(*(__be32 *)(key + i));
+		u32 le = le32_to_cpu(*(__le32 *)(key + i));
+
+		nbe += 1 + how_many_hex_digits(be);
+		nle += 1 + how_many_hex_digits(le);
+	}
+
+	b64len = DIV_ROUND_UP(keylen, 3);
+	pad = b64len * 3 - keylen;
+	b64len = 2 + b64len * 4; /* Length if we base64-encode it */
+	_debug("len=%u nbe=%u nle=%u b64=%u", keylen, nbe, nle, b64len);
+	if (nbe < b64len || nle < b64len) {
+		unsigned int nlen = min(nbe, nle) + 1;
+		name = kmalloc(nlen, GFP_KERNEL);
+		if (!name)
+			return false;
+		sep = (nbe <= nle) ? 'S' : 'T'; /* Encoding indicator */
+		len = 0;
+		for (i = 0; i < n; i += 4) {
+			u32 x;
+			if (nbe <= nle)
+				x = be32_to_cpu(*(__be32 *)(key + i));
+			else
+				x = le32_to_cpu(*(__le32 *)(key + i));
+			name[len++] = sep;
+			if (x != 0)
+				len += snprintf(name + len, nlen - len, "%x", x);
+			sep = ',';
+		}
+		goto success;
+	}
+
+	/* We need to base64-encode it */
+	name = kmalloc(b64len + 1, GFP_KERNEL);
+	if (!name)
+		return false;
+
+	name[0] = 'E';
+	name[1] = '0' + pad;
+	len = 2;
+	kend = key + keylen;
+	do {
+		acc  = *key++;
+		if (key < kend) {
+			acc |= *key++ << 8;
+			if (key < kend)
+				acc |= *key++ << 16;
+		}
+
+		name[len++] = cachefiles_charmap[acc & 63];
+		acc >>= 6;
+		name[len++] = cachefiles_charmap[acc & 63];
+		acc >>= 6;
+		name[len++] = cachefiles_charmap[acc & 63];
+		acc >>= 6;
+		name[len++] = cachefiles_charmap[acc & 63];
+	} while (key < kend);
+
+success:
+	name[len] = 0;
+	object->d_name = name;
+	object->d_name_len = len;
+	_leave(" = %s", object->d_name);
+	return true;
+}




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
