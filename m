Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF023F6277
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 18:12:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIZ1r-0002nx-UT; Tue, 24 Aug 2021 16:11:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1mIZ1j-0002ni-Az
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 16:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zztC89NUsnI49tBFDzJHfqMcg0PYYsKWW693C6SIn40=; b=Tc7i4WuGnyvix6f1u1ehSgky3g
 HNFsrpsC/cRs52Rzwzbcz515hktv6rOEUJszuPNSoBVFFnNMqKwn/Lq1gwXqLIms9uCdLzwnrEH5r
 wmLye6sgPFb0QptBbx8j/3w2M9J8ZtczIqPMVrx9U5+QU9PEv78KghSXgsuGkONtfNtw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zztC89NUsnI49tBFDzJHfqMcg0PYYsKWW693C6SIn40=; b=bete1LrtepWpcLxUkisYdrixD4
 7inBfy7MwGs5DHEe4Mo03HUWymCEsAtUa55kM0kHcsVda6r8Aj40OFJtayQuSHCwoaBimbNsG21dU
 s2cVp+6H+USc3efFzcSXs5G284LeDqW6ogWZzHKaiKRrlbWAgoGc34I255WJAR0JqNCc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIZ1X-00H4rb-6o
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 16:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629821493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zztC89NUsnI49tBFDzJHfqMcg0PYYsKWW693C6SIn40=;
 b=i9pxk3aICwo1u/wVc/rqNP4l0XcffCE+xCi2APa23GW5XXRGKsVxqp7V7kp/j66Gw7OjYe
 yTshM7GCPRmJU7HQPxkJ93Q4LXYU1jPSSX6qUJUfoPhhdKkIJvP8OuUErorFoWoxgv91V+
 sMUOiGJ4gNDKCSyEn634Ict1GaNS4j8=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-oPDgBbNhOpGcGtCjRqQvIw-1; Tue, 24 Aug 2021 12:11:29 -0400
X-MC-Unique: oPDgBbNhOpGcGtCjRqQvIw-1
Received: by mail-qt1-f198.google.com with SMTP id
 c11-20020ac87dcb0000b0290293566e00b1so10864652qte.15
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 Aug 2021 09:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=zztC89NUsnI49tBFDzJHfqMcg0PYYsKWW693C6SIn40=;
 b=TGukcMGSFvEXjKkDVVO14s2K4w4uo5ZWr5yrFGCqGpj+JU+Ok7JZwPJ8pR5QIBMQR1
 MVj1gGrGQ7TjrC3x0sXYCX/mkFmHbnXG8BVIjbL7BBU0JKP1NuSWcvXwYiJDcuQGgX+b
 T5UaeWn7WKu2RPfUyI3ncaFfo7og3BYHf9O5w48e4+e5SXIMbli4FN8UFRKnU4nzZ60c
 aSEyCrRjGWiDxb4iDDHzOQlCSof1Uw38sRKxUMzTMRJJk18OriEXKTTlgcgoTG97huv+
 0B5gnZeNaQqkWcEXbeuhatnTroN9DKMJZVd3TOd2hE0Xoe+IFO5KfZnEmOi3LssmWVIX
 shiQ==
X-Gm-Message-State: AOAM533+RIrzzXf6VcpWUUSixEYWVWKk+Lc4pz4abEtjQaoffpBfkd4d
 FqDcDWpipuzHXeVHmizkcav9pnyTLc4bSVdI+9c7htfbMF9FsTSeEYtuK4rMK54MVKPaBIxhSgg
 sOrvFa3kAQPc5LVUDJYWD7lnOC4hTha2WUDw=
X-Received: by 2002:ac8:58ce:: with SMTP id u14mr1640612qta.99.1629821489398; 
 Tue, 24 Aug 2021 09:11:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCKqllfX/tvqrWatVeQf20ul8F8guKIBuisU0F+aEkBMrzdmA5+I16yDHMCyu87N39B0rdPQ==
X-Received: by 2002:ac8:58ce:: with SMTP id u14mr1640586qta.99.1629821489175; 
 Tue, 24 Aug 2021 09:11:29 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id l13sm11361132qkp.97.2021.08.24.09.11.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 09:11:28 -0700 (PDT)
Message-ID: <3d98729b59c2afcad1299a7742211bcdf1598623.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 24 Aug 2021 12:11:27 -0400
In-Reply-To: <162431201844.2908479.8293647220901514696.stgit@warthog.procyon.org.uk>
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
 <162431201844.2908479.8293647220901514696.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2021-06-21 at 22:46 +0100, David Howells wrote: >
 The current hash algorithm used for hashing cookie keys is really bad,
 > producing
 almost no dispersion (after a test kernel build, ~30000 fil [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIZ1X-00H4rb-6o
Subject: Re: [V9fs-developer] [PATCH 10/12] fscache: Fix cookie key hashing
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
 linux-afs@lists.infradead.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-06-21 at 22:46 +0100, David Howells wrote:
> The current hash algorithm used for hashing cookie keys is really bad,
> producing almost no dispersion (after a test kernel build, ~30000 files
> were split over just 18 out of the 32768 hash buckets).
> 
> Borrow the full_name_hash() hash function into fscache to do the hashing
> for cookie keys and, in the future, volume keys.
> 
> I don't want to use full_name_hash() as-is because I want the hash value to
> be consistent across arches and over time as the hash value produced may
> get used on disk.
> 
> I can also optimise parts of it away as the key will always be a padded
> array of aligned 32-bit words.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
> 

What happens when this patch encounters a cache that was built before
it? Do you need to couple this with some sort of global cache
invalidation or rehashing event?

>  fs/fscache/cookie.c   |   14 +-------------
>  fs/fscache/internal.h |    2 ++
>  fs/fscache/main.c     |   39 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 42 insertions(+), 13 deletions(-)
> 
> diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
> index ec9bce33085f..2558814193e9 100644
> --- a/fs/fscache/cookie.c
> +++ b/fs/fscache/cookie.c
> @@ -87,10 +87,8 @@ void fscache_free_cookie(struct fscache_cookie *cookie)
>  static int fscache_set_key(struct fscache_cookie *cookie,
>  			   const void *index_key, size_t index_key_len)
>  {
> -	unsigned long long h;
>  	u32 *buf;
>  	int bufs;
> -	int i;
>  
>  	bufs = DIV_ROUND_UP(index_key_len, sizeof(*buf));
>  
> @@ -104,17 +102,7 @@ static int fscache_set_key(struct fscache_cookie *cookie,
>  	}
>  
>  	memcpy(buf, index_key, index_key_len);
> -
> -	/* Calculate a hash and combine this with the length in the first word
> -	 * or first half word
> -	 */
> -	h = (unsigned long)cookie->parent;
> -	h += index_key_len + cookie->type;
> -
> -	for (i = 0; i < bufs; i++)
> -		h += buf[i];
> -
> -	cookie->key_hash = h ^ (h >> 32);
> +	cookie->key_hash = fscache_hash(0, buf, bufs);
>  	return 0;
>  }
>  
> diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
> index 200082cafdda..a49136c63e4b 100644
> --- a/fs/fscache/internal.h
> +++ b/fs/fscache/internal.h
> @@ -74,6 +74,8 @@ extern struct workqueue_struct *fscache_object_wq;
>  extern struct workqueue_struct *fscache_op_wq;
>  DECLARE_PER_CPU(wait_queue_head_t, fscache_object_cong_wait);
>  
> +extern unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n);
> +
>  static inline bool fscache_object_congested(void)
>  {
>  	return workqueue_congested(WORK_CPU_UNBOUND, fscache_object_wq);
> diff --git a/fs/fscache/main.c b/fs/fscache/main.c
> index c1e6cc9091aa..4207f98e405f 100644
> --- a/fs/fscache/main.c
> +++ b/fs/fscache/main.c
> @@ -93,6 +93,45 @@ static struct ctl_table fscache_sysctls_root[] = {
>  };
>  #endif
>  
> +/*
> + * Mixing scores (in bits) for (7,20):
> + * Input delta: 1-bit      2-bit
> + * 1 round:     330.3     9201.6
> + * 2 rounds:   1246.4    25475.4
> + * 3 rounds:   1907.1    31295.1
> + * 4 rounds:   2042.3    31718.6
> + * Perfect:    2048      31744
> + *            (32*64)   (32*31/2 * 64)
> + */
> +#define HASH_MIX(x, y, a)	\
> +	(	x ^= (a),	\
> +	y ^= x,	x = rol32(x, 7),\
> +	x += y,	y = rol32(y,20),\
> +	y *= 9			)
> +
> +static inline unsigned int fold_hash(unsigned long x, unsigned long y)
> +{
> +	/* Use arch-optimized multiply if one exists */
> +	return __hash_32(y ^ __hash_32(x));
> +}
> +
> +/*
> + * Generate a hash.  This is derived from full_name_hash(), but we want to be
> + * sure it is arch independent and that it doesn't change as bits of the
> + * computed hash value might appear on disk.  The caller also guarantees that
> + * the hashed data will be a series of aligned 32-bit words.
> + */
> +unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n)
> +{
> +	unsigned int a, x = 0, y = salt;
> +
> +	for (; n; n--) {
> +		a = *data++;
> +		HASH_MIX(x, y, a);
> +	}
> +	return fold_hash(x, y);
> +}
> +
>  /*
>   * initialise the fs caching module
>   */
> 
> 

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
