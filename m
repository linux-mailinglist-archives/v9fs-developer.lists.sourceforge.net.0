Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0281E31CC9D
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 16:08:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lC1xp-0005MI-R4; Tue, 16 Feb 2021 15:08:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lC1xo-0005M7-Kq
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 15:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JCnbKFxVherPJvijqokAmpOf4MBIzvDJNcC9jg92S8M=; b=kJILC7DheAbjrYt/8Z1zkMcYM4
 f3tn4J0uaJfmyJzaZN4/APIQ9ZDpLSCdcAecg3H4qCPUxTqscgmo1ZFwjVJUND90kXrItdSDT1pya
 I5ryqlu2xfXtg028NfkG6lWAlUQUM3Gz+hQujTBpz+TksIdkrsMWQmjlc3sji2MYlaJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JCnbKFxVherPJvijqokAmpOf4MBIzvDJNcC9jg92S8M=; b=Xur4O4VKIyGxNTZAlABIN3yRuC
 XufuaH0AzX44vAPplu7685Uac0GINItIXsjleWqm3boYqZ9sz2vR+j776ATM/hPPWOenvVeYFL/QN
 4dIhEFGDf9ao3s+kZPcUHJ1Kru4uhf76wpEW+CXo9KD1Qc9atAIZ4R9CvTcfrHIZIsWY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lC1xg-00AzLt-HQ
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 15:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613488098;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JCnbKFxVherPJvijqokAmpOf4MBIzvDJNcC9jg92S8M=;
 b=PAV4LeqAeFHKGmIkku9vrAS/YDdUMPgfgtXebctwyCRHTc57RABBBy+e+wOL5zgiwSDiib
 MZKk4IopOy1cEeU6AFpK3C6H1xWWRUaYfIIQi//7dISMBBPHtm4khzIU1KCpG5OMJdHe0e
 diwP9spfO/ICFMNdLJlBKoI59Qeywpw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-o3PEyjdyPCSTBJfIKqjt2A-1; Tue, 16 Feb 2021 10:08:16 -0500
X-MC-Unique: o3PEyjdyPCSTBJfIKqjt2A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E88CE100CCC1;
 Tue, 16 Feb 2021 15:08:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5855219D6C;
 Tue, 16 Feb 2021 15:08:07 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210216104914.GA28196@lst.de>
References: <20210216104914.GA28196@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340402057.1303470.8038373593844486698.stgit@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-ID: <1444258.1613488086.1@warthog.procyon.org.uk>
Date: Tue, 16 Feb 2021 15:08:06 +0000
Message-ID: <1444259.1613488086@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lC1xg-00AzLt-HQ
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig <hch@lst.de> wrote:

> > Filesystems wanting to use the new API must #define FSCACHE_USE_NEW_IO_API
> > before #including the header
> 
> What exactly does this ifdef buys us?  It seems like the old and new
> APIs don't even conflict.

I was asked to add this.  The APIs look like they don't conflict, but you
can't mix them for a given file because of the differing behaviour of the
PG_fscache flag.  It also makes it much easier to make sure you don't miss
something.  That has happened and it led to some strange effects before we
worked out what was going on.

> And if we really need an ifdef I'd rather use that for the old code to make
> grepping for that easier.

I can do it that way - but this doesn't require changing filesystems that
aren't being changed.  The intent would be to eliminate the #ifdef in a cycle
or two anyway.

Besides, there are 5 filesystems that use this, and two of them are converted
here.  grep would only return three hits: one each in fs/9p/cache.h,
fs/cifs/fscache.h and fs/nfs/fscache.h.

OTOH, I suppose it might dissuade people from adding new usages of the old
API.

> > +	if (ki->term_func) {
> > +		if (ret < 0)
> > +			ki->term_func(ki->term_func_priv, ret);
> > +		else
> > +			ki->term_func(ki->term_func_priv, ki->skipped + ret);
> 
> Why not simplify:
> 
> 		if (ret > 0)
> 			ret += ki->skipped;
> 		ki->term_func(ki->term_func_priv, ret);

Could do that I suppose.  The optimiser will make them the same anyway.

I still wonder if I should do something with ret2 as obtained from the kiocb
completion function:

  static void cachefiles_read_complete(struct kiocb *iocb, long ret, long ret2)

Can we consolidate to one return value?

> > +	/* If the caller asked us to seek for data before doing the read, then
> > +	 * we should do that now.  If we find a gap, we fill it with zeros.
> > +	 */
> 
> FYI, this is not the normal kernel comment style..

I've been following the network style.

> > +	ret = rw_verify_area(READ, file, &ki->iocb.ki_pos, len - skipped);
> > +	if (ret < 0)
> > +		goto presubmission_error_free;
> > +
> > +	get_file(ki->iocb.ki_filp);
> > +
> > +	old_nofs = memalloc_nofs_save();
> > +	ret = call_read_iter(file, &ki->iocb, iter);
> > +	memalloc_nofs_restore(old_nofs);
> 
> As mentioned before I think all this magic belongs in to a helper
> in the VFS.

You suggested vfs_iocb_iter_read() in your reply to another patch, but it
occurs to me that that doesn't have memalloc_nofs_*() in it.  I could hoist
the memalloc_nofs stuff out and use those helpers.

> > +static const struct netfs_cache_ops cachefiles_netfs_cache_ops = {
> > +	.end_operation		= cachefiles_end_operation,
> > +	.read			= cachefiles_read,
> > +	.write			= cachefiles_write,
> > +	.expand_readahead	= NULL,
> > +	.prepare_read		= cachefiles_prepare_read,
> > +};
> ...
> Also at least in linux-next ->read and ->write seem to never actually
> be called.

See netfs_read_from_cache() and netfs_rreq_do_write_to_cache() in
fs/netfs/read_helper.c.  Look for "cres->ops->".

> > +{
> > +	struct cachefiles_object *object;
> > +	struct cachefiles_cache *cache;
> > +	struct path path;
> > +	struct file *file;
> > +
> > +	_enter("");
> > +
> > +	object = container_of(op->op.object,
> > +			      struct cachefiles_object, fscache);
> > +	cache = container_of(object->fscache.cache,
> > +			     struct cachefiles_cache, cache);
> > +
> > +	path.mnt = cache->mnt;
> > +	path.dentry = object->backer;
> > +	file = open_with_fake_path(&path, O_RDWR | O_LARGEFILE | O_DIRECT,
> > +				   d_inode(object->backer), cache->cache_cred);
> 
> I think this should be plain old dentry_open?

open_with_fake_path() sets FMODE_NOACCOUNT.  In the fscache-iter branch, the
file is held open a lot longer and then ENFILE/EMFILE starts being a serious
problem.

That said, I'm considering changing things so that all the data in the cache
is held in one or a few files with an index to locate things - at which point
this issue goes away.

> > +	op = fscache_alloc_retrieval(cookie, NULL, NULL, NULL);
> > +	if (!op)
> > +		return -ENOMEM;
> > +	//atomic_set(&op->n_pages, 1);
> 
> ???

I should remove that - it kind of got left behind.  That was necessary for the
old API, but a whole load of this code, including the fscache_retrieval struct
will be going away when the cookie and operation handling get rewritten.

> > +{
> > +	if (fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie))
> > +		return __fscache_begin_read_operation(rreq, cookie);
> > +	else
> > +		return -ENOBUFS;
> > +}
> 
> No need for an else after a return.  I personally also prefer to always
> handle the error case first, ala:

It's not precisely an error case, more a "fallback required" case.

>         if (!fscache_cookie_valid(cookie) || !fscache_cookie_enabled(cookie))
> 	                return -ENOBUFS;
> 	return __fscache_begin_read_operation(rreq, cookie);
> 
> Also do we really need this inline fast path to start with?

Yes.  fscache might be compiled out, in which case we'll never go down the
slow path.  And the common case is that cookie == NULL, so let's not jump out
of line if we don't have to.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
