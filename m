Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0493D13F9
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 18:21:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6Ey4-00007P-Et; Wed, 21 Jul 2021 16:21:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1m6Ey2-000070-LD
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 16:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YkZTscC6KpmV7ZPZQ/arpngaCqGBZg3nbQ0knfcsigA=; b=Euggd0pZCtkabtsiLduJ3oAdu5
 683CAjOkrUxqG5rMg9yNvC1gUCExdaC0bFsvIqkqe2SbPNzQpmyXz9ktkdvzOZA5z5UNrMhLzrUpR
 iMESwJupSxLEyyy2TsZmYnh+javGwcATa+7VpU9R8gv6/WzemRJz6R5vGTaoB8WAkpmY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YkZTscC6KpmV7ZPZQ/arpngaCqGBZg3nbQ0knfcsigA=; b=PqlGtsa/2/p3hZE/FJDpj3oUpY
 Alv9VUX37BQ6dvhMcs8WvGXYvaqIxyptsAqQ4IBWmhr9C5aHkTL4ndpWKY5oudcGLuC8h5+OS6CSU
 TXn9j58uXTLxvUAZUOoerK89ZIiRJHCV29ISfb0mN0u5D7OhTeU1SaO7hcrrjd/sICws=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6Exq-00Fs72-6E
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 16:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626884448;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YkZTscC6KpmV7ZPZQ/arpngaCqGBZg3nbQ0knfcsigA=;
 b=KWps6HrJNzrkysPxFR/z8bYy5PTVJj1KD6IwZztcWgFsxK9Ic8XllbTLKIXcrnsyNf82cK
 VrdQE/HHKDRkbSMPSjNwAwDqdeHQ7i/tjCCpNtxm3+wW7DXk/q9g9io3ZpgjHvmP0wcKVz
 gmWWyWuU6MWuv+AxPkAQ603QlgYVeGU=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-Q7K-Y7YwOQS6Z06r_zEEww-1; Wed, 21 Jul 2021 12:20:44 -0400
X-MC-Unique: Q7K-Y7YwOQS6Z06r_zEEww-1
Received: by mail-qv1-f69.google.com with SMTP id
 q11-20020ad4434b0000b029030449450d37so1870860qvs.14
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Jul 2021 09:20:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=YkZTscC6KpmV7ZPZQ/arpngaCqGBZg3nbQ0knfcsigA=;
 b=fVpvBLFPMsV5298CaQkqBSdZB19HiyxOoRmYKC6nCPvTt1E+e78tnmW3YfJV1IMK4c
 4qnjkB9r4a5qHSeAcxy5jKjzr0ariH3uvKe+DtE4rp0QT96MNdpdT/91rnUApoMY4YO4
 8LMgIz6TftNtQgzSjjq3ulsSqnorflkHvTwdJyt2jyQ0Hc9beJVE0Hx9rVCLWzz6BIc4
 oq0Vd6VSvhoDrs0VeapdsgrCSHkdRaBU4JahzF7zTlAUD2qANkjWAIlvyAK22hL5pzPf
 9PLi+k30Vp7WrwFSntEPxLGn6ngN7fdJ4F1Kstei9g7+8/C2n3H0nvp2rrhN3PIxsKqO
 skjw==
X-Gm-Message-State: AOAM532wX244wUMoI74m2hrMoJ+eEtS8Ce7Iqq68+Q1RSUY015Gdtp1+
 Zuet8Dtzako/zPHG+vVwYA88vRn0lcfU1yeO4KnJlNjq8HLrvNfLpvy5Iem09dBiEbt2bHOUe/T
 jAV68YYe1IcCmlAI1ltu4V1HN8fvDUDLF298=
X-Received: by 2002:a0c:a223:: with SMTP id f32mr37104025qva.8.1626884444603; 
 Wed, 21 Jul 2021 09:20:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+t6fxG/ixd7o7dlSLuaUhbdIrVbCJpvX027HWNZq9vT5wDnkVq2oxjwvDHG0JV/G1ddMkig==
X-Received: by 2002:a0c:a223:: with SMTP id f32mr37103999qva.8.1626884444411; 
 Wed, 21 Jul 2021 09:20:44 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id i4sm9475118qka.130.2021.07.21.09.20.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 09:20:43 -0700 (PDT)
Message-ID: <35ecb577315f486f1636b2316c2051ad004f6f7b.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org
Date: Wed, 21 Jul 2021 12:20:42 -0400
In-Reply-To: <162687508008.276387.6418924257569297305.stgit@warthog.procyon.org.uk>
References: <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
 <162687508008.276387.6418924257569297305.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m6Exq-00Fs72-6E
Subject: Re: [V9fs-developer] [RFC PATCH 01/12] afs: Sort out symlink reading
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2021-07-21 at 14:44 +0100, David Howells wrote:
> afs_readpage() doesn't get a file pointer when called for a symlink, so
> separate it from regular file pointer handling.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
> 
>  fs/afs/file.c     |   14 +++++++++-----
>  fs/afs/inode.c    |    6 +++---
>  fs/afs/internal.h |    3 ++-
>  3 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/fs/afs/file.c b/fs/afs/file.c
> index ca0d993add65..c9c21ad0e7c9 100644
> --- a/fs/afs/file.c
> +++ b/fs/afs/file.c
> @@ -19,6 +19,7 @@
>  
>  static int afs_file_mmap(struct file *file, struct vm_area_struct *vma);
>  static int afs_readpage(struct file *file, struct page *page);
> +static int afs_symlink_readpage(struct file *file, struct page *page);
>  static void afs_invalidatepage(struct page *page, unsigned int offset,
>  			       unsigned int length);
>  static int afs_releasepage(struct page *page, gfp_t gfp_flags);
> @@ -46,7 +47,7 @@ const struct inode_operations afs_file_inode_operations = {
>  	.permission	= afs_permission,
>  };
>  
> -const struct address_space_operations afs_fs_aops = {
> +const struct address_space_operations afs_file_aops = {
>  	.readpage	= afs_readpage,
>  	.readahead	= afs_readahead,
>  	.set_page_dirty	= afs_set_page_dirty,
> @@ -60,6 +61,12 @@ const struct address_space_operations afs_fs_aops = {
>  	.writepages	= afs_writepages,
>  };
>  
> +const struct address_space_operations afs_symlink_aops = {
> +	.readpage	= afs_symlink_readpage,
> +	.releasepage	= afs_releasepage,
> +	.invalidatepage	= afs_invalidatepage,
> +};
> +
>  static const struct vm_operations_struct afs_vm_ops = {
>  	.fault		= filemap_fault,
>  	.map_pages	= filemap_map_pages,
> @@ -321,7 +328,7 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
>  	afs_fetch_data(fsreq->vnode, fsreq);
>  }
>  
> -static int afs_symlink_readpage(struct page *page)
> +static int afs_symlink_readpage(struct file *file, struct page *page)
>  {
>  	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
>  	struct afs_read *fsreq;


I wonder...would you be better served here by not using page_readlink
for symlinks and instead use simple_get_link and roll your own readlink
operation. It seems a bit more direct, and AFS seems to be the only
caller of page_readlink.

> @@ -386,9 +393,6 @@ const struct netfs_read_request_ops afs_req_ops = {
>  
>  static int afs_readpage(struct file *file, struct page *page)
>  {
> -	if (!file)
> -		return afs_symlink_readpage(page);
> -
>  	return netfs_readpage(file, page, &afs_req_ops, NULL);
>  }
>  
> diff --git a/fs/afs/inode.c b/fs/afs/inode.c
> index bef6f5ccfb09..cf7b66957c6f 100644
> --- a/fs/afs/inode.c
> +++ b/fs/afs/inode.c
> @@ -105,7 +105,7 @@ static int afs_inode_init_from_status(struct afs_operation *op,
>  		inode->i_mode	= S_IFREG | (status->mode & S_IALLUGO);
>  		inode->i_op	= &afs_file_inode_operations;
>  		inode->i_fop	= &afs_file_operations;
> -		inode->i_mapping->a_ops	= &afs_fs_aops;
> +		inode->i_mapping->a_ops	= &afs_file_aops;
>  		break;
>  	case AFS_FTYPE_DIR:
>  		inode->i_mode	= S_IFDIR |  (status->mode & S_IALLUGO);
> @@ -123,11 +123,11 @@ static int afs_inode_init_from_status(struct afs_operation *op,
>  			inode->i_mode	= S_IFDIR | 0555;
>  			inode->i_op	= &afs_mntpt_inode_operations;
>  			inode->i_fop	= &afs_mntpt_file_operations;
> -			inode->i_mapping->a_ops	= &afs_fs_aops;
> +			inode->i_mapping->a_ops	= &afs_symlink_aops;
>  		} else {
>  			inode->i_mode	= S_IFLNK | status->mode;
>  			inode->i_op	= &afs_symlink_inode_operations;
> -			inode->i_mapping->a_ops	= &afs_fs_aops;
> +			inode->i_mapping->a_ops	= &afs_symlink_aops;
>  		}
>  		inode_nohighmem(inode);
>  		break;
> diff --git a/fs/afs/internal.h b/fs/afs/internal.h
> index 791cf02e5696..ccdde00ada8a 100644
> --- a/fs/afs/internal.h
> +++ b/fs/afs/internal.h
> @@ -1050,7 +1050,8 @@ extern void afs_dynroot_depopulate(struct super_block *);
>  /*
>   * file.c
>   */
> -extern const struct address_space_operations afs_fs_aops;
> +extern const struct address_space_operations afs_file_aops;
> +extern const struct address_space_operations afs_symlink_aops;
>  extern const struct inode_operations afs_file_inode_operations;
>  extern const struct file_operations afs_file_operations;
>  extern const struct netfs_read_request_ops afs_req_ops;
> 
> 

Regardless, this is more reasonable than what's there now.

Reviewed-by: Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
