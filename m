Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EF33042AE
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 16:35:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4QMv-0003N1-OL; Tue, 26 Jan 2021 15:35:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwysocha@redhat.com>) id 1l4QMv-0003Ml-32
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 15:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+sg4yNwZrAUtqGjsjAIZF/lC9W6Hi56SguvTv3qRusA=; b=YEwX+d36c6xHHh2iWwzOfHnYAD
 ag7S9W3lT1MDwiRoyUUy3jnU1cOnHSnWGAzqPD3VUfFK+IAEnYyBjTqNdTjGMWJ1Q32SFDX1LEMJG
 XID4GqfCXNLqNMvtvqPG6xpuCZz1RYdpLvjccOaifZrt02iZnoRmWiAPnmIdn695RXtE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+sg4yNwZrAUtqGjsjAIZF/lC9W6Hi56SguvTv3qRusA=; b=gGDn9wkkks6QgJqHcBmSTHd50L
 eGscXmhkTMxoU2mXFee+EuM3cDPQlHan8WnWb5aRCc/53C//ruK7SvFbX2JPv6M4v7ox4tbwABX3N
 0L1VggceH+E0giarGX6cNq4LZGBrDM1yvbQIpSSVLLbEwlRhNObe3HuBqL0OfdCA9bQc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l4QMg-00AOQg-3J
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 15:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611675280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+sg4yNwZrAUtqGjsjAIZF/lC9W6Hi56SguvTv3qRusA=;
 b=Qi3Vl7a63cGF/fNZkC4FELXdtu81eB8yx0opg2XA3Er2SVlxRUh9gBZbJCYgYIF/c6jWnL
 WEY8Ck5niq/arIFWhYlbh+D7do9NjkbhX5Hkvh0Jpl93LQAPVw4ytjXRqAtnQ04qevsCo3
 Az3VCVGPK1ZHEXjhYRrp0YHEGEuVdHc=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-eRpExjReMaC3vkUTUd71dA-1; Tue, 26 Jan 2021 10:34:36 -0500
X-MC-Unique: eRpExjReMaC3vkUTUd71dA-1
Received: by mail-ed1-f72.google.com with SMTP id j11so8787850edy.20
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 26 Jan 2021 07:34:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+sg4yNwZrAUtqGjsjAIZF/lC9W6Hi56SguvTv3qRusA=;
 b=LZbL2sUSTuxwiP5TdrMfodStl1JqZMU6zmZ4FwiaxJThD0igqLpM0NArDXn/y2/Np5
 6TL0rCaI/Ir1NntjacXUm5jukHXBR2meRrGApjxRIPj7Mukx1eSxfrrn7pAtQmztszbn
 zqm4AebcRh5DgKzJPiSY+1W/Xj95RHBwOtRT1qmGQgKKkUEbsThMRTKxur7znWPhQXqn
 6/2hIPozcgFAc5Zg40/dOHtsket34ORuyUuXaZycPfQ8844RmXUx9i7Uh9+jCfLR4u6l
 8cC5XXlg0tejkQCPrj20ORnN4mx1j351bIKizLyfDjvGVy7VkqkQajk8aDAS7Qd8iEY9
 6J6Q==
X-Gm-Message-State: AOAM530fpx0JEgAmc1ztN5kJU/KR9llEzDHNx2kr6d08FubJXzx+bufx
 5Q7e/2giMTxQX00CoUPaX2QdZC8EvYgMWq707IAC/jvOt8b8vlTcCRnXOtzK51A8qzK+RoGVeDH
 lKnjVbjkiNnw32Xgkr/51wdFOCy3qQzITduWZN2cFYHGM2c0KGgU=
X-Received: by 2002:a17:906:4451:: with SMTP id
 i17mr2289511ejp.436.1611675275261; 
 Tue, 26 Jan 2021 07:34:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzSasZks4PL3NUJQfxg7We8UW4x28G54NbjOgDuCVAFpi7QKXrub9Pz5L3G6Ovg3Un+JLmrv6pQRbddbpD7RMI=
X-Received: by 2002:a17:906:4451:: with SMTP id
 i17mr2289493ejp.436.1611675275099; 
 Tue, 26 Jan 2021 07:34:35 -0800 (PST)
MIME-Version: 1.0
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161054970.2537118.5401048451896267742.stgit@warthog.procyon.org.uk>
 <20210126035928.GJ308988@casper.infradead.org>
In-Reply-To: <20210126035928.GJ308988@casper.infradead.org>
From: David Wysochanski <dwysocha@redhat.com>
Date: Tue, 26 Jan 2021 10:33:59 -0500
Message-ID: <CALF+zOkNMHjtH+cZrGQFqbH5dD5gUpV+y3k-Bt31E35d4kn1oA@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l4QMg-00AOQg-3J
Subject: Re: [V9fs-developer] [PATCH 25/32] NFS: Clean up nfs_readpage() and
 nfs_readpages()
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

On Mon, Jan 25, 2021 at 11:01 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Mon, Jan 25, 2021 at 09:35:49PM +0000, David Howells wrote:
> > -int nfs_readpage(struct file *file, struct page *page)
> > +int nfs_readpage(struct file *filp, struct page *page)
>
> I appreciate we're inconsistent between file and filp, but we're actually
> moving more towards file than filp.
>
Got it, easy enough to change.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
