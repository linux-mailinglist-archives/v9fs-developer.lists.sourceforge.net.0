Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4082531C90C
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 11:49:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBxv5-0001bm-AY; Tue, 16 Feb 2021 10:49:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1lBxv4-0001bf-6i
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 10:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c606tiFZzzrg7UfYWpgdeui7cwZIOxXCjEV3iLMZne0=; b=PKyetr9pGduuleydUlR+9vhNDO
 FrkfbX2J6Jsd/nqkxSFWSJnil2Irq50R7JVS01UiT6ao/QkNEWEbw7x2eHgGN27T3J9sndrCRJszx
 BeGcEgOvoOn5KptipU2R6OLcG2Yhxnj/XK3GcYKZFrMlTaQm2tRN/5SaOgp/VwXDe1aQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c606tiFZzzrg7UfYWpgdeui7cwZIOxXCjEV3iLMZne0=; b=E5UjH6w4GXbOq4yrVb967k5Kt1
 obFknk6xf8nLOwwYT9xZmIxLJJw2P9MQHn7ug5+eQd1xo8ZHisN9xdVf0qF3dgRkz2LyPVQTsLAk1
 cjIKIZhcH4oL+BH65bI+io4f/cDZapPJ8jCF6pMfP+mtu+9+CmrRbL4l+v5cHgIdi828=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBxv0-0002KZ-Kr
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 10:49:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D58946736F; Tue, 16 Feb 2021 11:49:14 +0100 (CET)
Date: Tue, 16 Feb 2021 11:49:14 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210216104914.GA28196@lst.de>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340402057.1303470.8038373593844486698.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161340402057.1303470.8038373593844486698.stgit@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lBxv0-0002KZ-Kr
Subject: Re: [V9fs-developer] [PATCH 14/33] fscache,
 cachefiles: Add alternate API to use kiocb for read/write to cache
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 03:47:00PM +0000, David Howells wrote:
> Add an alternate API by which the cache can be accessed through a kiocb,
> doing async DIO, rather than using the current API that tells the cache
> where all the pages are.
> 
> The new API is intended to be used in conjunction with the netfs helper
> library.  A filesystem must pick one or the other and not mix them.
> 
> Filesystems wanting to use the new API must #define FSCACHE_USE_NEW_IO_API
> before #including the header

What exactly does this ifdef buys us?  It seems like the old and new
APIs don't even conflict.  And if we really need an ifdef I'd rather
use that for the old code to make grepping for that easier.

> +extern void cachefiles_put_object(struct fscache_object *_object,
> +				  enum fscache_obj_ref_trace why);

No need for the extern here on all the other function prototypes.

> +	if (ki->term_func) {
> +		if (ret < 0)
> +			ki->term_func(ki->term_func_priv, ret);
> +		else
> +			ki->term_func(ki->term_func_priv, ki->skipped + ret);

Why not simplify:

		if (ret > 0)
			ret += ki->skipped;
		ki->term_func(ki->term_func_priv, ret);

> +	/* If the caller asked us to seek for data before doing the read, then
> +	 * we should do that now.  If we find a gap, we fill it with zeros.
> +	 */

FYI, this is not the normal kernel comment style..

> +	ret = rw_verify_area(READ, file, &ki->iocb.ki_pos, len - skipped);
> +	if (ret < 0)
> +		goto presubmission_error_free;
> +
> +	get_file(ki->iocb.ki_filp);
> +
> +	old_nofs = memalloc_nofs_save();
> +	ret = call_read_iter(file, &ki->iocb, iter);
> +	memalloc_nofs_restore(old_nofs);

As mentioned before I think all this magic belongs in to a helper
in the VFS.

> +static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
> +	.end_operation		= cachefiles_end_operation,
> +	.read			= cachefiles_read,
> +	.write			= cachefiles_write,
> +	.expand_readahead	= NULL,
> +	.prepare_read		= cachefiles_prepare_read,
> +};

No need to set any member in a static allocated structure to zero.

Also at least in linux-next ->read and ->write seem to never actually
be called.

> +{
> +	struct cachefiles_object *object;
> +	struct cachefiles_cache *cache;
> +	struct path path;
> +	struct file *file;
> +
> +	_enter("");
> +
> +	object = container_of(op->op.object,
> +			      struct cachefiles_object, fscache);
> +	cache = container_of(object->fscache.cache,
> +			     struct cachefiles_cache, cache);
> +
> +	path.mnt = cache->mnt;
> +	path.dentry = object->backer;
> +	file = open_with_fake_path(&path, O_RDWR | O_LARGEFILE | O_DIRECT,
> +				   d_inode(object->backer), cache->cache_cred);

I think this should be plain old dentry_open?

> +extern struct fscache_retrieval *fscache_alloc_retrieval(struct fscache_cookie *,
> +							 struct address_space *,
> +							 fscache_rw_complete_t, void *);

No need for the extern.  And no need to indent the parameters totally out
sight, a single tab should be enough.  And it's always nice to spell out
the parameter names.

> +	op = fscache_alloc_retrieval(cookie, NULL, NULL, NULL);
> +	if (!op)
> +		return -ENOMEM;
> +	//atomic_set(&op->n_pages, 1);

???

> +static inline
> +int fscache_begin_read_operation(struct netfs_read_request *rreq,

Normal kernel style is to have the static and the inline on the
same line as the return type.

> +				 struct fscache_cookie *cookie)
> +{
> +	if (fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie))
> +		return __fscache_begin_read_operation(rreq, cookie);
> +	else
> +		return -ENOBUFS;
> +}

No need for an else after a return.  I personally also prefer to always
handle the error case first, ala:

        if (!fscache_cookie_valid(cookie) || !fscache_cookie_enabled(cookie))
	                return -ENOBUFS;
	return __fscache_begin_read_operation(rreq, cookie);

Also do we really need this inline fast path to start with?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
