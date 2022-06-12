Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA73547CD7
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 00:47:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0WMW-0001cK-5A; Sun, 12 Jun 2022 22:47:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <SRS0=Cjdc=WT=goodmis.org=rostedt@kernel.org>)
 id 1o0WMV-0001cE-3Q
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 22:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uyLApAgVLPZTpAs9psU57WiAZIJnNi/Z51eEECIb6f0=; b=lKLw+OJZDwGpidtuXESBzuATqD
 Ee89XkXvLB/HTcNjwkpqL5ukX776dc4bBbsQKZtQv+UGaomM/NhwjnmyWBXrqsgjIgYJv8XRyZalQ
 oY3GqIyAcNOi5GwQqTzeCZgNmuQzLfXovLN2OqQuXpEm6lW0mBwN4PGJ2QWtDEYnLgbI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uyLApAgVLPZTpAs9psU57WiAZIJnNi/Z51eEECIb6f0=; b=l+3aOLfcUpHs2+rLpqknMlz3px
 z7ZiYyeuVUK63Rob/UndQm7qXDSaxRWfG+vV4bDEMROIs5AxkW2f+QMEFbsY6CSyAqY1lurOGKzFV
 d30BetEcPnxyFt4l/EEfVGht8QBpJjT/cHrRid5LT8DdAPXqatUe1/EphGmeyWQ1hYFE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0WMP-0004ix-0a
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 22:47:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DC51860FA3;
 Sun, 12 Jun 2022 22:47:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0503C34115;
 Sun, 12 Jun 2022 22:47:02 +0000 (UTC)
Date: Sun, 12 Jun 2022 18:46:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220612184659.6dff5107@rorschach.local.home>
In-Reply-To: <20220612085330.1451496-6-asmadeus@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-6-asmadeus@codewreck.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun,
 12 Jun 2022 17:53:28 +0900 Dominique Martinet <asmadeus@codewreck.org>
 wrote: This needs to have a change log. A tracepoint should never be added
 without explaining why it is being added and its purpose. 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0WMP-0004ix-0a
Subject: Re: [V9fs-developer] [PATCH 05/06] 9p fid refcount: add a
 9p_fid_ref tracepoint
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, "David
 S. Miller" <davem@davemloft.net>, Tyler Hicks <tyhicks@linux.microsoft.com>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ingo Molnar <mingo@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, 12 Jun 2022 17:53:28 +0900
Dominique Martinet <asmadeus@codewreck.org> wrote:

This needs to have a change log. A tracepoint should never be added
without explaining why it is being added and its purpose.

> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
> 
> This is the first time I add a tracepoint, so if anyone has time to
> check I didn't make something too stupid please have a look.
> I've mostly copied from netfs'.
> 
> Also, a question if someone has time: I'd have liked to use the
> tracepoint in static inline wrappers for getref/putref, but it's not
> good to add the tracepoints to a .h, right?

Correct, because it can have unexpected side effects. Thus it is best
to call a wrapper function that is defined in a C file that will then
call the tracepoint. To avoid the overhead of the function call when
tracing is not enabled, you should use (in the header):

  #include <linux/tracepoint-defs.h>

  DECLARE_TRACEPOINT(<tracepoint-name>);

  if (tracepoint_enabled(<tracepoint-name>))
	do_<tracepoint-name>(...);

and in the C file have:

  void do_<tracepoint-name>(...)
  {
	trace_<tracepoint-name>(...);
  }

that calls the tracepoint. The tracepoint_enabled(<tracepoint-name>)()
is another special function that is created by the TRACE_EVENT() macro
to use, that is a static branch and not a real if statement. That is, it
is a nop that skips calling the wrapper function when not enabled, and
a jmp to call the wrapper function when the tracepoint is enabled.

How to do this is described in include/linux/tracepoint-defs.h and
there's an example of this use case in include/linux/mmap_lock.h.

> Especially with the CREATE_TRACE_POINTS macro...
> How do people usually go about that, just bite the bullet and make it
> a real function?
> 
> 
>  include/trace/events/9p.h | 48 +++++++++++++++++++++++++++++++++++++++
>  net/9p/client.c           |  9 +++++++-
>  2 files changed, 56 insertions(+), 1 deletion(-)
> 
> diff --git a/include/trace/events/9p.h b/include/trace/events/9p.h
> index 78c5608a1648..4dfa6d7f83ba 100644
> --- a/include/trace/events/9p.h
> +++ b/include/trace/events/9p.h
> @@ -77,6 +77,13 @@
>  		EM( P9_TWSTAT,		"P9_TWSTAT" )			\
>  		EMe(P9_RWSTAT,		"P9_RWSTAT" )
>  
> +
> +#define P9_FID_REFTYPE							\
> +		EM( P9_FID_REF_CREATE,	"create " )			\
> +		EM( P9_FID_REF_GET,	"get    " )			\
> +		EM( P9_FID_REF_PUT,	"put    " )			\
> +		EMe(P9_FID_REF_DESTROY,	"destroy" )
> +
>  /* Define EM() to export the enums to userspace via TRACE_DEFINE_ENUM() */
>  #undef EM
>  #undef EMe
> @@ -84,6 +91,21 @@
>  #define EMe(a, b)	TRACE_DEFINE_ENUM(a);
>  
>  P9_MSG_T
> +P9_FID_REFTYPE
> +
> +/* And also use EM/EMe to define helper enums -- once */
> +#ifndef __9P_DECLARE_TRACE_ENUMS_ONLY_ONCE
> +#define __9P_DECLARE_TRACE_ENUMS_ONLY_ONCE
> +#undef EM
> +#undef EMe
> +#define EM(a, b)	a,
> +#define EMe(a, b)	a
> +
> +enum p9_fid_reftype {
> +	P9_FID_REFTYPE
> +} __mode(byte);
> +
> +#endif
>  
>  /*
>   * Now redefine the EM() and EMe() macros to map the enums to the strings
> @@ -96,6 +118,8 @@ P9_MSG_T
>  
>  #define show_9p_op(type)						\
>  	__print_symbolic(type, P9_MSG_T)
> +#define show_9p_fid_reftype(type)					\
> +	__print_symbolic(type, P9_FID_REFTYPE)
>  
>  TRACE_EVENT(9p_client_req,
>  	    TP_PROTO(struct p9_client *clnt, int8_t type, int tag),
> @@ -168,6 +192,30 @@ TRACE_EVENT(9p_protocol_dump,
>  		      __entry->tag, 0, __entry->line, 16, __entry->line + 16)
>   );
>  
> +
> +TRACE_EVENT(9p_fid_ref,
> +	    TP_PROTO(struct p9_fid *fid, __u8 type),
> +
> +	    TP_ARGS(fid, type),
> +
> +	    TP_STRUCT__entry(
> +		    __field(	int,	fid		)
> +		    __field(	int,	refcount	)
> +		    __field(	__u8, type	)
> +		    ),
> +
> +	    TP_fast_assign(
> +		    __entry->fid = fid->fid;
> +		    __entry->refcount = refcount_read(&fid->count);
> +		    __entry->type = type;
> +		    ),
> +
> +	    TP_printk("%s fid %d, refcount %d",
> +		      show_9p_fid_reftype(__entry->type),
> +		      __entry->fid, __entry->refcount)
> +);
> +
> +
>  #endif /* _TRACE_9P_H */
>  
>  /* This part must be outside protection */
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 5531b31e0fb2..fdeeda0a811d 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -907,8 +907,10 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
>  			    GFP_NOWAIT);
>  	spin_unlock_irq(&clnt->lock);
>  	idr_preload_end();
> -	if (!ret)
> +	if (!ret) {
> +		trace_9p_fid_ref(fid, P9_FID_REF_CREATE);
>  		return fid;
> +	}
>  
>  	kfree(fid);
>  	return NULL;
> @@ -920,6 +922,7 @@ static void p9_fid_destroy(struct p9_fid *fid)
>  	unsigned long flags;
>  
>  	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
> +	trace_9p_fid_ref(fid, P9_FID_REF_DESTROY);
>  	clnt = fid->clnt;
>  	spin_lock_irqsave(&clnt->lock, flags);
>  	idr_remove(&clnt->fids, fid->fid);
> @@ -932,6 +935,8 @@ static void p9_fid_destroy(struct p9_fid *fid)
>   * because trace_* functions can't be used there easily
>   */
>  struct p9_fid *p9_fid_get(struct p9_fid *fid) {
> +	trace_9p_fid_ref(fid, P9_FID_REF_GET);
> +
>  	refcount_inc(&fid->count);
>  
>  	return fid;
> @@ -941,6 +946,8 @@ int p9_fid_put(struct p9_fid *fid) {
>  	if (!fid || IS_ERR(fid))
>  		return 0;
>  
> +	trace_9p_fid_ref(fid, P9_FID_REF_PUT);
> +
>          if (!refcount_dec_and_test(&fid->count))
>                  return 0;
>  

Nothing stands out to me that would be wrong with the above.

-- Steve



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
