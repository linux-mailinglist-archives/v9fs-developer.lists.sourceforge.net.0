Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B24F4702EF
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Dec 2021 15:36:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvh0y-00046e-N2; Fri, 10 Dec 2021 14:36:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvh0x-00046W-Tu
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 14:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1jWKu+fTBFJcT/HgMEzu6APh752fKYh1kEvLz4HhKOI=; b=U28b/X7Ni4Ei7l+G35wGZMQjY7
 REAbzlyvse8IU9JdzIkxc+XlH3tnRos4Vm7OVGkIbtbX97Ye1ECKghjLdEhQhLwofmIf7xCt+ZRm7
 QsBBfGrBKXMYcuT/2oL6ZVKwJwcRDk/O9oNgIOd0tmvg7EvSIOeIAICiyikSlHFOtbFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1jWKu+fTBFJcT/HgMEzu6APh752fKYh1kEvLz4HhKOI=; b=WVRuXU+7vL+B6XjWu91yorbB9L
 ADR7jeBHoGipQ7ouqW1h2nrFLPDIPyTIt0/T5XJB3zCTPflrlMkNz7y22/hoW52l2wrhaf5FcDXet
 Z1WB3eriLGeVJEcAANggkals9FKwpgfq/tTIygCzGwPPWJbZH+jdU+kiccYZfKP1ifwA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvh0u-0007Z0-7W
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 14:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639146998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1jWKu+fTBFJcT/HgMEzu6APh752fKYh1kEvLz4HhKOI=;
 b=h2a/AU7dxRAd6HqxgT5A+aqxYutbsg6oE3fxvjq5/OWNLUZ3Esona7tjy+hcED3x/THddc
 7ET90MMuZPmsTCYFUx31yiU+ijMV184eULTNJaGA2tcGVgykR2DyuvHbG9Au1gIF9NSNaP
 i1DPjEREK8M8SsQEgyGzSfCLFQsMxSg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-bJd98xMGPKSZIQ3ttcegtA-1; Fri, 10 Dec 2021 09:36:35 -0500
X-MC-Unique: bJd98xMGPKSZIQ3ttcegtA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0B04874993;
 Fri, 10 Dec 2021 14:36:27 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6223F10016F7;
 Fri, 10 Dec 2021 14:36:00 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
References: <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
 <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906888735.143852.10944614318596881429.stgit@warthog.procyon.org.uk>
 <CAHk-=wiTquFUu-b5ME=rbGEF8r2Vh1TXGfaZZuXyOutVrgRzfw@mail.gmail.com>
 <159180.1639087053@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <288129.1639146959.1@warthog.procyon.org.uk>
Date: Fri, 10 Dec 2021 14:35:59 +0000
Message-ID: <288130.1639146959@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus Torvalds <torvalds@linux-foundation.org> wrote: > >
 What I'm trying to get at is that the hash needs to be consistent, no matter
 > > the endianness of the cpu, for any particular input blob. > > Yeah, if
 that's the case, then you should probably ma [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvh0u-0007Z0-7W
Subject: Re: [V9fs-developer] [PATCH v2 07/67] fscache: Implement a hash
 function
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS,
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> > What I'm trying to get at is that the hash needs to be consistent, no matter
> > the endianness of the cpu, for any particular input blob.
> 
> Yeah, if that's the case, then you should probably make that "unsigned
> int *data" argument probably just be "void *" and then:
> 
> >                 a = *data++;   <<<<<<<
> >                 HASH_MIX(x, y, a);
> >         }
> >         return fold_hash(x, y);
> > }
> >
> > The marked line should probably use something like le/be32_to_cpu().
> 
> Yes, it should be using a '__le32 *' inside that function and you
> should use l32_to_cpu(). Obviously, BE would work too, but cause
> unnecessary work on common hardware.

Okay, how about I make the attached change to make the hashing stable?  This
will make fscache_hash() take an opaque buffer and a length (the length must
be a multiple of four).

David
---
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index e287952292c5..65cf2ae22a70 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -269,22 +269,23 @@ EXPORT_SYMBOL(fscache_caching_failed);
 static int fscache_set_key(struct fscache_cookie *cookie,
 			   const void *index_key, size_t index_key_len)
 {
-	u32 *buf;
-	int bufs;
+	void *buf;
+	size_t buf_size;
 
-	bufs = DIV_ROUND_UP(index_key_len, sizeof(*buf));
+	buf_size = round_up(index_key_len, sizeof(__le32));
 
 	if (index_key_len > sizeof(cookie->inline_key)) {
-		buf = kcalloc(bufs, sizeof(*buf), GFP_KERNEL);
+		buf = kzalloc(buf_size, GFP_KERNEL);
 		if (!buf)
 			return -ENOMEM;
 		cookie->key = buf;
 	} else {
-		buf = (u32 *)cookie->inline_key;
+		buf = cookie->inline_key;
 	}
 
 	memcpy(buf, index_key, index_key_len);
-	cookie->key_hash = fscache_hash(cookie->volume->key_hash, buf, bufs);
+	cookie->key_hash = fscache_hash(cookie->volume->key_hash,
+					buf, buf_size);
 	return 0;
 }
 
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index 87884f4b34fb..f121c21590dc 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -86,7 +86,7 @@ static inline void fscache_end_operation(struct netfs_cache_resources *cres)
  */
 extern unsigned fscache_debug;
 
-extern unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n);
+extern unsigned int fscache_hash(unsigned int salt, const void *data, size_t len);
 
 /*
  * proc.c
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index 01d57433702c..dad85fd84f6f 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -53,15 +53,16 @@ static inline unsigned int fold_hash(unsigned long x, unsigned long y)
 /*
  * Generate a hash.  This is derived from full_name_hash(), but we want to be
  * sure it is arch independent and that it doesn't change as bits of the
- * computed hash value might appear on disk.  The caller also guarantees that
- * the hashed data will be a series of aligned 32-bit words.
+ * computed hash value might appear on disk.  The caller must guarantee that
+ * the source data is a multiple of four bytes in size.
  */
-unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n)
+unsigned int fscache_hash(unsigned int salt, const void *data, size_t len)
 {
-	unsigned int a, x = 0, y = salt;
+	const __le32 *p = data;
+	unsigned int a, x = 0, y = salt, n = len / sizeof(__le32);
 
 	for (; n; n--) {
-		a = *data++;
+		a = le32_to_cpu(*p++);
 		HASH_MIX(x, y, a);
 	}
 	return fold_hash(x, y);
diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index edd3c245010e..26a6b8f315e1 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -131,7 +131,7 @@ static long fscache_compare_volume(const struct fscache_volume *a,
 	if (a->key[0] != b->key[0])
 		return (long)a->key[0]   - (long)b->key[0];
 
-	klen = round_up(a->key[0] + 1, sizeof(unsigned int));
+	klen = round_up(a->key[0] + 1, sizeof(__le32));
 	return memcmp(a->key, b->key, klen);
 }
 
@@ -225,7 +225,7 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	 * hashing easier.
 	 */
 	klen = strlen(volume_key);
-	hlen = round_up(1 + klen + 1, sizeof(unsigned int));
+	hlen = round_up(1 + klen + 1, sizeof(__le32));
 	key = kzalloc(hlen, GFP_KERNEL);
 	if (!key)
 		goto err_vol;
@@ -233,8 +233,7 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	memcpy(key + 1, volume_key, klen);
 
 	volume->key = key;
-	volume->key_hash = fscache_hash(0, (unsigned int *)key,
-					hlen / sizeof(unsigned int));
+	volume->key_hash = fscache_hash(0, key, hlen);
 
 	volume->debug_id = atomic_inc_return(&fscache_volume_debug_id);
 	down_write(&fscache_addremove_sem);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
