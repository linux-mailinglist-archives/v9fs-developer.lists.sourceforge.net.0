Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ED0474B0C
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Dec 2021 19:37:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxCfr-0005ST-9o; Tue, 14 Dec 2021 18:37:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1mxCfp-0005SL-S9
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Dec 2021 18:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3dNVDaDDLZU8AQwSFFfXeNH9u+ZjnNmZk7Tmw7GUQF4=; b=PogF9P8d3WG7LA0H9TckLPkQRx
 k+S5g7XRRFXf0UhYknXs8uug03lvMXdFO5Owh0foukKDkAC6SUFGrIYcDf7In6cyYeqsFBwzav/lR
 hYA7uQ1GnWC1KbS6dcIyjVwlxMGQ1gfl2hpY3viHgO5PiPR9Tbt88130stUVLGCx6+/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3dNVDaDDLZU8AQwSFFfXeNH9u+ZjnNmZk7Tmw7GUQF4=; b=EtWRKh8pV/6PPnZkuke7WcE/pR
 OE63U4r4Ye80g6KNUmnGL75TPqvTICz1MPJZ79V+Y+ErgFcrV2pXU1jH2Q7/8TyM9mbHs/uuU1JAu
 Nbo+GhpUVSBKfXpYNHV5eYDMO2lgGpAYKrJIYYrdkN7FouVb3CAcVs7IZd1rg6cmQURM=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxCfm-0006aC-2E
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Dec 2021 18:37:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 198DCCE1A0A;
 Tue, 14 Dec 2021 18:37:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7DA6C34606;
 Tue, 14 Dec 2021 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639507021;
 bh=0j716t5FZtRn0U43qKPjcaZk5MxuoABRh7oLXjDE4qo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=hfe/gwuyava1ZKQqonyUUGwA/oXH6WEVlyf/R57C/yL4ynafCDaExYI8Fei+eGkNd
 HomPQ5B+fDGhC/ntyxUr6gWB0TN7UFzsArVNJxIa9QtrPWM8XyKISSrcivdHD7/LRc
 a5yKp7sCtENdRPtJjHoG9VBTw1vndVFIx6A8EmIFHFnVaT9lVLLiLT2s2LMjE66nU6
 o8nSEYJHZmPKv7RzIfdkoakEbGH/p5E1uo72bkuAljDUguS6LQzfVW8zXSAqf2MMZG
 Ucc9E8lzAqrvwangRk1ESXb3vbH16qa7t8YNvmc0rUhTDcNIBBnr6r3yOKF+PP1ufR
 ho6MSldAY7eDg==
Message-ID: <a23a1638bd39fdc314d36482a3155ca7b800a045.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 14 Dec 2021 13:36:58 -0500
In-Reply-To: <163906889665.143852.10378009165231294456.stgit@warthog.procyon.org.uk>
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906889665.143852.10378009165231294456.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2021-12-09 at 16:54 +0000, David Howells wrote: >
 Implement a register of caches and provide functions to manage it. > > Two
 functions are provided for the cache backend to use: > > (1) Acquir [...]
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
X-Headers-End: 1mxCfm-0006aC-2E
Subject: Re: [V9fs-developer] [PATCH v2 08/67] fscache: Implement cache
 registration
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

On Thu, 2021-12-09 at 16:54 +0000, David Howells wrote:
> Implement a register of caches and provide functions to manage it.
> 
> Two functions are provided for the cache backend to use:
> 
>  (1) Acquire a cache cookie:
> 
> 	struct fscache_cache *fscache_acquire_cache(const char *name)
> 
>      This gets the cache cookie for a cache of the specified name and moves
>      it to the preparation state.  If a nameless cache cookie exists, that
>      will be given this name and used.
> 
>  (2) Relinquish a cache cookie:
> 
> 	void fscache_relinquish_cache(struct fscache_cache *cache);
> 
>      This relinquishes a cache cookie, cleans it and makes it available if
>      it's still referenced by a network filesystem.
> 
> Note that network filesystems don't deal with cache cookies directly, but
> rather go straight to the volume registration.

This final sentence is a bit vague. Netfs's do need to _track_ fscache
cookies (generally on a per-inode basis). I get that you mean that they
don't have to deal with cookies that refer to caches. Maybe the term
cookie is just overloaded here. ;)

> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/163819587157.215744.13523139317322503286.stgit@warthog.procyon.org.uk/ # v1
> ---
> 
>  fs/fscache/Makefile            |    1 
>  fs/fscache/cache.c             |  274 ++++++++++++++++++++++++++++++++++++++++
>  fs/fscache/internal.h          |   33 +++++
>  fs/fscache/proc.c              |    4 +
>  include/linux/fscache-cache.h  |   34 +++++
>  include/trace/events/fscache.h |   43 ++++++
>  6 files changed, 389 insertions(+)
>  create mode 100644 fs/fscache/cache.c
> 
> diff --git a/fs/fscache/Makefile b/fs/fscache/Makefile
> index f9722de32247..d9fc22c18090 100644
> --- a/fs/fscache/Makefile
> +++ b/fs/fscache/Makefile
> @@ -4,6 +4,7 @@
>  #
>  
>  fscache-y := \
> +	cache.o \
>  	main.o
>  
>  fscache-$(CONFIG_PROC_FS) += proc.o
> diff --git a/fs/fscache/cache.c b/fs/fscache/cache.c
> new file mode 100644
> index 000000000000..8db77bb9f8e2
> --- /dev/null
> +++ b/fs/fscache/cache.c
> @@ -0,0 +1,274 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* FS-Cache cache handling
> + *
> + * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
> + * Written by David Howells (dhowells@redhat.com)
> + */
> +
> +#define FSCACHE_DEBUG_LEVEL CACHE
> +#include <linux/export.h>
> +#include <linux/slab.h>
> +#include "internal.h"
> +
> +static LIST_HEAD(fscache_caches);
> +DECLARE_RWSEM(fscache_addremove_sem);
> +EXPORT_SYMBOL(fscache_addremove_sem);
> +
> +static atomic_t fscache_cache_debug_id;
> +
> +/*
> + * Allocate a cache cookie.
> + */
> +static struct fscache_cache *fscache_alloc_cache(const char *name)
> +{
> +	struct fscache_cache *cache;
> +
> +	cache = kzalloc(sizeof(*cache), GFP_KERNEL);
> +	if (cache) {
> +		if (name) {
> +			cache->name = kstrdup(name, GFP_KERNEL);
> +			if (!cache->name) {
> +				kfree(cache);
> +				return NULL;
> +			}
> +		}
> +		refcount_set(&cache->ref, 1);
> +		INIT_LIST_HEAD(&cache->cache_link);
> +		cache->debug_id = atomic_inc_return(&fscache_cache_debug_id);
> +	}
> +	return cache;
> +}
> +
> +static bool fscache_get_cache_maybe(struct fscache_cache *cache,
> +				    enum fscache_cache_trace where)
> +{
> +	bool success;
> +	int ref;
> +
> +	success = __refcount_inc_not_zero(&cache->ref, &ref);
> +	if (success)
> +		trace_fscache_cache(cache->debug_id, ref + 1, where);
> +	return success;
> +}
> +
> +/*
> + * Look up a cache cookie.
> + */
> +struct fscache_cache *fscache_lookup_cache(const char *name, bool is_cache)
> +{
> +	struct fscache_cache *candidate, *cache, *unnamed = NULL;
> +
> +	/* firstly check for the existence of the cache under read lock */
> +	down_read(&fscache_addremove_sem);
> +
> +	list_for_each_entry(cache, &fscache_caches, cache_link) {
> +		if (cache->name && name && strcmp(cache->name, name) == 0 &&
> +		    fscache_get_cache_maybe(cache, fscache_cache_get_acquire))
> +			goto got_cache_r;
> +		if (!cache->name && !name &&
> +		    fscache_get_cache_maybe(cache, fscache_cache_get_acquire))
> +			goto got_cache_r;
> +	}
> +
> +	if (!name) {
> +		list_for_each_entry(cache, &fscache_caches, cache_link) {
> +			if (cache->name &&
> +			    fscache_get_cache_maybe(cache, fscache_cache_get_acquire))
> +				goto got_cache_r;
> +		}
> +	}
> +
> +	up_read(&fscache_addremove_sem);
> +
> +	/* the cache does not exist - create a candidate */
> +	candidate = fscache_alloc_cache(name);
> +	if (!candidate)
> +		return ERR_PTR(-ENOMEM);
> +
> +	/* write lock, search again and add if still not present */
> +	down_write(&fscache_addremove_sem);
> +
> +	list_for_each_entry(cache, &fscache_caches, cache_link) {
> +		if (cache->name && name && strcmp(cache->name, name) == 0 &&
> +		    fscache_get_cache_maybe(cache, fscache_cache_get_acquire))
> +			goto got_cache_w;
> +		if (!cache->name) {
> +			unnamed = cache;
> +			if (!name &&
> +			    fscache_get_cache_maybe(cache, fscache_cache_get_acquire))
> +				goto got_cache_w;
> +		}
> +	}
> +
> +	if (unnamed && is_cache &&
> +	    fscache_get_cache_maybe(unnamed, fscache_cache_get_acquire))
> +		goto use_unnamed_cache;
> +
> +	if (!name) {
> +		list_for_each_entry(cache, &fscache_caches, cache_link) {
> +			if (cache->name &&
> +			    fscache_get_cache_maybe(cache, fscache_cache_get_acquire))
> +				goto got_cache_w;
> +		}
> +	}
> +
> +	list_add_tail(&candidate->cache_link, &fscache_caches);
> +	trace_fscache_cache(candidate->debug_id,
> +			    refcount_read(&candidate->ref),
> +			    fscache_cache_new_acquire);
> +	up_write(&fscache_addremove_sem);
> +	return candidate;
> +
> +got_cache_r:
> +	up_read(&fscache_addremove_sem);
> +	return cache;
> +use_unnamed_cache:
> +	cache = unnamed;
> +	cache->name = candidate->name;
> +	candidate->name = NULL;
> +got_cache_w:
> +	up_write(&fscache_addremove_sem);
> +	kfree(candidate->name);
> +	kfree(candidate);
> +	return cache;
> +}
> +
> +/**
> + * fscache_acquire_cache - Acquire a cache-level cookie.
> + * @name: The name of the cache.
> + *
> + * Get a cookie to represent an actual cache.  If a name is given and there is
> + * a nameless cache record available, this will acquire that and set its name,
> + * directing all the volumes using it to this cache.
> + *
> + * The cache will be switched over to the preparing state if not currently in
> + * use, otherwise -EBUSY will be returned.
> + */
> +struct fscache_cache *fscache_acquire_cache(const char *name)
> +{
> +	struct fscache_cache *cache;
> +
> +	ASSERT(name);
> +	cache = fscache_lookup_cache(name, true);
> +	if (IS_ERR(cache))
> +		return cache;
> +
> +	if (!fscache_set_cache_state_maybe(cache,
> +					   FSCACHE_CACHE_IS_NOT_PRESENT,
> +					   FSCACHE_CACHE_IS_PREPARING)) {
> +		pr_warn("Cache tag %s in use\n", name);
> +		fscache_put_cache(cache, fscache_cache_put_cache);
> +		return ERR_PTR(-EBUSY);
> +	}
> +
> +	return cache;
> +}
> +EXPORT_SYMBOL(fscache_acquire_cache);
> +
> +/**
> + * fscache_put_cache - Release a cache-level cookie.
> + * @cache: The cache cookie to be released
> + * @where: An indication of where the release happened
> + *
> + * Release the caller's reference on a cache-level cookie.  The @where
> + * indication should give information about the circumstances in which the call
> + * occurs and will be logged through a tracepoint.
> + */
> +void fscache_put_cache(struct fscache_cache *cache,
> +		       enum fscache_cache_trace where)
> +{
> +	unsigned int debug_id = cache->debug_id;
> +	bool zero;
> +	int ref;
> +
> +	if (IS_ERR_OR_NULL(cache))
> +		return;
> +
> +	zero = __refcount_dec_and_test(&cache->ref, &ref);
> +	trace_fscache_cache(debug_id, ref - 1, where);
> +
> +	if (zero) {
> +		down_write(&fscache_addremove_sem);
> +		list_del_init(&cache->cache_link);
> +		up_write(&fscache_addremove_sem);
> +		kfree(cache->name);
> +		kfree(cache);
> +	}
> +}
> +
> +/**
> + * fscache_relinquish_cache - Reset cache state and release cookie
> + * @cache: The cache cookie to be released
> + *
> + * Reset the state of a cache and release the caller's reference on a cache
> + * cookie.
> + */
> +void fscache_relinquish_cache(struct fscache_cache *cache)
> +{
> +	enum fscache_cache_trace where =
> +		(cache->state == FSCACHE_CACHE_IS_PREPARING) ?
> +		fscache_cache_put_prep_failed :
> +		fscache_cache_put_relinquish;
> +
> +	cache->cache_priv = NULL;
> +	smp_store_release(&cache->state, FSCACHE_CACHE_IS_NOT_PRESENT);
> +	fscache_put_cache(cache, where);
> +}
> +EXPORT_SYMBOL(fscache_relinquish_cache);
> +
> +#ifdef CONFIG_PROC_FS
> +static const char fscache_cache_states[NR__FSCACHE_CACHE_STATE] = "-PAEW";
> +
> +/*
> + * Generate a list of caches in /proc/fs/fscache/caches
> + */
> +static int fscache_caches_seq_show(struct seq_file *m, void *v)
> +{
> +	struct fscache_cache *cache;
> +
> +	if (v == &fscache_caches) {
> +		seq_puts(m,
> +			 "CACHE    REF   VOLS  OBJS  ACCES S NAME\n"
> +			 "======== ===== ===== ===== ===== = ===============\n"
> +			 );
> +		return 0;
> +	}
> +
> +	cache = list_entry(v, struct fscache_cache, cache_link);
> +	seq_printf(m,
> +		   "%08x %5d %5d %5d %5d %c %s\n",
> +		   cache->debug_id,
> +		   refcount_read(&cache->ref),
> +		   atomic_read(&cache->n_volumes),
> +		   atomic_read(&cache->object_count),
> +		   atomic_read(&cache->n_accesses),
> +		   fscache_cache_states[cache->state],
> +		   cache->name ?: "-");
> +	return 0;
> +}
> +
> +static void *fscache_caches_seq_start(struct seq_file *m, loff_t *_pos)
> +	__acquires(fscache_addremove_sem)
> +{
> +	down_read(&fscache_addremove_sem);
> +	return seq_list_start_head(&fscache_caches, *_pos);
> +}
> +
> +static void *fscache_caches_seq_next(struct seq_file *m, void *v, loff_t *_pos)
> +{
> +	return seq_list_next(v, &fscache_caches, _pos);
> +}
> +
> +static void fscache_caches_seq_stop(struct seq_file *m, void *v)
> +	__releases(fscache_addremove_sem)
> +{
> +	up_read(&fscache_addremove_sem);
> +}
> +
> +const struct seq_operations fscache_caches_seq_ops = {
> +	.start  = fscache_caches_seq_start,
> +	.next   = fscache_caches_seq_next,
> +	.stop   = fscache_caches_seq_stop,
> +	.show   = fscache_caches_seq_show,
> +};
> +#endif /* CONFIG_PROC_FS */
> diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
> index 64767992bd15..2788435361f9 100644
> --- a/fs/fscache/internal.h
> +++ b/fs/fscache/internal.h
> @@ -17,6 +17,39 @@
>  #include <linux/sched.h>
>  #include <linux/seq_file.h>
>  
> +/*
> + * cache.c
> + */
> +#ifdef CONFIG_PROC_FS
> +extern const struct seq_operations fscache_caches_seq_ops;
> +#endif
> +struct fscache_cache *fscache_lookup_cache(const char *name, bool is_cache);
> +void fscache_put_cache(struct fscache_cache *cache, enum fscache_cache_trace where);
> +
> +static inline enum fscache_cache_state fscache_cache_state(const struct fscache_cache *cache)
> +{
> +	return smp_load_acquire(&cache->state);
> +}
> +
> +static inline bool fscache_cache_is_live(const struct fscache_cache *cache)
> +{
> +	return fscache_cache_state(cache) == FSCACHE_CACHE_IS_ACTIVE;
> +}
> +
> +static inline void fscache_set_cache_state(struct fscache_cache *cache,
> +					   enum fscache_cache_state new_state)
> +{
> +	smp_store_release(&cache->state, new_state);
> +
> +}
> +
> +static inline bool fscache_set_cache_state_maybe(struct fscache_cache *cache,
> +						 enum fscache_cache_state old_state,
> +						 enum fscache_cache_state new_state)
> +{
> +	return try_cmpxchg_release(&cache->state, &old_state, new_state);
> +}
> +
>  /*
>   * main.c
>   */
> diff --git a/fs/fscache/proc.c b/fs/fscache/proc.c
> index b28003d7d63f..7400568bf85e 100644
> --- a/fs/fscache/proc.c
> +++ b/fs/fscache/proc.c
> @@ -19,6 +19,10 @@ int __init fscache_proc_init(void)
>  	if (!proc_mkdir("fs/fscache", NULL))
>  		goto error_dir;
>  
> +	if (!proc_create_seq("fs/fscache/caches", S_IFREG | 0444, NULL,
> +			     &fscache_caches_seq_ops))
> +		goto error;
> +
>  #ifdef CONFIG_FSCACHE_STATS
>  	if (!proc_create_single("fs/fscache/stats", S_IFREG | 0444, NULL,
>  				fscache_stats_show))
> diff --git a/include/linux/fscache-cache.h b/include/linux/fscache-cache.h
> index d6910a913918..18cd5c9877bb 100644
> --- a/include/linux/fscache-cache.h
> +++ b/include/linux/fscache-cache.h
> @@ -16,6 +16,40 @@
>  
>  #include <linux/fscache.h>
>  
> +enum fscache_cache_trace;
> +enum fscache_access_trace;
> +
> +enum fscache_cache_state {
> +	FSCACHE_CACHE_IS_NOT_PRESENT,	/* No cache is present for this name */
> +	FSCACHE_CACHE_IS_PREPARING,	/* A cache is preparing to come live */
> +	FSCACHE_CACHE_IS_ACTIVE,	/* Attached cache is active and can be used */
> +	FSCACHE_CACHE_GOT_IOERROR,	/* Attached cache stopped on I/O error */
> +	FSCACHE_CACHE_IS_WITHDRAWN,	/* Attached cache is being withdrawn */
> +#define NR__FSCACHE_CACHE_STATE (FSCACHE_CACHE_IS_WITHDRAWN + 1)
> +};
> +
> +/*
> + * Cache cookie.
> + */
> +struct fscache_cache {
> +	struct list_head	cache_link;	/* Link in cache list */
> +	void			*cache_priv;	/* Private cache data (or NULL) */
> +	refcount_t		ref;
> +	atomic_t		n_volumes;	/* Number of active volumes; */
> +	atomic_t		n_accesses;	/* Number of in-progress accesses on the cache */
> +	atomic_t		object_count;	/* no. of live objects in this cache */
> +	unsigned int		debug_id;
> +	enum fscache_cache_state state;
> +	char			*name;
> +};
> +
>  extern struct workqueue_struct *fscache_wq;
>  
> +/*
> + * out-of-line cache backend functions
> + */
> +extern struct rw_semaphore fscache_addremove_sem;
> +extern struct fscache_cache *fscache_acquire_cache(const char *name);
> +extern void fscache_relinquish_cache(struct fscache_cache *cache);
> +
>  #endif /* _LINUX_FSCACHE_CACHE_H */
> diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
> index fe214c5cc87f..3b8e0597b2c1 100644
> --- a/include/trace/events/fscache.h
> +++ b/include/trace/events/fscache.h
> @@ -19,11 +19,27 @@
>  #ifndef __FSCACHE_DECLARE_TRACE_ENUMS_ONCE_ONLY
>  #define __FSCACHE_DECLARE_TRACE_ENUMS_ONCE_ONLY
>  
> +enum fscache_cache_trace {
> +	fscache_cache_collision,
> +	fscache_cache_get_acquire,
> +	fscache_cache_new_acquire,
> +	fscache_cache_put_cache,
> +	fscache_cache_put_prep_failed,
> +	fscache_cache_put_relinquish,
> +};
> +
>  #endif
>  
>  /*
>   * Declare tracing information enums and their string mappings for display.
>   */
> +#define fscache_cache_traces						\
> +	EM(fscache_cache_collision,		"*COLLIDE*")		\
> +	EM(fscache_cache_get_acquire,		"GET acq  ")		\
> +	EM(fscache_cache_new_acquire,		"NEW acq  ")		\
> +	EM(fscache_cache_put_cache,		"PUT cache")		\
> +	EM(fscache_cache_put_prep_failed,	"PUT pfail")		\
> +	E_(fscache_cache_put_relinquish,	"PUT relnq")
>  
>  /*
>   * Export enum symbols via userspace.
> @@ -33,6 +49,8 @@
>  #define EM(a, b) TRACE_DEFINE_ENUM(a);
>  #define E_(a, b) TRACE_DEFINE_ENUM(a);
>  
> +fscache_cache_traces;
> +
>  /*
>   * Now redefine the EM() and E_() macros to map the enums to the strings that
>   * will be printed in the output.
> @@ -43,6 +61,31 @@
>  #define E_(a, b)	{ a, b }
>  
>  
> +TRACE_EVENT(fscache_cache,
> +	    TP_PROTO(unsigned int cache_debug_id,
> +		     int usage,
> +		     enum fscache_cache_trace where),
> +
> +	    TP_ARGS(cache_debug_id, usage, where),
> +
> +	    TP_STRUCT__entry(
> +		    __field(unsigned int,		cache		)
> +		    __field(int,			usage		)
> +		    __field(enum fscache_cache_trace,	where		)
> +			     ),
> +
> +	    TP_fast_assign(
> +		    __entry->cache	= cache_debug_id;
> +		    __entry->usage	= usage;
> +		    __entry->where	= where;
> +			   ),
> +
> +	    TP_printk("C=%08x %s r=%d",
> +		      __entry->cache,
> +		      __print_symbolic(__entry->where, fscache_cache_traces),
> +		      __entry->usage)
> +	    );
> +
>  #endif /* _TRACE_FSCACHE_H */
>  
>  /* This part must be outside protection */
> 
> 

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
