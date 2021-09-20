Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 908304114B2
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 14:40:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSIbR-0004kM-0r; Mon, 20 Sep 2021 12:40:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <willy@infradead.org>) id 1mSIbP-0004kD-3P
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 12:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wo+vAVxsvvL69J6kBhb2k3hYCVmdEGu6z6CieNSf45o=; b=HIR0JHh8jI6PXVwg6FGdu2FrHl
 MqS0QSlPSLW+I3csT6fOAFBn1mt2IfCVXvuBwdKEyuNAJxUxn0WO/7rGPVYHtVdZmVFpZmhci8Ctk
 iFEZlSn8AsTsRnh8fRFXfb0FjBzg6+Y7w6iCLF3C6z1vJTzz9PWXhVdLgihy2duVXF8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wo+vAVxsvvL69J6kBhb2k3hYCVmdEGu6z6CieNSf45o=; b=By7KNQYvQEPJ+iR0p0B4wHe+Ad
 W2HbzyWDv71tknjijaFY9NpwaoFvCwZSq35cHgNTIKyH7TerfBTshoDg7GfvslV2/2qCSJHWZDKV4
 mRVxCyK/H5FK0bjEY+o+1ozyVWivN1ZqkyPaNkx1NvMY6acWnMde4Zs4ZUsnm1bp9nOE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSIbN-0007Gn-00
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 12:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Wo+vAVxsvvL69J6kBhb2k3hYCVmdEGu6z6CieNSf45o=; b=Atewm4NOs4/l+DuGNUyY53AjHy
 70TO3+51yjvHj0182A4vAxE9+LFDnm5Vw/mGE4zoxkJ6WR0ig7YE9ZURNu8uOV0+zY2joRoYXQm1D
 7NyF5YMWFBsKUEMXHFTq2VB26z+A0I5DskYpuK/zRRJB+vnqEPUF0S9VtIITY8kLFVjkimCmHVcfL
 tSb6zp1KE8n9or8xF+4hAI+G0PcKd8oRuw4JYZ05cXelw/f3YEWC2+JszJohc/QHcLCYrY2i1BZC6
 tEdobQre2gxMelJ4E/azkUcwwoHAgk9JVNCXKkmQ2ZmKs4Lmlp9/OBGYDsYJ15Co7FV3eIcLC+Vrs
 tksAiKmA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mSIYM-002f95-A3; Mon, 20 Sep 2021 12:37:50 +0000
Date: Mon, 20 Sep 2021 13:37:46 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YUiAmnMV7+fprNC1@casper.infradead.org>
References: <163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 20, 2021 at 01:14:15PM +0100,
 David Howells wrote: > +++ b/fs/9p/vfs_addr.c > @@ -88, 7 +88,
 7 @@ static const struct netfs_read_request_ops
 v9fs_req_ops = { > > /** > * v9fs_vfs_readpage - [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSIbN-0007Gn-00
Subject: Re: [V9fs-developer] [RFC PATCH] fscache, 9p, afs, cifs,
 nfs: Deal with some warnings from W=1
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
 linux-afs@lists.infradead.org, linux-doc@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Sep 20, 2021 at 01:14:15PM +0100, David Howells wrote:
> +++ b/fs/9p/vfs_addr.c
> @@ -88,7 +88,7 @@ static const struct netfs_read_request_ops v9fs_req_ops = {
>  
>  /**
>   * v9fs_vfs_readpage - read an entire page in from 9P
> - * @filp: file being read
> + * @file: file being read
>   * @page: structure to page
>   *
>   */

This is an example of a weird pattern in filesystems.  Several of
them have kernel-doc for the implementation of various ->ops methods.
I don't necessarily believe we should delete the comments (although is
there any useful information in the above?), but I don't see the point
in the comment being kernel-doc.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
