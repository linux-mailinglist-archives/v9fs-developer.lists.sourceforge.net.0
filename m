Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED55C564BFB
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 05:06:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8CPa-0006c3-G5; Mon, 04 Jul 2022 03:06:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8CPZ-0006bx-7p
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 03:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fj+gZ/NftbI3WfcWnm6HjOAGudOAHEdUrbTmNeMQE2s=; b=NONt50PUDwom9nG4rI4OaydoRo
 vaCXVN8W9E3psMFruYLFdMNg1/p9fcqLAs/2I1Ju01vcAb+IPpbkdfHVz5Udk8H3Z1eLxtsRnWFky
 M8FU3CWhGMQ3br+QZIJcokWdSg4mVKAkn8c5ujQsFCAFiMKCPj9ifiHIT3n4EvW8axbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fj+gZ/NftbI3WfcWnm6HjOAGudOAHEdUrbTmNeMQE2s=; b=IA6vXa5a22aVTrf8ycgyLo0giG
 LVM8IapJ+G2KjDr3nB35pYMOsRm6xla5X10e204rVmoEi/jFkKkMnxv7PzX+lhJ5WTqtr2FjlmXZK
 TIAAeZV/LabfNITCV4R3lhZjNQJby8CoqAIXk3Fm9k7H3WhqGpz3ybov8gTLCJyRqP1Q=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8CPV-006Zdl-51
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 03:06:08 +0000
Received: by mail-qt1-f179.google.com with SMTP id h19so8271025qtp.6
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 20:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fj+gZ/NftbI3WfcWnm6HjOAGudOAHEdUrbTmNeMQE2s=;
 b=UxVY1UQyVm6MT7vondxEhaEdc+s7wpxV/mi4jQqs0OvGFybtLRUBCfPnQkF7lpm/lw
 qNVgiZHwt3U/RNIOyDc4aWNZCwKCKoO1KUtRn4Y6OMv5xOtpMHAcvmSg7rMrdEKJrzyE
 WwQXB4mlUImCJP5HF233l8Ri9WsTYz1RDR1HHpCUXJMoIz2TvcSfJTRqERDSyBNl5Hhn
 kGo8K6S8qE2C4xAd1PP9CKngsBSZszKcGBnxi0OScIILgt/81FbA6vr+qRVMoqbd1tXH
 IIJHZHzpxQAsm56tJW9X09UtFFyQhKanzmZI/Hak2tXBPC32xKsDBEpZiQuO4SjjDVX/
 Cgow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fj+gZ/NftbI3WfcWnm6HjOAGudOAHEdUrbTmNeMQE2s=;
 b=RrF5PbFyqCx+ndd/3kWJtkJgWx6w1C8QQ+ikY95ZJvbU+l6tNBPhUHqUad9aNnDJ1E
 01GYJXeQn2/6pumQcJeptWCyukaYE9SsPad0aKQTPG9vIEF2ipwEKlGpI9pnoXlu0G/L
 8d8cmmxFUxkfIYifwEY43BGHhhfdYMf16K1vJYxeGeODvsWPAu9iyw5RphlGJCmCIesf
 jKxwneJ+4b0cakYy/W0A1iUXI2DBLNg9K4qiAa34DIxr5XK3H5wuoAu54ws8LG+06xEY
 /s4RfKZ7HJ3GggqvxnZ3EC93vbpdrvfdlENL8bsLWoxZJQjcfql0i45JhUbuLibdji/x
 d6zg==
X-Gm-Message-State: AJIora9wbe7szfw+17uj3m9tYi6Ett4+ZnRh/bOkQ8Ic21ABSGX9RIDR
 lY7G7R9OkGWr4Hr1TONdaw==
X-Google-Smtp-Source: AGRyM1s3f78jKxlSTdrXtb94tIW+7BcbOixHOL7QHtczikbNu8Y5cDhwPRRRvFzF/8KHitQrDWH/Zg==
X-Received: by 2002:ac8:7dd1:0:b0:31d:5646:f1a1 with SMTP id
 c17-20020ac87dd1000000b0031d5646f1a1mr2748922qte.568.1656903959259; 
 Sun, 03 Jul 2022 20:05:59 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 bs36-20020a05620a472400b006a6ab8f761csm24914067qkb.62.2022.07.03.20.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 20:05:58 -0700 (PDT)
Date: Sun, 3 Jul 2022 23:05:57 -0400
From: Kent Overstreet <kent.overstreet@gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704014243.153050-1-kent.overstreet@gmail.com>
 <20220704014243.153050-3-kent.overstreet@gmail.com>
 <YsJO8gJeRwf96yTi@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsJO8gJeRwf96yTi@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 04, 2022 at 11:22:42AM +0900, Dominique Martinet
 wrote: > Thanks for the patches! > > first two patches look good, couple
 of comments below for this one > > Kent Overstreet wrote on Sun, J [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8CPV-006Zdl-51
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 04, 2022 at 11:22:42AM +0900, Dominique Martinet wrote:
> Thanks for the patches!
> 
> first two patches look good, couple of comments below for this one
> 
> Kent Overstreet wrote on Sun, Jul 03, 2022 at 09:42:43PM -0400:
> > Signed-off-by: Kent Overstreet <kent.overstreet@gmail.com>
> > Cc: Eric Van Hensbergen <ericvh@gmail.com>
> > Cc: Latchesar Ionkov <lucho@ionkov.net>
> > Cc: Dominique Martinet <asmadeus@codewreck.org>
> > ---
> >  include/net/9p/9p.h     |  6 ++++-
> >  include/net/9p/client.h |  5 +++-
> >  net/9p/client.c         | 58 ++++++++++++++++++++++++++++++-----------
> >  net/9p/trans_rdma.c     |  2 +-
> >  4 files changed, 53 insertions(+), 18 deletions(-)
> > 
> > diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
> > index 24a509f559..c0d59b53c1 100644
> > --- a/include/net/9p/9p.h
> > +++ b/include/net/9p/9p.h
> > @@ -539,12 +539,16 @@ struct p9_rstatfs {
> >  struct p9_fcall {
> >  	u32 size;
> >  	u8 id;
> > +	enum p9_fcall_alloc {
> > +		P9_FCALL_KMEM_CACHE,
> > +		P9_FCALL_KMALLOC,
> > +		P9_FCALL_MEMPOOL,
> > +	} allocated;
> >  	u16 tag;
> >  
> >  	size_t offset;
> >  	size_t capacity;
> >  
> > -	struct kmem_cache *cache;
> >  	u8 *sdata;
> >  };
> >  
> > diff --git a/include/net/9p/client.h b/include/net/9p/client.h
> > index cb78e0e333..6517ca36bf 100644
> > --- a/include/net/9p/client.h
> > +++ b/include/net/9p/client.h
> > @@ -9,6 +9,7 @@
> >  #ifndef NET_9P_CLIENT_H
> >  #define NET_9P_CLIENT_H
> >  
> > +#include <linux/mempool.h>
> >  #include <linux/utsname.h>
> >  #include <linux/idr.h>
> >  
> > @@ -106,6 +107,7 @@ struct p9_client {
> >  	enum p9_trans_status status;
> >  	void *trans;
> >  	struct kmem_cache *fcall_cache;
> > +	mempool_t pools[2];
> >  
> >  	union {
> >  		struct {
> > @@ -222,7 +224,8 @@ int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
> >  				kgid_t gid, struct p9_qid *qid);
> >  int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status);
> >  int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *fl);
> > -void p9_fcall_fini(struct p9_fcall *fc);
> > +void p9_fcall_fini(struct p9_client *c, struct p9_fcall *fc,
> > +		   int fc_idx);
> >  struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag);
> >  
> >  static inline void p9_req_get(struct p9_req_t *r)
> > diff --git a/net/9p/client.c b/net/9p/client.c
> > index a36a40137c..82061c49cb 100644
> > --- a/net/9p/client.c
> > +++ b/net/9p/client.c
> > @@ -219,22 +219,34 @@ static int parse_opts(char *opts, struct p9_client *clnt)
> >  }
> >  
> >  static int p9_fcall_init(struct p9_client *c, struct p9_fcall *fc,
> > -			 int alloc_msize)
> > +			 int fc_idx, unsigned alloc_msize)
> >  {
> > +	WARN(alloc_msize > c->msize, "alloc_mize %u client msize %u",
> > +	     alloc_msize, c->msize);
> > +
> >  	if (likely(c->fcall_cache) && alloc_msize == c->msize) {
> >  		fc->sdata = kmem_cache_alloc(c->fcall_cache, GFP_NOFS);
> > -		fc->cache = c->fcall_cache;
> > +		fc->allocated = P9_FCALL_KMEM_CACHE;
> >  	} else {
> >  		fc->sdata = kmalloc(alloc_msize, GFP_NOFS);
> > -		fc->cache = NULL;
> > +		fc->allocated = P9_FCALL_KMALLOC;
> >  	}
> > -	if (!fc->sdata)
> > +
> > +	if (!fc->sdata >> alloc_msize > c->msize)
> >  		return -ENOMEM;
> 
> probably meant && instead of >> ?

Thanks, good catch

> I'd also move this alloc_msize > c->msize check just below the warn to
> keep it early if you want to keep it, but if we want to warn here it
> really should be in p9_tag_alloc that alreadys cuts the user argument
> short with a `min(c->msize, max_size)`
> 
> We shouldn't have any user calling with more at this point (the
> user-provided size comes from p9_client_prepare_req arguments and it's
> either msize or header size constants); and it probably makes sense to
> check and error out rather than cap it.

If that's the case I think we should just switch the warning to a BUG_ON() - I
just wasn't sure from reading the code if that was really guarded against.

> hm, so you try with the kmalloc/kmem_cache first and only fallback to
> mempool if that failed?
> 
> What's the point of keeping the kmem cache in this case, instead of
> routing all size-appropriate requests to the mempool?
> (honest question)

Actually none, and I should've made it a kmem_cache mempool, not a kmalloc pool.


> 
> > +	}
> > +
> >  	fc->capacity = alloc_msize;
> >  	return 0;
> >  }
> >  
> > -void p9_fcall_fini(struct p9_fcall *fc)
> > +void p9_fcall_fini(struct p9_client *c, struct p9_fcall *fc,
> > +		   int fc_idx)
> >  {
> >  	/* sdata can be NULL for interrupted requests in trans_rdma,
> >  	 * and kmem_cache_free does not do NULL-check for us
> > @@ -242,10 +254,17 @@ void p9_fcall_fini(struct p9_fcall *fc)
> >  	if (unlikely(!fc->sdata))
> >  		return;
> >  
> > -	if (fc->cache)
> > -		kmem_cache_free(fc->cache, fc->sdata);
> > -	else
> > +	switch (fc->allocated) {
> > +	case P9_FCALL_KMEM_CACHE:
> > +		kmem_cache_free(c->fcall_cache, fc->sdata);
> > +		break;
> > +	case P9_FCALL_KMALLOC:
> >  		kfree(fc->sdata);
> > +		break;
> > +	case P9_FCALL_MEMPOOL:
> > +		mempool_free(fc->sdata, &c->pools[fc_idx]);
> > +		break;
> > +	}
> >  }
> >  EXPORT_SYMBOL(p9_fcall_fini);
> >  
> > @@ -270,9 +289,9 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
> >  	if (!req)
> >  		return ERR_PTR(-ENOMEM);
> >  
> > -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> > +	if (p9_fcall_init(c, &req->tc, 0, alloc_msize))
> >  		goto free_req;
> > -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> > +	if (p9_fcall_init(c, &req->rc, 1, alloc_msize))
> 
> given the two rc/tc buffers are of same size I don't see the point of
> using two caches either, you could just double the min number of
> elements to the same effect?

You can't double allocate from the same mempool, that will deadlock if multiple
threads need the last element at the same time - I should've left a comment for
that.

Here's an updated patch - also up in git at
https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool
-- >8 --
Subject: [PATCH] 9p: Add mempools for RPCs

Signed-off-by: Kent Overstreet <kent.overstreet@gmail.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
---
 include/net/9p/9p.h     |  2 +-
 include/net/9p/client.h | 12 ++++++-
 net/9p/client.c         | 70 ++++++++++++++++++++++++-----------------
 net/9p/trans_rdma.c     |  2 +-
 4 files changed, 54 insertions(+), 32 deletions(-)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 24a509f559..0b20ee6854 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -539,12 +539,12 @@ struct p9_rstatfs {
 struct p9_fcall {
 	u32 size;
 	u8 id;
+	bool used_mempool;
 	u16 tag;
 
 	size_t offset;
 	size_t capacity;
 
-	struct kmem_cache *cache;
 	u8 *sdata;
 };
 
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index cb78e0e333..832dcc866a 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -9,6 +9,7 @@
 #ifndef NET_9P_CLIENT_H
 #define NET_9P_CLIENT_H
 
+#include <linux/mempool.h>
 #include <linux/utsname.h>
 #include <linux/idr.h>
 
@@ -107,6 +108,14 @@ struct p9_client {
 	void *trans;
 	struct kmem_cache *fcall_cache;
 
+	/*
+	 * We need two identical mempools because it's not safe to allocate
+	 * multiple elements from the same pool (without freeing the first);
+	 * that will deadlock if multiple threads need the last element at the
+	 * same time.
+	 */
+	mempool_t pools[2];
+
 	union {
 		struct {
 			int rfd;
@@ -222,7 +231,8 @@ int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
 				kgid_t gid, struct p9_qid *qid);
 int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status);
 int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *fl);
-void p9_fcall_fini(struct p9_fcall *fc);
+void p9_fcall_fini(struct p9_client *c, struct p9_fcall *fc,
+		   int fc_idx);
 struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag);
 
 static inline void p9_req_get(struct p9_req_t *r)
diff --git a/net/9p/client.c b/net/9p/client.c
index a36a40137c..e14074d031 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -218,23 +218,29 @@ static int parse_opts(char *opts, struct p9_client *clnt)
 	return ret;
 }
 
-static int p9_fcall_init(struct p9_client *c, struct p9_fcall *fc,
-			 int alloc_msize)
+static void p9_fcall_init(struct p9_client *c, struct p9_fcall *fc,
+			  int fc_idx, unsigned alloc_msize)
 {
-	if (likely(c->fcall_cache) && alloc_msize == c->msize) {
-		fc->sdata = kmem_cache_alloc(c->fcall_cache, GFP_NOFS);
-		fc->cache = c->fcall_cache;
-	} else {
-		fc->sdata = kmalloc(alloc_msize, GFP_NOFS);
-		fc->cache = NULL;
-	}
-	if (!fc->sdata)
-		return -ENOMEM;
+	gfp_t gfp = GFP_NOFS|__GFP_NOWARN;
+
+	BUG_ON(alloc_msize > c->msize);
+
+	fc->sdata = NULL;
+	fc->used_mempool = false;
 	fc->capacity = alloc_msize;
-	return 0;
+
+	if (alloc_msize < c->msize)
+		fc->sdata = kmalloc(alloc_msize, gfp);
+
+	if (!fc->sdata) {
+		fc->sdata = mempool_alloc(&c->pools[fc_idx], gfp);
+		fc->used_mempool = true;
+		fc->capacity = c->msize;
+	}
 }
 
-void p9_fcall_fini(struct p9_fcall *fc)
+void p9_fcall_fini(struct p9_client *c, struct p9_fcall *fc,
+		   int fc_idx)
 {
 	/* sdata can be NULL for interrupted requests in trans_rdma,
 	 * and kmem_cache_free does not do NULL-check for us
@@ -242,8 +248,8 @@ void p9_fcall_fini(struct p9_fcall *fc)
 	if (unlikely(!fc->sdata))
 		return;
 
-	if (fc->cache)
-		kmem_cache_free(fc->cache, fc->sdata);
+	if (fc->used_mempool)
+		mempool_free(fc->sdata, &c->pools[fc_idx]);
 	else
 		kfree(fc->sdata);
 }
@@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	if (!req)
 		return ERR_PTR(-ENOMEM);
 
-	if (p9_fcall_init(c, &req->tc, alloc_msize))
-		goto free_req;
-	if (p9_fcall_init(c, &req->rc, alloc_msize))
-		goto free;
+	p9_fcall_init(c, &req->tc, 0, alloc_msize);
+	p9_fcall_init(c, &req->rc, 1, alloc_msize);
 
 	p9pdu_reset(&req->tc);
 	p9pdu_reset(&req->rc);
@@ -310,9 +314,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	return req;
 
 free:
-	p9_fcall_fini(&req->tc);
-	p9_fcall_fini(&req->rc);
-free_req:
+	p9_fcall_fini(c, &req->tc, 0);
+	p9_fcall_fini(c, &req->rc, 1);
 	kmem_cache_free(p9_req_cache, req);
 	return ERR_PTR(-ENOMEM);
 }
@@ -373,8 +376,8 @@ static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 int p9_req_put(struct p9_client *c, struct p9_req_t *r)
 {
 	if (refcount_dec_and_test(&r->refcount)) {
-		p9_fcall_fini(&r->tc);
-		p9_fcall_fini(&r->rc);
+		p9_fcall_fini(c, &r->tc, 0);
+		p9_fcall_fini(c, &r->rc, 1);
 		kmem_cache_free(p9_req_cache, r);
 		return 1;
 	}
@@ -999,7 +1002,7 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	char *client_id;
 
 	err = 0;
-	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
+	clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
 	if (!clnt)
 		return ERR_PTR(-ENOMEM);
 
@@ -1050,10 +1053,6 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 		goto close_trans;
 	}
 
-	err = p9_client_version(clnt);
-	if (err)
-		goto close_trans;
-
 	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
 	 * followed by data accessed from userspace by read
 	 */
@@ -1063,6 +1062,15 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 					   clnt->msize - (P9_HDRSZ + 4),
 					   NULL);
 
+	err =   mempool_init_slab_pool(&clnt->pools[0], 4, clnt->fcall_cache) ?:
+		mempool_init_slab_pool(&clnt->pools[1], 4, clnt->fcall_cache);
+	if (err)
+		goto close_trans;
+
+	err = p9_client_version(clnt);
+	if (err)
+		goto close_trans;
+
 	return clnt;
 
 close_trans:
@@ -1070,6 +1078,8 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 put_trans:
 	v9fs_put_trans(clnt->trans_mod);
 free_client:
+	mempool_exit(&clnt->pools[1]);
+	mempool_exit(&clnt->pools[0]);
 	kfree(clnt);
 	return ERR_PTR(err);
 }
@@ -1094,6 +1104,8 @@ void p9_client_destroy(struct p9_client *clnt)
 
 	p9_tag_cleanup(clnt);
 
+	mempool_exit(&clnt->pools[1]);
+	mempool_exit(&clnt->pools[0]);
 	kmem_cache_destroy(clnt->fcall_cache);
 	kfree(clnt);
 }
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index d817d37452..99d878d70d 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -431,7 +431,7 @@ static int rdma_request(struct p9_client *client, struct p9_req_t *req)
 	if (unlikely(atomic_read(&rdma->excess_rc) > 0)) {
 		if ((atomic_sub_return(1, &rdma->excess_rc) >= 0)) {
 			/* Got one! */
-			p9_fcall_fini(&req->rc);
+			p9_fcall_fini(client, &req->rc, 1);
 			req->rc.sdata = NULL;
 			goto dont_need_post_recv;
 		} else {
-- 
2.36.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
