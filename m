Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0B23032B0
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 05:06:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4Fcz-00087C-Kb; Tue, 26 Jan 2021 04:06:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l4Fcx-00086u-Mz
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 04:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jq3N/pNATTXIAMrmJ6obiwvtVc5gjKpBnS3S5QeZ+pY=; b=BaXX2Gn6npuBn25fEd5w/BpXXM
 zXP1S+8fhpXfm45J3dsiLrVjCQmucQ34RA3SRUW5dV2+nQLmEGVayles9ogDaPO07F/zUgIgk9Yu6
 lCnFpMqrvVLGspzR10VA+o0uP1E7JnN6lv1BNbdpn/a1rVV5dFkbDYlA9Pd2iKR9IBCY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jq3N/pNATTXIAMrmJ6obiwvtVc5gjKpBnS3S5QeZ+pY=; b=IWJVQLBakvUSuvsEKq+jKwTOcz
 19JH5FrzQhhwPTPmfRS/27AI+rvSQLWMfIg6x6fa9wfMBcX1xZeM24leUE8UHS057UvE/LeCzOHWE
 bh31oWfLwFGdmlsdrL+aZin7Q9DUHtGoQ57y7taIZaKEHipIOrlzj8kP7j2fZXjaqLSA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4Fci-005JRf-Ta
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 04:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jq3N/pNATTXIAMrmJ6obiwvtVc5gjKpBnS3S5QeZ+pY=; b=k5jINKlmfQbKVkIc/QXlhf3x+a
 KKgGtH3mPaUaM/OfdSzQ+q/lrTQwHicbG/JKAJXzk0VSiUhlqqPvKPVFRLaBTrRuO1/yfo8oXx4H7
 l5bG5GO4+RnFNJfsM67J/D3YIEbQJo/k3q5HfWbJUgK5sd+tFUMejnRDHyDxk4LZuWyvCQDnB+gjq
 zOKsiZ2Lv5B5lLMYuuMKn/gA2xwSBl2THbsXjL87EiEHQ8EhQ2ImbIqpEatXX2aFYhUkw9YYNfLrv
 aarEqm3k+Xt/QvaRlG8bjW49UmSAtOfxlmHpnv165FYQ6iMzlCp2siLkBG/QSBVFjVvAWTbVZmcGv
 JFMI27LA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l4Fbo-0053Bl-Gu; Tue, 26 Jan 2021 04:05:43 +0000
Date: Tue, 26 Jan 2021 04:05:40 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210126040540.GK308988@casper.infradead.org>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161057357.2537118.6542184374596533032.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161161057357.2537118.6542184374596533032.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l4Fci-005JRf-Ta
Subject: Re: [V9fs-developer] [PATCH 27/32] NFS: Refactor nfs_readpage() and
 nfs_readpage_async() to use nfs_readdesc
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 25, 2021 at 09:36:13PM +0000, David Howells wrote:
> +int nfs_readpage_async(void *data, struct inode *inode,
>  		       struct page *page)
>  {
> +	struct nfs_readdesc *desc = (struct nfs_readdesc *)data;

You don't need a cast to cast from void.

> @@ -440,17 +439,16 @@ int nfs_readpages(struct file *filp, struct address_space *mapping,
>  	if (ret == 0)
>  		goto read_complete; /* all pages were read */
>  
> -	desc.pgio = &pgio;
> -	nfs_pageio_init_read(&pgio, inode, false,
> +	nfs_pageio_init_read(&desc.pgio, inode, false,

I like what you've done here, embedding the pgio in the desc.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
