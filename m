Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 820694868F3
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Jan 2022 18:43:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5Wns-0001iV-0A; Thu, 06 Jan 2022 17:43:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1n5Wnr-0001iP-0i
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 17:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6fUM/Dz1dw7cjkGtXTKYZjGEFJqmtqvyomUk0a96MmE=; b=Bkf4hw5zwxBLBR+hQ+OGBov6Np
 vEnwRYK5b4pDo34yj3hwoSDE1zmvWB3ROZ8cPXtttHdgFRm8Hld3tP8+nsb3QaCigzVBdgXOKvlrQ
 xYlvDV6CE5QGpw/KkuPCayyOnktU69qZEdIwj5Qu0sSD7cavIPh40VGdKCmfqkg1CFJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6fUM/Dz1dw7cjkGtXTKYZjGEFJqmtqvyomUk0a96MmE=; b=OcSmbeXvJ4+KBinTyBSJ9hNxg4
 T1O7BdGkTFWB/whiE5Fcp4NdBMANLbZfteRScHfVg1yv2BRwSaNckq6MvTxIe8MkfJNyTWUSDKWEO
 4wUksAnwHFfRdrvcSYqbJ8FpErkiAHPZgy2bsgGctA/Qawv7sXBkPnl1hq/pi+qsG9MQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5Wno-004Dsm-KU
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Jan 2022 17:43:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7A1A1B8196F;
 Thu,  6 Jan 2022 17:43:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFAE6C36AE3;
 Thu,  6 Jan 2022 17:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641491020;
 bh=GSt06UPzDDs1a7vBKLK7gncorNQOvGyFYcO9vp/2URM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=B2Gwbnr/gfWYpTCuS8jXwfT1tnfyLS7xx+CnoB8Lgd/uK/gO+xaV4AJabGfl4nhfJ
 qwHJUXjCLhShV2w8rWk4XVFe8lMM4XxuhUgcL6jhVvbgZ0FnKPdYEa+We65DFk6Qzh
 KdEpr0UJRf/zj22KA/FGzOQdxWrE/Y+Z9NVNdkOm2H1tcQJvzDnsZ50+GO8eQPUmD+
 M2Tw02vKIKzNB1ywJffRfSbmvVz105o3KMYDvYU4Y/DPfJq45KUHAWYTdj3+7a4MRD
 PjoTSdes2pArK4DkiaziVA/z6aLaDpvQviGM1w34br9hNIEJlS7N8J1J14GJejWVyh
 F9fyOOVfUAyEA==
Message-ID: <1e102cc81aaf71df2b7f5ae906b79c188a34a111.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Thu, 06 Jan 2022 12:43:37 -0500
In-Reply-To: <164021549223.640689.14762875188193982341.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021549223.640689.14762875188193982341.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2021-12-22 at 23:24 +0000, David Howells wrote: >
 Implement a function to encode a binary cookie key as something that can be
 > used as a filename. Four options are considered: > > (1) All pri [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1n5Wno-004Dsm-KU
Subject: Re: [V9fs-developer] [PATCH v4 44/68] cachefiles: Implement key to
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2021-12-22 at 23:24 +0000, David Howells wrote:
> Implement a function to encode a binary cookie key as something that can be
> used as a filename.  Four options are considered:
> 
>  (1) All printable chars with no '/' characters.  Prepend a 'D' to indicate
>      the encoding but otherwise use as-is.
> 
>  (2) Appears to be an array of __be32.  Encode as 'S' plus a list of
>      hex-encoded 32-bit ints separated by commas.  If a number is 0, it is
>      rendered as "" instead of "0".
> 
>  (3) Appears to be an array of __le32.  Encoded as (2) but with a 'T'
>      encoding prefix.
> 
>  (4) Encoded as base64 with an 'E' prefix plus a second char indicating how
>      much padding is involved.  A non-standard base64 encoding is used
>      because '/' cannot be used in the encoded form.
> 
> If (1) is not possible, whichever of (2), (3) or (4) produces the shortest
> string is selected (hex-encoding a number may be less dense than base64
> encoding it).
> 

Since most cookies are fairly small, is there any real benefit to
optimizing for length here? How much inflation are we talking about?

> Note that the prefix characters have to be selected from the set [DEIJST@]
> lest cachefilesd remove the files because it recognise the name.
> 
> Changes
> =======
> ver #2:
>  - Fix a short allocation that didn't allow for a string terminator[1]
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/bcefb8f2-576a-b3fc-cc29-89808ebfd7c1@linux.alibaba.com/ [1]
> Link: https://lore.kernel.org/r/163819640393.215744.15212364106412961104.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163906940529.143852.17352132319136117053.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/163967149827.1823006.6088580775428487961.stgit@warthog.procyon.org.uk/ # v3
> ---
> 
>  fs/cachefiles/Makefile   |    1 
>  fs/cachefiles/internal.h |    5 ++
>  fs/cachefiles/key.c      |  138 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 144 insertions(+)
>  create mode 100644 fs/cachefiles/key.c
> 
> diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
> index d67210ece9cd..6f025940a65c 100644
> --- a/fs/cachefiles/Makefile
> +++ b/fs/cachefiles/Makefile
> @@ -7,6 +7,7 @@ cachefiles-y := \
>  	cache.o \
>  	daemon.o \
>  	interface.o \
> +	key.o \
>  	main.o \
>  	namei.o \
>  	security.o \
> diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
> index 8763ee4a0df2..dbc37f5d4714 100644
> --- a/fs/cachefiles/internal.h
> +++ b/fs/cachefiles/internal.h
> @@ -173,6 +173,11 @@ extern struct cachefiles_object *cachefiles_grab_object(struct cachefiles_object
>  extern void cachefiles_put_object(struct cachefiles_object *object,
>  				  enum cachefiles_obj_ref_trace why);
>  
> +/*
> + * key.c
> + */
> +extern bool cachefiles_cook_key(struct cachefiles_object *object);
> +
>  /*
>   * main.c
>   */
> diff --git a/fs/cachefiles/key.c b/fs/cachefiles/key.c
> new file mode 100644
> index 000000000000..bf935e25bdbe
> --- /dev/null
> +++ b/fs/cachefiles/key.c
> @@ -0,0 +1,138 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* Key to pathname encoder
> + *
> + * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
> + * Written by David Howells (dhowells@redhat.com)
> + */
> +
> +#include <linux/slab.h>
> +#include "internal.h"
> +
> +static const char cachefiles_charmap[64] =
> +	"0123456789"			/* 0 - 9 */
> +	"abcdefghijklmnopqrstuvwxyz"	/* 10 - 35 */
> +	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"	/* 36 - 61 */
> +	"_-"				/* 62 - 63 */
> +	;
> +
> +static const char cachefiles_filecharmap[256] = {
> +	/* we skip space and tab and control chars */
> +	[33 ... 46] = 1,		/* '!' -> '.' */
> +	/* we skip '/' as it's significant to pathwalk */
> +	[48 ... 127] = 1,		/* '0' -> '~' */
> +};
> +
> +static inline unsigned int how_many_hex_digits(unsigned int x)
> +{
> +	return x ? round_up(ilog2(x) + 1, 4) / 4 : 0;
> +}
> +
> +/*
> + * turn the raw key into something cooked
> + * - the key may be up to NAME_MAX in length (including the length word)
> + *   - "base64" encode the strange keys, mapping 3 bytes of raw to four of
> + *     cooked
> + *   - need to cut the cooked key into 252 char lengths (189 raw bytes)
> + */
> +bool cachefiles_cook_key(struct cachefiles_object *object)
> +{
> +	const u8 *key = fscache_get_key(object->cookie), *kend;
> +	unsigned char ch;
> +	unsigned int acc, i, n, nle, nbe, keylen = object->cookie->key_len;
> +	unsigned int b64len, len, print, pad;
> +	char *name, sep;
> +
> +	_enter(",%u,%*phN", keylen, keylen, key);
> +
> +	BUG_ON(keylen > NAME_MAX - 3);
> +
> +	print = 1;
> +	for (i = 0; i < keylen; i++) {
> +		ch = key[i];
> +		print &= cachefiles_filecharmap[ch];
> +	}
> +
> +	/* If the path is usable ASCII, then we render it directly */
> +	if (print) {
> +		len = 1 + keylen;
> +		name = kmalloc(len + 1, GFP_KERNEL);
> +		if (!name)
> +			return false;
> +
> +		name[0] = 'D'; /* Data object type, string encoding */
> +		memcpy(name + 1, key, keylen);
> +		goto success;
> +	}
> +
> +	/* See if it makes sense to encode it as "hex,hex,hex" for each 32-bit
> +	 * chunk.  We rely on the key having been padded out to a whole number
> +	 * of 32-bit words.
> +	 */
> +	n = round_up(keylen, 4);
> +	nbe = nle = 0;
> +	for (i = 0; i < n; i += 4) {
> +		u32 be = be32_to_cpu(*(__be32 *)(key + i));
> +		u32 le = le32_to_cpu(*(__le32 *)(key + i));
> +
> +		nbe += 1 + how_many_hex_digits(be);
> +		nle += 1 + how_many_hex_digits(le);
> +	}
> +
> +	b64len = DIV_ROUND_UP(keylen, 3);
> +	pad = b64len * 3 - keylen;
> +	b64len = 2 + b64len * 4; /* Length if we base64-encode it */
> +	_debug("len=%u nbe=%u nle=%u b64=%u", keylen, nbe, nle, b64len);
> +	if (nbe < b64len || nle < b64len) {
> +		unsigned int nlen = min(nbe, nle) + 1;
> +		name = kmalloc(nlen, GFP_KERNEL);
> +		if (!name)
> +			return false;
> +		sep = (nbe <= nle) ? 'S' : 'T'; /* Encoding indicator */
> +		len = 0;
> +		for (i = 0; i < n; i += 4) {
> +			u32 x;
> +			if (nbe <= nle)
> +				x = be32_to_cpu(*(__be32 *)(key + i));
> +			else
> +				x = le32_to_cpu(*(__le32 *)(key + i));
> +			name[len++] = sep;
> +			if (x != 0)
> +				len += snprintf(name + len, nlen - len, "%x", x);
> +			sep = ',';
> +		}
> +		goto success;
> +	}
> +
> +	/* We need to base64-encode it */
> +	name = kmalloc(b64len + 1, GFP_KERNEL);
> +	if (!name)
> +		return false;
> +
> +	name[0] = 'E';
> +	name[1] = '0' + pad;
> +	len = 2;
> +	kend = key + keylen;
> +	do {
> +		acc  = *key++;
> +		if (key < kend) {
> +			acc |= *key++ << 8;
> +			if (key < kend)
> +				acc |= *key++ << 16;
> +		}
> +
> +		name[len++] = cachefiles_charmap[acc & 63];
> +		acc >>= 6;
> +		name[len++] = cachefiles_charmap[acc & 63];
> +		acc >>= 6;
> +		name[len++] = cachefiles_charmap[acc & 63];
> +		acc >>= 6;
> +		name[len++] = cachefiles_charmap[acc & 63];
> +	} while (key < kend);

It might be good to eventually consolidate this code with the base64
scheme that fscrypt uses. Are they compatible? If so, then that can be
done in a later merge.

> +
> +success:
> +	name[len] = 0;
> +	object->d_name = name;
> +	object->d_name_len = len;
> +	_leave(" = %s", object->d_name);
> +	return true;
> +}
> 
> 

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
