Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE6B4794FF
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Dec 2021 20:43:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1myJ8C-0003oo-4i; Fri, 17 Dec 2021 19:43:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1myJ7z-0003oM-4X
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Dec 2021 19:42:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HNYdL/0SQPFDpFOUp/MnulO8pbzk46z1wtsiI4sJ890=; b=RKpurzord3Q4+YKMoQoYSLE8c5
 xB20fW8Pw+CwkZcLCzUOPNXQE4kyeZfJdZezhTkF6qjnWUHOGsbbv2wYMqdbnjb8Onz2+hPvYzu3b
 g6SRzQdykXiwYdPyj3dAb1pD56A2Pnm88NsX2uV4N6u/VoGSjIsH5kVH8d864NhVck98=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HNYdL/0SQPFDpFOUp/MnulO8pbzk46z1wtsiI4sJ890=; b=GlazuJvlKxL9XIZ4uuxj1+zLnb
 1Skf5j7uPPPckZuRwtSZZTTVpcMDCacSvRxWbiur3QBKjDpGhqBSCmq5HmR5RqU+RdmBP3hyi6LOM
 zWjMJaS/S4ysVgUdHgGS5GK7R8qZ2zKm56y4McT+sNpeh5Hzgp09x2PbSiA01ZdF2BG8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myJ7o-0001no-5s
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Dec 2021 19:42:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BE062B82A86;
 Fri, 17 Dec 2021 19:42:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0013C36AE2;
 Fri, 17 Dec 2021 19:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639770147;
 bh=eu0jYu9ZNdjJRuG9XlkLpvIGqxHZ3N+bX5+K8Viu57g=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=EhL/vcnDRiEKLArv87Crdv7GXJvenW/cRAQFSWgkTa5KJc1ztYOewmfngM9wkNBHt
 0WdF3HyXyCo2MdcGC3VylW2FaTsON790GL4fuCkYWuPE9hEeGwxnvOZnFzsiGP/1vY
 AyCXa42N12E0iSjnOxj5nX/Sg/+ykMtyh3X9wFiyIRT+1f7cgozJ+3fxhvJqgcD6CK
 1KVv3XUGrqo9mTDoX5LrOUSCsl+qg6srwLAmX+6irclwmuVwH3fWoGBWkOb9WsMBK1
 ywihP40G2On0me29vOWRn6NFdDFiu1hXqHQjK61LeUn3E854e7aNC9fnSjeMrS98iM
 9ST9A3Feezdug==
Message-ID: <310b791fc8afde2a108af4eb06bbe678f4141fac.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Fri, 17 Dec 2021 14:42:24 -0500
In-Reply-To: <163967106467.1823006.6790864931048582667.stgit@warthog.procyon.org.uk>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967106467.1823006.6790864931048582667.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2021-12-16 at 16:11 +0000, David Howells wrote: >
 Provide a pair of functions to count the number of users of a cookie (open
 > files, writeback, invalidation, resizing, reads, writes), to obta [...]
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
X-Headers-End: 1myJ7o-0001no-5s
Subject: Re: [V9fs-developer] [PATCH v3 18/68] fscache: Implement cookie
 user counting and resource pinning
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

On Thu, 2021-12-16 at 16:11 +0000, David Howells wrote:
> Provide a pair of functions to count the number of users of a cookie (open
> files, writeback, invalidation, resizing, reads, writes), to obtain and pin
> resources for the cookie and to prevent culling for the whilst there are
> users.
> 
> The first function marks a cookie as being in use:
> 
> 	void fscache_use_cookie(struct fscache_cookie *cookie,
> 				bool will_modify);
> 
> The caller should indicate the cookie to use and whether or not the caller
> is in a context that may modify the cookie (e.g. a file open O_RDWR).
> 
> If the cookie is not already resourced, fscache will ask the cache backend
> in the background to do whatever it needs to look up, create or otherwise
> obtain the resources necessary to access data.  This is pinned to the
> cookie and may not be culled, though it may be withdrawn if the cache as a
> whole is withdrawn.
> 
> The second function removes the in-use mark from a cookie and, optionally,
> updates the coherency data:
> 
> 	void fscache_unuse_cookie(struct fscache_cookie *cookie,
> 				  const void *aux_data,
> 				  const loff_t *object_size);
> 
> If non-NULL, the aux_data buffer and/or the object_size will be saved into
> the cookie and will be set on the backing store when the object is
> committed.
> 
> If this removes the last usage on a cookie, the cookie is placed onto an
> LRU list from which it will be removed and closed after a couple of seconds
> if it doesn't get reused.  This prevents resource overload in the cache -
> in particular it prevents it from holding too many files open.
> 
> Changes
> =======
> ver #2:
>  - Fix fscache_unuse_cookie() to use atomic_dec_and_lock() to avoid a
>    potential race if the cookie gets reused before it completes the
>    unusement.
>  - Added missing transition to LRU_DISCARDING state.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/163819600612.215744.13678350304176542741.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163906907567.143852.16979631199380722019.stgit@warthog.procyon.org.uk/ # v2
> ---
> 
>  fs/fscache/cookie.c            |  218 ++++++++++++++++++++++++++++++++++++++++
>  fs/fscache/internal.h          |    5 +
>  fs/fscache/stats.c             |   12 ++
>  include/linux/fscache.h        |   82 +++++++++++++++
>  include/trace/events/fscache.h |   12 ++
>  5 files changed, 327 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
> index 336046de08ee..2f5ee717f2bb 100644
> --- a/fs/fscache/cookie.c
> +++ b/fs/fscache/cookie.c
> @@ -15,6 +15,8 @@
>  
>  struct kmem_cache *fscache_cookie_jar;
>  
> +static void fscache_cookie_lru_timed_out(struct timer_list *timer);
> +static void fscache_cookie_lru_worker(struct work_struct *work);
>  static void fscache_cookie_worker(struct work_struct *work);
>  static void fscache_unhash_cookie(struct fscache_cookie *cookie);
>  
> @@ -22,7 +24,12 @@ static void fscache_unhash_cookie(struct fscache_cookie *cookie);
>  static struct hlist_bl_head fscache_cookie_hash[1 << fscache_cookie_hash_shift];
>  static LIST_HEAD(fscache_cookies);
>  static DEFINE_RWLOCK(fscache_cookies_lock);
> -static const char fscache_cookie_states[FSCACHE_COOKIE_STATE__NR] = "-LCAFWRD";
> +static LIST_HEAD(fscache_cookie_lru);
> +static DEFINE_SPINLOCK(fscache_cookie_lru_lock);
> +DEFINE_TIMER(fscache_cookie_lru_timer, fscache_cookie_lru_timed_out);
> +static DECLARE_WORK(fscache_cookie_lru_work, fscache_cookie_lru_worker);
> +static const char fscache_cookie_states[FSCACHE_COOKIE_STATE__NR] = "-LCAFUWRD";
> +unsigned int fscache_lru_cookie_timeout = 10 * HZ;
>  

Looks like it only pops after 10s? That's a bit more than the "couple of
seconds" mentioned in the changelog. In fact, that seems like quite a
long time.

Did you arrive at this value empirically somehow?

>  void fscache_print_cookie(struct fscache_cookie *cookie, char prefix)
>  {
> @@ -47,6 +54,14 @@ void fscache_print_cookie(struct fscache_cookie *cookie, char prefix)
>  
>  static void fscache_free_cookie(struct fscache_cookie *cookie)
>  {
> +	if (WARN_ON_ONCE(!list_empty(&cookie->commit_link))) {
> +		spin_lock(&fscache_cookie_lru_lock);
> +		list_del_init(&cookie->commit_link);
> +		spin_unlock(&fscache_cookie_lru_lock);
> +		fscache_stat_d(&fscache_n_cookies_lru);
> +		fscache_stat(&fscache_n_cookies_lru_removed);
> +	}
> +
>  	if (WARN_ON_ONCE(test_bit(FSCACHE_COOKIE_IS_HASHED, &cookie->flags))) {
>  		fscache_print_cookie(cookie, 'F');
>  		return;
> @@ -498,6 +513,126 @@ static void fscache_perform_lookup(struct fscache_cookie *cookie)
>  	fscache_end_volume_access(cookie->volume, cookie, trace);
>  }
>  
> +/*
> + * Begin the process of looking up a cookie.  We offload the actual process to
> + * a worker thread.
> + */
> +static bool fscache_begin_lookup(struct fscache_cookie *cookie, bool will_modify)
> +{
> +	if (will_modify) {
> +		set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags);
> +		set_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
> +	}
> +	if (!fscache_begin_volume_access(cookie->volume, cookie,
> +					 fscache_access_lookup_cookie))
> +		return false;
> +
> +	__fscache_begin_cookie_access(cookie, fscache_access_lookup_cookie);
> +	__fscache_set_cookie_state(cookie, FSCACHE_COOKIE_STATE_LOOKING_UP);
> +	set_bit(FSCACHE_COOKIE_IS_CACHING, &cookie->flags);
> +	set_bit(FSCACHE_COOKIE_HAS_BEEN_CACHED, &cookie->flags);
> +	return true;
> +}
> +
> +/*
> + * Start using the cookie for I/O.  This prevents the backing object from being
> + * reaped by VM pressure.
> + */
> +void __fscache_use_cookie(struct fscache_cookie *cookie, bool will_modify)
> +{
> +	enum fscache_cookie_state state;
> +	bool queue = false;
> +
> +	_enter("c=%08x", cookie->debug_id);
> +
> +	if (WARN(test_bit(FSCACHE_COOKIE_RELINQUISHED, &cookie->flags),
> +		 "Trying to use relinquished cookie\n"))
> +		return;
> +
> +	spin_lock(&cookie->lock);
> +
> +	atomic_inc(&cookie->n_active);
> +
> +again:
> +	state = fscache_cookie_state(cookie);
> +	switch (state) {
> +	case FSCACHE_COOKIE_STATE_QUIESCENT:
> +		queue = fscache_begin_lookup(cookie, will_modify);
> +		break;
> +
> +	case FSCACHE_COOKIE_STATE_LOOKING_UP:
> +	case FSCACHE_COOKIE_STATE_CREATING:
> +		if (will_modify)
> +			set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags);
> +		break;
> +	case FSCACHE_COOKIE_STATE_ACTIVE:
> +		if (will_modify &&
> +		    !test_and_set_bit(FSCACHE_COOKIE_LOCAL_WRITE, &cookie->flags)) {
> +			set_bit(FSCACHE_COOKIE_DO_PREP_TO_WRITE, &cookie->flags);
> +			queue = true;
> +		}
> +		break;
> +
> +	case FSCACHE_COOKIE_STATE_FAILED:
> +	case FSCACHE_COOKIE_STATE_WITHDRAWING:
> +		break;
> +
> +	case FSCACHE_COOKIE_STATE_LRU_DISCARDING:
> +		spin_unlock(&cookie->lock);
> +		wait_var_event(&cookie->state,
> +			       fscache_cookie_state(cookie) !=
> +			       FSCACHE_COOKIE_STATE_LRU_DISCARDING);
> +		spin_lock(&cookie->lock);
> +		goto again;
> +
> +	case FSCACHE_COOKIE_STATE_DROPPED:
> +	case FSCACHE_COOKIE_STATE_RELINQUISHING:
> +		WARN(1, "Can't use cookie in state %u\n", state);
> +		break;
> +	}
> +
> +	spin_unlock(&cookie->lock);
> +	if (queue)
> +		fscache_queue_cookie(cookie, fscache_cookie_get_use_work);
> +	_leave("");
> +}
> +EXPORT_SYMBOL(__fscache_use_cookie);
> +
> +static void fscache_unuse_cookie_locked(struct fscache_cookie *cookie)
> +{
> +	clear_bit(FSCACHE_COOKIE_DISABLED, &cookie->flags);
> +	if (!test_bit(FSCACHE_COOKIE_IS_CACHING, &cookie->flags))
> +		return;
> +
> +	cookie->unused_at = jiffies;
> +	spin_lock(&fscache_cookie_lru_lock);
> +	if (list_empty(&cookie->commit_link)) {
> +		fscache_get_cookie(cookie, fscache_cookie_get_lru);
> +		fscache_stat(&fscache_n_cookies_lru);
> +	}
> +	list_move_tail(&cookie->commit_link, &fscache_cookie_lru);
> +
> +	spin_unlock(&fscache_cookie_lru_lock);
> +	timer_reduce(&fscache_cookie_lru_timer,
> +		     jiffies + fscache_lru_cookie_timeout);
> +}
> +
> +/*
> + * Stop using the cookie for I/O.
> + */
> +void __fscache_unuse_cookie(struct fscache_cookie *cookie,
> +			    const void *aux_data, const loff_t *object_size)
> +{
> +	if (aux_data || object_size)
> +		__fscache_update_cookie(cookie, aux_data, object_size);
> +
> +	if (atomic_dec_and_lock(&cookie->n_active, &cookie->lock)) {
> +		fscache_unuse_cookie_locked(cookie);
> +		spin_unlock(&cookie->lock);
> +	}
> +}
> +EXPORT_SYMBOL(__fscache_unuse_cookie);
> +
>  /*
>   * Perform work upon the cookie, such as committing its cache state,
>   * relinquishing it or withdrawing the backing cache.  We're protected from the
> @@ -542,6 +677,12 @@ static void fscache_cookie_state_machine(struct fscache_cookie *cookie)
>  			fscache_prepare_to_write(cookie);
>  			spin_lock(&cookie->lock);
>  		}
> +		if (test_bit(FSCACHE_COOKIE_DO_LRU_DISCARD, &cookie->flags)) {
> +			__fscache_set_cookie_state(cookie,
> +						   FSCACHE_COOKIE_STATE_LRU_DISCARDING);
> +			wake = true;
> +			goto again_locked;
> +		}
>  		fallthrough;
>  
>  	case FSCACHE_COOKIE_STATE_FAILED:
> @@ -561,6 +702,7 @@ static void fscache_cookie_state_machine(struct fscache_cookie *cookie)
>  		}
>  		break;
>  
> +	case FSCACHE_COOKIE_STATE_LRU_DISCARDING:
>  	case FSCACHE_COOKIE_STATE_RELINQUISHING:
>  	case FSCACHE_COOKIE_STATE_WITHDRAWING:
>  		if (cookie->cache_priv) {
> @@ -577,6 +719,9 @@ static void fscache_cookie_state_machine(struct fscache_cookie *cookie)
>  						   FSCACHE_COOKIE_STATE_DROPPED);
>  			wake = true;
>  			goto out;
> +		case FSCACHE_COOKIE_STATE_LRU_DISCARDING:
> +			fscache_see_cookie(cookie, fscache_cookie_see_lru_discard);
> +			break;
>  		case FSCACHE_COOKIE_STATE_WITHDRAWING:
>  			fscache_see_cookie(cookie, fscache_cookie_see_withdraw);
>  			break;
> @@ -639,6 +784,76 @@ static void __fscache_withdraw_cookie(struct fscache_cookie *cookie)
>  		fscache_queue_cookie(cookie, fscache_cookie_get_end_access);
>  }
>  
> +static void fscache_cookie_lru_do_one(struct fscache_cookie *cookie)
> +{
> +	fscache_see_cookie(cookie, fscache_cookie_see_lru_do_one);
> +
> +	spin_lock(&cookie->lock);
> +	if (cookie->state != FSCACHE_COOKIE_STATE_ACTIVE ||
> +	    time_before(jiffies, cookie->unused_at + fscache_lru_cookie_timeout) ||
> +	    atomic_read(&cookie->n_active) > 0) {
> +		spin_unlock(&cookie->lock);
> +		fscache_stat(&fscache_n_cookies_lru_removed);
> +	} else {
> +		set_bit(FSCACHE_COOKIE_DO_LRU_DISCARD, &cookie->flags);
> +		spin_unlock(&cookie->lock);
> +		fscache_stat(&fscache_n_cookies_lru_expired);
> +		_debug("lru c=%x", cookie->debug_id);
> +		__fscache_withdraw_cookie(cookie);
> +	}
> +
> +	fscache_put_cookie(cookie, fscache_cookie_put_lru);
> +}
> +
> +static void fscache_cookie_lru_worker(struct work_struct *work)
> +{
> +	struct fscache_cookie *cookie;
> +	unsigned long unused_at;
> +
> +	spin_lock(&fscache_cookie_lru_lock);
> +
> +	while (!list_empty(&fscache_cookie_lru)) {
> +		cookie = list_first_entry(&fscache_cookie_lru,
> +					  struct fscache_cookie, commit_link);
> +		unused_at = cookie->unused_at + fscache_lru_cookie_timeout;
> +		if (time_before(jiffies, unused_at)) {
> +			timer_reduce(&fscache_cookie_lru_timer, unused_at);
> +			break;
> +		}
> +
> +		list_del_init(&cookie->commit_link);
> +		fscache_stat_d(&fscache_n_cookies_lru);
> +		spin_unlock(&fscache_cookie_lru_lock);
> +		fscache_cookie_lru_do_one(cookie);
> +		spin_lock(&fscache_cookie_lru_lock);
> +	}
> +
> +	spin_unlock(&fscache_cookie_lru_lock);
> +}
> +
> +static void fscache_cookie_lru_timed_out(struct timer_list *timer)
> +{
> +	queue_work(fscache_wq, &fscache_cookie_lru_work);
> +}
> +
> +static void fscache_cookie_drop_from_lru(struct fscache_cookie *cookie)
> +{
> +	bool need_put = false;
> +
> +	if (!list_empty(&cookie->commit_link)) {
> +		spin_lock(&fscache_cookie_lru_lock);
> +		if (!list_empty(&cookie->commit_link)) {
> +			list_del_init(&cookie->commit_link);
> +			fscache_stat_d(&fscache_n_cookies_lru);
> +			fscache_stat(&fscache_n_cookies_lru_dropped);
> +			need_put = true;
> +		}
> +		spin_unlock(&fscache_cookie_lru_lock);
> +		if (need_put)
> +			fscache_put_cookie(cookie, fscache_cookie_put_lru);
> +	}
> +}
> +
>  /*
>   * Remove a cookie from the hash table.
>   */
> @@ -659,6 +874,7 @@ static void fscache_unhash_cookie(struct fscache_cookie *cookie)
>  
>  static void fscache_drop_withdraw_cookie(struct fscache_cookie *cookie)
>  {
> +	fscache_cookie_drop_from_lru(cookie);
>  	__fscache_withdraw_cookie(cookie);
>  }
>  
> diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
> index e0d8ef212e82..ca938e00eaa0 100644
> --- a/fs/fscache/internal.h
> +++ b/fs/fscache/internal.h
> @@ -57,6 +57,7 @@ static inline bool fscache_set_cache_state_maybe(struct fscache_cache *cache,
>   */
>  extern struct kmem_cache *fscache_cookie_jar;
>  extern const struct seq_operations fscache_cookies_seq_ops;
> +extern struct timer_list fscache_cookie_lru_timer;
>  
>  extern void fscache_print_cookie(struct fscache_cookie *cookie, char prefix);
>  extern bool fscache_begin_cookie_access(struct fscache_cookie *cookie,
> @@ -95,6 +96,10 @@ extern atomic_t fscache_n_volumes;
>  extern atomic_t fscache_n_volumes_collision;
>  extern atomic_t fscache_n_volumes_nomem;
>  extern atomic_t fscache_n_cookies;
> +extern atomic_t fscache_n_cookies_lru;
> +extern atomic_t fscache_n_cookies_lru_expired;
> +extern atomic_t fscache_n_cookies_lru_removed;
> +extern atomic_t fscache_n_cookies_lru_dropped;
>  
>  extern atomic_t fscache_n_acquires;
>  extern atomic_t fscache_n_acquires_ok;
> diff --git a/fs/fscache/stats.c b/fs/fscache/stats.c
> index 252e883ae148..5aa4bd9fe207 100644
> --- a/fs/fscache/stats.c
> +++ b/fs/fscache/stats.c
> @@ -17,6 +17,10 @@ atomic_t fscache_n_volumes;
>  atomic_t fscache_n_volumes_collision;
>  atomic_t fscache_n_volumes_nomem;
>  atomic_t fscache_n_cookies;
> +atomic_t fscache_n_cookies_lru;
> +atomic_t fscache_n_cookies_lru_expired;
> +atomic_t fscache_n_cookies_lru_removed;
> +atomic_t fscache_n_cookies_lru_dropped;
>  
>  atomic_t fscache_n_acquires;
>  atomic_t fscache_n_acquires_ok;
> @@ -47,6 +51,14 @@ int fscache_stats_show(struct seq_file *m, void *v)
>  		   atomic_read(&fscache_n_acquires_ok),
>  		   atomic_read(&fscache_n_acquires_oom));
>  
> +	seq_printf(m, "LRU    : n=%u exp=%u rmv=%u drp=%u at=%ld\n",
> +		   atomic_read(&fscache_n_cookies_lru),
> +		   atomic_read(&fscache_n_cookies_lru_expired),
> +		   atomic_read(&fscache_n_cookies_lru_removed),
> +		   atomic_read(&fscache_n_cookies_lru_dropped),
> +		   timer_pending(&fscache_cookie_lru_timer) ?
> +		   fscache_cookie_lru_timer.expires - jiffies : 0);
> +
>  	seq_printf(m, "Updates: n=%u\n",
>  		   atomic_read(&fscache_n_updates));
>  
> diff --git a/include/linux/fscache.h b/include/linux/fscache.h
> index 5c57a3ee2145..822d544114b0 100644
> --- a/include/linux/fscache.h
> +++ b/include/linux/fscache.h
> @@ -22,12 +22,14 @@
>  #define fscache_available() (1)
>  #define fscache_volume_valid(volume) (volume)
>  #define fscache_cookie_valid(cookie) (cookie)
> -#define fscache_cookie_enabled(cookie) (cookie)
> +#define fscache_resources_valid(cres) ((cres)->cache_priv)
> +#define fscache_cookie_enabled(cookie) (cookie && !test_bit(FSCACHE_COOKIE_DISABLED, &cookie->flags))
>  #else
>  #define __fscache_available (0)
>  #define fscache_available() (0)
>  #define fscache_volume_valid(volume) (0)
>  #define fscache_cookie_valid(cookie) (0)
> +#define fscache_resources_valid(cres) (false)
>  #define fscache_cookie_enabled(cookie) (0)
>  #endif
>  
> @@ -46,6 +48,7 @@ enum fscache_cookie_state {
>  	FSCACHE_COOKIE_STATE_CREATING,		/* The cache object is being created */
>  	FSCACHE_COOKIE_STATE_ACTIVE,		/* The cache is active, readable and writable */
>  	FSCACHE_COOKIE_STATE_FAILED,		/* The cache failed, withdraw to clear */
> +	FSCACHE_COOKIE_STATE_LRU_DISCARDING,	/* The cookie is being discarded by the LRU */
>  	FSCACHE_COOKIE_STATE_WITHDRAWING,	/* The cookie is being withdrawn */
>  	FSCACHE_COOKIE_STATE_RELINQUISHING,	/* The cookie is being relinquished */
>  	FSCACHE_COOKIE_STATE_DROPPED,		/* The cookie has been dropped */
> @@ -147,6 +150,8 @@ extern struct fscache_cookie *__fscache_acquire_cookie(
>  	const void *, size_t,
>  	const void *, size_t,
>  	loff_t);
> +extern void __fscache_use_cookie(struct fscache_cookie *, bool);
> +extern void __fscache_unuse_cookie(struct fscache_cookie *, const void *, const loff_t *);
>  extern void __fscache_relinquish_cookie(struct fscache_cookie *, bool);
>  
>  /**
> @@ -229,6 +234,39 @@ struct fscache_cookie *fscache_acquire_cookie(struct fscache_volume *volume,
>  					object_size);
>  }
>  
> +/**
> + * fscache_use_cookie - Request usage of cookie attached to an object
> + * @object: Object description
> + * @will_modify: If cache is expected to be modified locally
> + *
> + * Request usage of the cookie attached to an object.  The caller should tell
> + * the cache if the object's contents are about to be modified locally and then
> + * the cache can apply the policy that has been set to handle this case.
> + */
> +static inline void fscache_use_cookie(struct fscache_cookie *cookie,
> +				      bool will_modify)
> +{
> +	if (fscache_cookie_valid(cookie))
> +		__fscache_use_cookie(cookie, will_modify);
> +}
> +
> +/**
> + * fscache_unuse_cookie - Cease usage of cookie attached to an object
> + * @object: Object description
> + * @aux_data: Updated auxiliary data (or NULL)
> + * @object_size: Revised size of the object (or NULL)
> + *
> + * Cease usage of the cookie attached to an object.  When the users count
> + * reaches zero then the cookie relinquishment will be permitted to proceed.
> + */
> +static inline void fscache_unuse_cookie(struct fscache_cookie *cookie,
> +					const void *aux_data,
> +					const loff_t *object_size)
> +{
> +	if (fscache_cookie_valid(cookie))
> +		__fscache_unuse_cookie(cookie, aux_data, object_size);
> +}
> +
>  /**
>   * fscache_relinquish_cookie - Return the cookie to the cache, maybe discarding
>   * it
> @@ -248,4 +286,46 @@ void fscache_relinquish_cookie(struct fscache_cookie *cookie, bool retire)
>  		__fscache_relinquish_cookie(cookie, retire);
>  }
>  
> +/*
> + * Find the auxiliary data on a cookie.
> + */
> +static inline void *fscache_get_aux(struct fscache_cookie *cookie)
> +{
> +	if (cookie->aux_len <= sizeof(cookie->inline_aux))
> +		return cookie->inline_aux;
> +	else
> +		return cookie->aux;
> +}
> +
> +/*
> + * Update the auxiliary data on a cookie.
> + */
> +static inline
> +void fscache_update_aux(struct fscache_cookie *cookie,
> +			const void *aux_data, const loff_t *object_size)
> +{
> +	void *p = fscache_get_aux(cookie);
> +
> +	if (aux_data && p)
> +		memcpy(p, aux_data, cookie->aux_len);
> +	if (object_size)
> +		cookie->object_size = *object_size;
> +}
> +
> +#ifdef CONFIG_FSCACHE_STATS
> +extern atomic_t fscache_n_updates;
> +#endif
> +
> +static inline
> +void __fscache_update_cookie(struct fscache_cookie *cookie, const void *aux_data,
> +			     const loff_t *object_size)
> +{
> +#ifdef CONFIG_FSCACHE_STATS
> +	atomic_inc(&fscache_n_updates);
> +#endif
> +	fscache_update_aux(cookie, aux_data, object_size);
> +	smp_wmb();
> +	set_bit(FSCACHE_COOKIE_NEEDS_UPDATE, &cookie->flags);
> +}
> +
>  #endif /* _LINUX_FSCACHE_H */
> diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
> index 030c97bb9c8b..b0409b1fad23 100644
> --- a/include/trace/events/fscache.h
> +++ b/include/trace/events/fscache.h
> @@ -51,13 +51,18 @@ enum fscache_cookie_trace {
>  	fscache_cookie_discard,
>  	fscache_cookie_get_end_access,
>  	fscache_cookie_get_hash_collision,
> +	fscache_cookie_get_lru,
> +	fscache_cookie_get_use_work,
>  	fscache_cookie_new_acquire,
>  	fscache_cookie_put_hash_collision,
> +	fscache_cookie_put_lru,
>  	fscache_cookie_put_over_queued,
>  	fscache_cookie_put_relinquish,
>  	fscache_cookie_put_withdrawn,
>  	fscache_cookie_put_work,
>  	fscache_cookie_see_active,
> +	fscache_cookie_see_lru_discard,
> +	fscache_cookie_see_lru_do_one,
>  	fscache_cookie_see_relinquish,
>  	fscache_cookie_see_withdraw,
>  	fscache_cookie_see_work,
> @@ -68,6 +73,7 @@ enum fscache_access_trace {
>  	fscache_access_acquire_volume_end,
>  	fscache_access_cache_pin,
>  	fscache_access_cache_unpin,
> +	fscache_access_lookup_cookie,
>  	fscache_access_lookup_cookie_end,
>  	fscache_access_lookup_cookie_end_failed,
>  	fscache_access_relinquish_volume,
> @@ -110,13 +116,18 @@ enum fscache_access_trace {
>  	EM(fscache_cookie_discard,		"DISCARD  ")		\
>  	EM(fscache_cookie_get_hash_collision,	"GET hcoll")		\
>  	EM(fscache_cookie_get_end_access,	"GQ  endac")		\
> +	EM(fscache_cookie_get_lru,		"GET lru  ")		\
> +	EM(fscache_cookie_get_use_work,		"GQ  use  ")		\
>  	EM(fscache_cookie_new_acquire,		"NEW acq  ")		\
>  	EM(fscache_cookie_put_hash_collision,	"PUT hcoll")		\
> +	EM(fscache_cookie_put_lru,		"PUT lru  ")		\
>  	EM(fscache_cookie_put_over_queued,	"PQ  overq")		\
>  	EM(fscache_cookie_put_relinquish,	"PUT relnq")		\
>  	EM(fscache_cookie_put_withdrawn,	"PUT wthdn")		\
>  	EM(fscache_cookie_put_work,		"PQ  work ")		\
>  	EM(fscache_cookie_see_active,		"-   activ")		\
> +	EM(fscache_cookie_see_lru_discard,	"-   x-lru")		\
> +	EM(fscache_cookie_see_lru_do_one,	"-   lrudo")		\
>  	EM(fscache_cookie_see_relinquish,	"-   x-rlq")		\
>  	EM(fscache_cookie_see_withdraw,		"-   x-wth")		\
>  	E_(fscache_cookie_see_work,		"-   work ")
> @@ -126,6 +137,7 @@ enum fscache_access_trace {
>  	EM(fscache_access_acquire_volume_end,	"END   acq_vol")	\
>  	EM(fscache_access_cache_pin,		"PIN   cache  ")	\
>  	EM(fscache_access_cache_unpin,		"UNPIN cache  ")	\
> +	EM(fscache_access_lookup_cookie,	"BEGIN lookup ")	\
>  	EM(fscache_access_lookup_cookie_end,	"END   lookup ")	\
>  	EM(fscache_access_lookup_cookie_end_failed,"END   lookupf")	\
>  	EM(fscache_access_relinquish_volume,	"BEGIN rlq_vol")	\
> 
> 

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
