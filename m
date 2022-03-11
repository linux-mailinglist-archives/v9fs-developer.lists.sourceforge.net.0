Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D11034D62AA
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Mar 2022 14:55:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSfji-00041r-9D; Fri, 11 Mar 2022 13:55:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nSfjg-00041k-Ou
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Mar 2022 13:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zq9orI5z5XPX7aHlBxPXKFTMltgugkOakceZLcs9fFE=; b=Cs9I7xXwCaQfqK5LTZVr/z3RdL
 T881ZQFAqL4t4VEPNATEUyMJil/zoCUfhWwDTn3ygOBcrq2w4sdFSMWJQZMPSqhFjzL1vElpGK8Uw
 s6rRLLbLGuB8Pg8tj85O7MSCy+XZQVLY8lEnHoHwsBqr9BJ19YAsiVUjBmNeZ0wrayLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zq9orI5z5XPX7aHlBxPXKFTMltgugkOakceZLcs9fFE=; b=IozJAP1NFrQNv+jNe+f/B0pLwI
 9CZltcCGim3dMD52wCQ+WM9sV0lSyJsif9BVsS8IK9+2MN5nIG9WyTlrl+f/ADLtDkUaonxL0hatr
 mhwBTmuD7mMcu3jVTlFN/K1StBnvqXF8yxScLK4Wyn5nExzMJJf8g677eF2pZvPMTQLQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSfjc-0008IS-NQ
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Mar 2022 13:55:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 719DB61E41;
 Fri, 11 Mar 2022 13:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78EAFC340E9;
 Fri, 11 Mar 2022 13:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647006901;
 bh=OBsbrwAjRxifwn84roMcXQuqX/kpZdztcjpFo/JKQko=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=QbFLEHJ9gNUiww7Aa2daPJT8G3gJjnCZZn+DTKJZtqNdpc4ugsphe6nOXX+6UKaRS
 h66FdJ667Cy/wbe5Y2U599bOkoPkgvXruaWbwbzmgfyHn4aIFNojJHEDVXxK6O7XMG
 488ynVbT08O5uuswo2XlyJVKqwRQjb79aN/8r54ax3vYquyh+Wwj9Z6OrnUoSaXfu2
 RIG/PEIuCootjEC/Vop1yPyUUnw6FJnimm2bv16vzWcssG/wmgFknygna88SBp+kB7
 szWj5K3pR9Ah1SBNwxCQjisCD6tJTfIpVZC2Dpx4FeKLJQnfnvSeDQFZttNGkcrDoy
 Uk1sRD7k66Clw==
Message-ID: <1e96f2c36f7c49a7d2d57dc1eb4135bd27a06122.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Fri, 11 Mar 2022 08:54:59 -0500
In-Reply-To: <2533821.1647006574@warthog.procyon.org.uk>
References: <dd054c962818716e718bd9b446ee5322ca097675.camel@redhat.com>
 <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
 <164692907694.2099075.10081819855690054094.stgit@warthog.procyon.org.uk>
 <2533821.1647006574@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2022-03-11 at 13:49 +0000, David Howells wrote: >
 Jeff Layton <jlayton@redhat.com> wrote: > > > > +static int
 ceph_init_request(struct
 netfs_io_request *rreq, struct file *file) > > > +{ > > > [...] 
 Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSfjc-0008IS-NQ
Subject: Re: [V9fs-developer] [PATCH v3 12/20] ceph: Make
 ceph_init_request() check caps on readahead
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
 David Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 2022-03-11 at 13:49 +0000, David Howells wrote:
> Jeff Layton <jlayton@redhat.com> wrote:
> 
> > > +static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
> > > +{
> > > +	struct inode *inode = rreq->inode;
> > > +	int got = 0, want = CEPH_CAP_FILE_CACHE;
> > > +	int ret = 0;
> > > +
> > > +	if (file) {
> > > +		struct ceph_rw_context *rw_ctx;
> > > +		struct ceph_file_info *fi = file->private_data;
> > > +
> > > +		rw_ctx = ceph_find_rw_context(fi);
> > > +		if (rw_ctx)
> > > +			return 0;
> > > +	}
> > > +
> > > +	if (rreq->origin != NETFS_READAHEAD)
> > > +		return 0;
> > > +
> > 
> > ^^^
> > I think you should move this check above the if (file) block above it.
> > We don't need to anything at all if we're not in readahead.
> 
> How about the attached, then?
> 
> David
> ---
> commit 7082946186fc26016b15bc9039bd6d92ae732ef3
> Author: David Howells <dhowells@redhat.com>
> Date:   Wed Mar 9 21:45:22 2022 +0000
> 
>     ceph: Make ceph_init_request() check caps on readahead
>     
>     Move the caps check from ceph_readahead() to ceph_init_request(),
>     conditional on the origin being NETFS_READAHEAD so that in a future patch,
>     ceph can point its ->readahead() vector directly at netfs_readahead().
>     
>     Changes
>     =======
>     ver #4)
>      - Move the check for NETFS_READAHEAD up in ceph_init_request()[2].
>     
>     ver #3)
>      - Split from the patch to add a netfs inode context[1].
>      - Need to store the caps got in rreq->netfs_priv for later freeing.
>     
>     Signed-off-by: David Howells <dhowells@redhat.com>
>     cc: ceph-devel@vger.kernel.org
>     cc: linux-cachefs@redhat.com
>     Link: https://lore.kernel.org/r/8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org/ [1]
>     Link: https://lore.kernel.org/r/dd054c962818716e718bd9b446ee5322ca097675.camel@redhat.com/ [2]
> 
> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
> index 9189257476f8..4aeccafa5dda 100644
> --- a/fs/ceph/addr.c
> +++ b/fs/ceph/addr.c
> @@ -354,6 +354,45 @@ static void ceph_netfs_issue_read(struct netfs_io_subrequest *subreq)
>  	dout("%s: result %d\n", __func__, err);
>  }
>  
> +static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
> +{
> +	struct inode *inode = rreq->inode;
> +	int got = 0, want = CEPH_CAP_FILE_CACHE;
> +	int ret = 0;
> +
> +	if (rreq->origin != NETFS_READAHEAD)
> +		return 0;
> +
> +	if (file) {
> +		struct ceph_rw_context *rw_ctx;
> +		struct ceph_file_info *fi = file->private_data;
> +
> +		rw_ctx = ceph_find_rw_context(fi);
> +		if (rw_ctx)
> +			return 0;
> +	}
> +
> +	/*
> +	 * readahead callers do not necessarily hold Fcb caps
> +	 * (e.g. fadvise, madvise).
> +	 */
> +	ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
> +	if (ret < 0) {
> +		dout("start_read %p, error getting cap\n", inode);
> +		return ret;
> +	}
> +
> +	if (!(got & want)) {
> +		dout("start_read %p, no cache cap\n", inode);
> +		return -EACCES;
> +	}
> +	if (ret == 0)
> +		return -EACCES;
> +
> +	rreq->netfs_priv = (void *)(uintptr_t)got;
> +	return 0;
> +}
> +
>  static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
>  {
>  	struct inode *inode = mapping->host;
> @@ -365,7 +404,7 @@ static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
>  }
>  
>  static const struct netfs_request_ops ceph_netfs_read_ops = {
> -	.is_cache_enabled	= ceph_is_cache_enabled,
> +	.init_request		= ceph_init_request,
>  	.begin_cache_operation	= ceph_begin_cache_operation,
>  	.issue_read		= ceph_netfs_issue_read,
>  	.expand_readahead	= ceph_netfs_expand_readahead,
> @@ -393,33 +432,7 @@ static int ceph_readpage(struct file *file, struct page *subpage)
>  
>  static void ceph_readahead(struct readahead_control *ractl)
>  {
> -	struct inode *inode = file_inode(ractl->file);
> -	struct ceph_file_info *fi = ractl->file->private_data;
> -	struct ceph_rw_context *rw_ctx;
> -	int got = 0;
> -	int ret = 0;
> -
> -	if (ceph_inode(inode)->i_inline_version != CEPH_INLINE_NONE)
> -		return;
> -
> -	rw_ctx = ceph_find_rw_context(fi);
> -	if (!rw_ctx) {
> -		/*
> -		 * readahead callers do not necessarily hold Fcb caps
> -		 * (e.g. fadvise, madvise).
> -		 */
> -		int want = CEPH_CAP_FILE_CACHE;
> -
> -		ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
> -		if (ret < 0)
> -			dout("start_read %p, error getting cap\n", inode);
> -		else if (!(got & want))
> -			dout("start_read %p, no cache cap\n", inode);
> -
> -		if (ret <= 0)
> -			return;
> -	}
> -	netfs_readahead(ractl, &ceph_netfs_read_ops, (void *)(uintptr_t)got);
> +	netfs_readahead(ractl, &ceph_netfs_read_ops, NULL);
>  }
>  
>  #ifdef CONFIG_CEPH_FSCACHE
> 

LGTM,

Reviewed-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
