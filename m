Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B1F4646D5
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 Dec 2021 06:46:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1msIRm-0004UD-Ga; Wed, 01 Dec 2021 05:46:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jefflexu@linux.alibaba.com>) id 1msIRk-0004U7-6R
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Dec 2021 05:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lA/pRm/jSSHPvOfhP9xjew0dMtb9KXfNIeB6BEHRlW0=; b=ZqvDNXK3cLtcs2bLr5j3KHh17p
 CScnNIaoLhlrOCTj63hUN82hCpO4FQzm2FmaY7YJhqu59o50qfWOhtgZBM/aFut/kZsCua8DntrQQ
 g28EoEcjKmwRRvhR0gu/4uf21w3ar+HCVan64xUPvPluQLiNNFpdsae5kG2O2tPUfyOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lA/pRm/jSSHPvOfhP9xjew0dMtb9KXfNIeB6BEHRlW0=; b=iMZ/vZ7TBMtVb9PA2CkvyyA1s9
 CYZIrsDB6DWwKXTdUF/RQKc0fgQ23xQjRSQT7wjUPt1mtec/6MnmQUOQVMwAdq+E/sVIy2LxS2bZm
 vCKUKLFIjo3AxdYa5vYQLWOXBEOklLWkzf5KGT8em9miQkRV/FZFhLPMZ26fVs1iV8/0=;
Received: from out30-54.freemail.mail.aliyun.com ([115.124.30.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msIRi-00HUzu-30
 for v9fs-developer@lists.sourceforge.net; Wed, 01 Dec 2021 05:46:24 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01424; MF=jefflexu@linux.alibaba.com;
 NM=1; PH=DS; RN=18; SR=0; TI=SMTPD_---0UywY0em_1638337562; 
Received: from 30.225.24.24(mailfrom:jefflexu@linux.alibaba.com
 fp:SMTPD_---0UywY0em_1638337562) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 01 Dec 2021 13:46:04 +0800
Message-ID: <bcefb8f2-576a-b3fc-cc29-89808ebfd7c1@linux.alibaba.com>
Date: Wed, 1 Dec 2021 13:46:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.0
Content-Language: en-US
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
 <163819640393.215744.15212364106412961104.stgit@warthog.procyon.org.uk>
From: JeffleXu <jefflexu@linux.alibaba.com>
In-Reply-To: <163819640393.215744.15212364106412961104.stgit@warthog.procyon.org.uk>
X-Spam-Score: -10.0 (----------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/29/21 10:33 PM, David Howells wrote: > +/* > + * turn
 the raw key into something cooked > + * - the key may be up to NAME_MAX in
 length (including the length word) > + * - "base64" encode the strange keys,
 mapping 3 bytes of raw to four [...] 
 Content analysis details:   (-10.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1msIRi-00HUzu-30
Subject: Re: [V9fs-developer] [PATCH 44/64] cachefiles: Implement key to
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
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



On 11/29/21 10:33 PM, David Howells wrote:

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
> +		len = 1 + keylen + 1;
> +		name = kmalloc(len, GFP_KERNEL);
> +		if (!name)
> +			return false;
> +
> +		name[0] = 'D'; /* Data object type, string encoding */
> +		name[1 + keylen] = 0;
> +		memcpy(name + 1, key, keylen);
> +		goto success;
			^
If we goto success from here,

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
> +
> +success:
> +	name[len] = 0;
	     ^
then it seems that this will cause an out-of-boundary access.


> +	object->d_name = name;
> +	object->d_name_len = len;
> +	_leave(" = %s", object->d_name);
> +	return true;
> +}
> 

-- 
Thanks,
Jeffle


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
