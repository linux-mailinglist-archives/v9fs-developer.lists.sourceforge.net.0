Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A594E56474E
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Jul 2022 14:48:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o7z1Q-0006Gn-6h; Sun, 03 Jul 2022 12:48:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <SRS0=wxAz=XI=goodmis.org=rostedt@kernel.org>)
 id 1o7z1O-0006Gh-Lv
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 12:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FcZJgpIK2U25SO784tlA5sqMKK+S+acNtsnBumvIWAo=; b=bIMuz/kIOBL7HS+3YFfYj0ZtV7
 CduRrWmcbeI/20sjQDjrURiIX5RLGFzi5+zMMyEpoeDYNEA9EhAnqW2jLMLwPizO09GggI41gomaM
 dV47YiYV6N5w/iyznALfh5ep+w1dKGa68mAQFavcBr6TSJKfp2In11VfpUUqvmUfDbXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FcZJgpIK2U25SO784tlA5sqMKK+S+acNtsnBumvIWAo=; b=jAdRLdBhjH4yRk2GIyMcTg4LTb
 rm1e5IBlMdkKNLZtyZMI7sqC0B6G/7fEHkYzKAwJHbyYL5BaPvlwfBDlYAnhnyZdulZT/Ik7hH3U5
 4tuQD2rAmCIyxJBnqmsxCjXSiICzLR6syczBGPOCFSxxAzt0ZUwFF0NKFdizYWMkxHAM=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o7z1O-005h2S-3V
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 12:48:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C516CB80838;
 Sun,  3 Jul 2022 12:48:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D831C341C6;
 Sun,  3 Jul 2022 12:48:09 +0000 (UTC)
Date: Sun, 3 Jul 2022 08:48:08 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220703084808.1d6a9989@rorschach.local.home>
In-Reply-To: <20220702102913.2164800-1-asmadeus@codewreck.org>
References: <20220702102913.2164800-1-asmadeus@codewreck.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat,
 2 Jul 2022 19:29:14 +0900 Dominique Martinet <asmadeus@codewreck.org>
 wrote: > This adds a tracepoint event for 9p fid lifecycle tracing: when
 a fid > is created, its reference count increased/decreased, and freed. >
 The new 9p_fid_ref tracepoint should help anyone wishing to [...] 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1o7z1O-005h2S-3V
Subject: Re: [V9fs-developer] [PATCH v3] 9p fid refcount: add a 9p_fid_ref
 tracepoint
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
Cc: v9fs-developer@lists.sourceforge.net, Ingo Molnar <mingo@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat,  2 Jul 2022 19:29:14 +0900
Dominique Martinet <asmadeus@codewreck.org> wrote:

> This adds a tracepoint event for 9p fid lifecycle tracing: when a fid
> is created, its reference count increased/decreased, and freed.
> The new 9p_fid_ref tracepoint should help anyone wishing to debug any
> fid problem such as missing clunk (destroy) or use-after-free.
> 
> Link: https://lkml.kernel.org/r/20220612085330.1451496-6-asmadeus@codewreck.org
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
> 
> Just resending this single patch of the series as it's the only one
> without a review tag.
> 
> Steven, is it ok to carry it in my tree as is or do I need blessings
> from you or Ingo?

The addition of trace events do belong to the maintainers of where the
trace events go.

> (it depends on the previous patch so I'd carry it in my tree anyway,
> but would be more comfortable with a reviewed-by tag)

Yes, I prefer people Cc me on trace events just so that I can catch
mistakes or find better ways to accomplish what is trying to be done.

Especially for something that does changes like this patch, which are
not just the trivial TRACE_EVENT() trace_*() procedure. Thanks for
Cc'ing me.

> 
> 
> v2 -> v3:
>  - added EXPORT_TRACEPOINT_SYMBOL(9p_fid_ref) to have this work when
>    built as module
> 
> v1 -> v2:
>  - added rationale to commit message
>  - adjusted to use DECLARE_TRACEPOINT + tracepoint_enable() in header
> 
>  include/net/9p/client.h   | 13 +++++++++++
>  include/trace/events/9p.h | 48 +++++++++++++++++++++++++++++++++++++++
>  net/9p/client.c           | 20 +++++++++++++++-
>  3 files changed, 80 insertions(+), 1 deletion(-)
> 

The rest looks fine.

For the tracing point of view:

Reviewed-by: Steven Rostedt (Google) <rostedt@goodmis.org>

-- Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
