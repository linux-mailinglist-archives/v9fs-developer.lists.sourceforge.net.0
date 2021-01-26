Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 888B2304262
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 16:25:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4QE6-00081k-Az; Tue, 26 Jan 2021 15:25:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1l4QE4-00081c-CY
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 15:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VJe0QMue+MrGLDqG9YMY3B8wc1OhQAcndv4QLZtzS5Q=; b=e99IE16JKOfL/aMrTaLby87d8y
 dkz2Son1qV+r5eZPZNuSHoyGOfTek+oMsR4+FmI7djluuXnyCTTtr78cUOZo7x311fYid/ytYwVTU
 XGn9aBGBEEiqHCQrYtluROwwUBG8L40hZ0QQPOdrFfF2pM+R6aipFyuUlpMnNstOARrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VJe0QMue+MrGLDqG9YMY3B8wc1OhQAcndv4QLZtzS5Q=; b=C4hNnjG80PIZGXtyrPH2O6VXbF
 7AP815uY3CPDd51xUAyPLrziEsnpr+IGNZeKXTsjf1tw7+IfddtJzJa92C8FU/sZBnpHwTUXAM/xB
 LJTAhjcCtJqYTgda0Te9k6VpDDmBH+IyGwgWolHtgboUotTIYEkR1mKWkZixmIg4IIOc=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l4QDs-006ml3-Jv
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 15:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611674734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VJe0QMue+MrGLDqG9YMY3B8wc1OhQAcndv4QLZtzS5Q=;
 b=SApIXfmiJfp16WI90qCKdUL8JW4ZnRzX8TFbUl4UWucYz4yhAs4HVN7gFGXCWe7Dnd95n2
 0eIhGlqMbQChW/qVsDy03wjMd7Z7gdKlxX+BD7VCHR6kaD/nJuPRzv4wferfI95TKTwQgh
 prp/v9Aw1Zks8+vDPlw2TTD7Q0K8fwg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-jMygQGaSPrCVnRhrhqPmkw-1; Tue, 26 Jan 2021 10:25:33 -0500
X-MC-Unique: jMygQGaSPrCVnRhrhqPmkw-1
Received: by mail-ed1-f72.google.com with SMTP id f21so9582653edx.23
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 26 Jan 2021 07:25:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VJe0QMue+MrGLDqG9YMY3B8wc1OhQAcndv4QLZtzS5Q=;
 b=bA8RvU4iCMDViKWhXM9IIlO1KzxwwCmljaA3ob4TjlQ2ePyCLewN2KPXbShG28jB4S
 sQIPgo38jVkirUG/HE59fHCcVovNOXA/LGtvuMmeJp/lt4w9Enr9+f0TBbFACnGEM0xw
 uMZ6/qb3RT4TeyPVQs6DE+xVgHmrPZNV4O5ZBlVqEPtyA86rCmeXqOSq75LklsQguU3V
 Ms/jhiSTF7RHI0rYQERjv5lBeGBwPLZjww6WSFV5+dKp1WYsCDpr9RMA4StEApogrbW8
 WQrrnRPhJBP/YX1CTqhmbCAJ6revCk4YB1T92hnIvCpBNpVOlJFL5INUDhbHdKDP0Ce5
 bZiQ==
X-Gm-Message-State: AOAM53158GkpcuKNoTHsNprt14gclNgKGy0fxyNWULlFIiHnGEBG6/0r
 rTEbakfJxhA0nUsCXx3DxPJVRHp45ZNnGROiA9Y+zJRhnu84iDGv4tVvWyvuCeJmZOOAhx0lByc
 LYOgMZ6nMmt26gMKJVpoaJSgOcj7TWN4FOP+wfpwwvjZKnSe9rRU=
X-Received: by 2002:a05:6402:3589:: with SMTP id
 y9mr5114903edc.344.1611674731921; 
 Tue, 26 Jan 2021 07:25:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzlAcqaq8CqekYAOTl5XTKJw4byUxjRunvP1wQKBAqraCVAKiDEx3Vt3nz1iiXtLgQBV8BZqw1Aaq6eAK2Q72M=
X-Received: by 2002:a05:6402:3589:: with SMTP id
 y9mr5114888edc.344.1611674731765; 
 Tue, 26 Jan 2021 07:25:31 -0800 (PST)
MIME-Version: 1.0
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161057357.2537118.6542184374596533032.stgit@warthog.procyon.org.uk>
 <20210126040540.GK308988@casper.infradead.org>
In-Reply-To: <20210126040540.GK308988@casper.infradead.org>
From: David Wysochanski <dwysocha@redhat.com>
Date: Tue, 26 Jan 2021 10:24:55 -0500
Message-ID: <CALF+zOn80NoeaBW8i9djC8qBCEng7riaHgz77uhxipaZ+RJ5ew@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l4QDs-006ml3-Jv
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
Cc: Steve French <sfrench@samba.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, linux-cifs <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 25, 2021 at 11:06 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Mon, Jan 25, 2021 at 09:36:13PM +0000, David Howells wrote:
> > +int nfs_readpage_async(void *data, struct inode *inode,
> >                      struct page *page)
> >  {
> > +     struct nfs_readdesc *desc = (struct nfs_readdesc *)data;
>
> You don't need a cast to cast from void.
>
Right, fixing.

> > @@ -440,17 +439,16 @@ int nfs_readpages(struct file *filp, struct address_space *mapping,
> >       if (ret == 0)
> >               goto read_complete; /* all pages were read */
> >
> > -     desc.pgio = &pgio;
> > -     nfs_pageio_init_read(&pgio, inode, false,
> > +     nfs_pageio_init_read(&desc.pgio, inode, false,
>
> I like what you've done here, embedding the pgio in the desc.
>
Thanks for the review!



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
