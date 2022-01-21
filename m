Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F8A496483
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Jan 2022 18:53:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nAy6E-0008ER-09; Fri, 21 Jan 2022 17:53:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nAy6C-0008EL-QT
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 17:53:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZShLJTFnSnpg1D3mZMmIL/yVTmJYadeiyWiFLb6VaoM=; b=a2APiWja3feEfhNqczC2r5xWcJ
 B4Rz+hHqBjVGHr++OBb9eOT33bvosY11hWH54KjsgJYip64fMVNY6Xb61n15TdHe8mHc56JkR93Cr
 Vj9WMkjfkvGWv6g63LLoZPnn2G8U4zyrkntT8wRvcYgRNzBztiVno+dQoif10j3m2BXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZShLJTFnSnpg1D3mZMmIL/yVTmJYadeiyWiFLb6VaoM=; b=bAj4hMzROqHYIbFS/sfXeWDk0I
 WGG/4dS3ItVH7GV9Rgxec/nEE35wXHEU5/BYntGJlbpQBc+J/gS7/XgBZV+za5IV9yk05GXa0bSZq
 tlsEewDB3MpxxqEZbQodV7kAVGow0Nypk1ZFd3dwQmsRpdqxiq9yC0bvV5W0mdWXGOWE=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAy6A-0002jv-Ou
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Jan 2022 17:53:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 44005CE2421;
 Fri, 21 Jan 2022 17:53:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20F25C340E1;
 Fri, 21 Jan 2022 17:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642787590;
 bh=ThQXA6SoRQU7Z3j3cfZ8hZaWXTx2O3dQBqVmVVdKdRg=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Z+uy9Nno6dBEZtnV5CHOdZas1aZMJ4hu9LnjqQjvnKAlaNXGPRY5wjkuKNH84yUfR
 LA6c/o2PmF1zZtyArrLUx2sAPUKDiuqggo7P1s5B3gtrZ8HAFIrlqoKIhtjKvPT0zr
 WDJTqrg8144wD16x9bPXIbWNxPO2ajo9hxmQnvQVgpopFUzI63HqEnkruxwGG5Nd/6
 Ul3wLwr6jSBpxfaT5fgO3GP5I3x+UxV7PAsjAs5xOX1hRBEF7f3jMRSvWEu8VpNOgI
 xvLjpqyi9VR+Je3dQAxxU57a+G0JMlFCA+Ipa2DQ9DnrdYrg5cHS1lXu5dm6m7SFel
 3WV98pUOeYZOw==
Message-ID: <952f31150513af64ca5ccbb440d1e0ca88a37900.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Fri, 21 Jan 2022 12:53:08 -0500
In-Reply-To: <164251404666.3435901.17331742792401482190.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251404666.3435901.17331742792401482190.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-01-18 at 13:54 +0000, David Howells wrote: >
 Add a tracepoint to log failure to apply an active mark to a file in >
 addition
 to tracing successfully setting and unsetting the mark. > > Al [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.73.55 listed in list.dnswl.org]
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
X-Headers-End: 1nAy6A-0002jv-Ou
Subject: Re: [V9fs-developer] [PATCH 05/11] cachefiles: Trace active-mark
 failure
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
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <smfrench@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-01-18 at 13:54 +0000, David Howells wrote:
> Add a tracepoint to log failure to apply an active mark to a file in
> addition to tracing successfully setting and unsetting the mark.
> 
> Also include the backing file inode number in the message logged to dmesg.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> ---
> 
>  fs/cachefiles/namei.c             |    4 +++-
>  include/trace/events/cachefiles.h |   21 +++++++++++++++++++++
>  2 files changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
> index 52c9f0864a87..f256c8aff7bb 100644
> --- a/fs/cachefiles/namei.c
> +++ b/fs/cachefiles/namei.c
> @@ -25,7 +25,9 @@ static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
>  		trace_cachefiles_mark_active(object, inode);
>  		can_use = true;
>  	} else {
> -		pr_notice("cachefiles: Inode already in use: %pd\n", dentry);
> +		trace_cachefiles_mark_failed(object, inode);
> +		pr_notice("cachefiles: Inode already in use: %pd (B=%lx)\n",
> +			  dentry, inode->i_ino);
>  	}
>  
>  	return can_use;
> diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
> index 093c4acb7a3a..c6f5aa74db89 100644
> --- a/include/trace/events/cachefiles.h
> +++ b/include/trace/events/cachefiles.h
> @@ -573,6 +573,27 @@ TRACE_EVENT(cachefiles_mark_active,
>  		      __entry->obj, __entry->inode)
>  	    );
>  
> +TRACE_EVENT(cachefiles_mark_failed,
> +	    TP_PROTO(struct cachefiles_object *obj,
> +		     struct inode *inode),
> +
> +	    TP_ARGS(obj, inode),
> +
> +	    /* Note that obj may be NULL */
> +	    TP_STRUCT__entry(
> +		    __field(unsigned int,		obj		)
> +		    __field(ino_t,			inode		)
> +			     ),
> +
> +	    TP_fast_assign(
> +		    __entry->obj	= obj ? obj->debug_id : 0;
> +		    __entry->inode	= inode->i_ino;
> +			   ),
> +
> +	    TP_printk("o=%08x B=%lx",
> +		      __entry->obj, __entry->inode)
> +	    );
> +
>  TRACE_EVENT(cachefiles_mark_inactive,
>  	    TP_PROTO(struct cachefiles_object *obj,
>  		     struct inode *inode),
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
