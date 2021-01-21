Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D592FF56D
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 21:09:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2gGI-0005Fw-F9; Thu, 21 Jan 2021 20:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l2gGG-0005Fb-BT
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 20:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gVx+gkEsYNOgT30sFBYpj+A2NREDHbQJA4mbAzV8q/8=; b=fkISjdE3Hf4gzx2Abm7/JPw1Yg
 y0CFei8XGfer1AWlrbgvvzYG3dWOXTK03uCWii96ft9Wa1xK3hvSTqxekaq9UEEX47ZeVUajetQ/G
 B7tNIzVaqJJv0oa/iBezudHwlB0XQSzQ7KcOMAXfeBbLL5jO6Qxu/7LVaCr0/hXGS9XM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gVx+gkEsYNOgT30sFBYpj+A2NREDHbQJA4mbAzV8q/8=; b=Kfl4bvW4nKUBJ96eEj8nfEMOjA
 YQ9Ev4L0zkbbwzlyTl8x5Qa0tC/8BniwyheNB45fmBVu4llKOP/FILiw5EENnMSNq0LTX8PjRe1CA
 B2jmcAh7/mzpQVNApqUnGUKqf+Y7US/qitunXC5tBSOw+XkMfZMvnV8331QRJ2XaAapE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l2gG4-004Ol5-9u
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 20:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611259718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gVx+gkEsYNOgT30sFBYpj+A2NREDHbQJA4mbAzV8q/8=;
 b=P26DjrFA12ail1kIUQd6yGKXkM42Z0jQ+rPrarD9NBXfWqWLduEUfq1tn0YYmjj0CRgSBF
 sgMlNsBmhtNw553IJC90Z+V0rpLL9NmUC23vl0OqgGQt14crpukSY8vFRCnlwq6/8fHLeP
 z/xsCJr6jPW0lARvczie9Btw4Aoe7jM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-4DhkOkagMbGcw0RHcFnQ4g-1; Thu, 21 Jan 2021 15:08:34 -0500
X-MC-Unique: 4DhkOkagMbGcw0RHcFnQ4g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E3B6180A094;
 Thu, 21 Jan 2021 20:08:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D670150DD2;
 Thu, 21 Jan 2021 20:08:24 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210121190937.GE20964@fieldses.org>
References: <20210121190937.GE20964@fieldses.org>
 <20210121174306.GB20964@fieldses.org> <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <1794286.1611248577@warthog.procyon.org.uk>
 <1851804.1611255313@warthog.procyon.org.uk>
To: "J. Bruce Fields" <bfields@fieldses.org>
MIME-Version: 1.0
Content-ID: <1856290.1611259704.1@warthog.procyon.org.uk>
Date: Thu, 21 Jan 2021 20:08:24 +0000
Message-ID: <1856291.1611259704@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fieldses.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l2gG4-004Ol5-9u
Subject: Re: [V9fs-developer] [RFC][PATCH 00/25] Network fs helper library &
 fscache kiocb API
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

J. Bruce Fields <bfields@fieldses.org> wrote:

> > J. Bruce Fields <bfields@fieldses.org> wrote:
> > 
> > > > Fixing this requires a much bigger overhaul of cachefiles than this patchset
> > > > performs.
> > > 
> > > That sounds like "sometimes you may get file corruption and there's
> > > nothing you can do about it".  But I know people actually use fscache,
> > > so it must be reliable at least for some use cases.
> > 
> > Yes.  That's true for the upstream code because that uses bmap.
> 
> Sorry, when you say "that's true", what part are you referring to?

Sometimes, theoretically, you may get file corruption due to this.

> > I'm switching
> > to use SEEK_HOLE/SEEK_DATA to get rid of the bmap usage, but it doesn't change
> > the issue.
> > 
> > > Is it that those "bridging" blocks only show up in certain corner cases
> > > that users can arrange to avoid?  Or that it's OK as long as you use
> > > certain specific file systems whose behavior goes beyond what's
> > > technically required by the bamp or seek interfaces?
> > 
> > That's a question for the xfs, ext4 and btrfs maintainers, and may vary
> > between kernel versions and fsck or filesystem packing utility versions.
> 
> So, I'm still confused: there must be some case where we know fscache
> actually works reliably and doesn't corrupt your data, right?

Using ext2/3, for example.  I don't know under what circumstances xfs, ext4
and btrfs might insert/remove blocks of zeros, but I'm told it can happen.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
