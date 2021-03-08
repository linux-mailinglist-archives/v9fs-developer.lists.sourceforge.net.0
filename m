Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 111713316F7
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Mar 2021 20:09:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJLFw-0000sM-Sb; Mon, 08 Mar 2021 19:09:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lJLFv-0000s9-L1
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 19:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBhajOJHrx3P1bFfpTnaW+JD8S792IZZwlNpIQC5Q0g=; b=SdHnX4jpM/lf4w1ZtxLL6cCXg1
 cRVPRLw4PchtZw7SeFCi6QbRJKebF0VpaGuS2gnnlomMS0xhCCJef9DkFPbFhqRRnnqfmjxCJotC2
 4p8SUE+ZNmUPDA5xwTjkeaQqRwgGxeTtTrz1SJJ+SCG7Z1oHPpjQaIQ2ylTg7ny0BNc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pBhajOJHrx3P1bFfpTnaW+JD8S792IZZwlNpIQC5Q0g=; b=BpqVi/kmOfIuo+TZi2yayNiU/3
 zf0yjE7MVc4cIsCp2m48FNuusa3s7BMILZJ9qrnWN97EQ1vt5XnFi7lvpNJoVXAkRusIbD973KVsF
 b33wsvL8vovsZBgZ2QfqV317QnXDJbd/OE8mm1UPANdTof2jR1zLpkwRxTtwcYuzw8c8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lJLFe-001g4y-1x
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 19:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615230543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pBhajOJHrx3P1bFfpTnaW+JD8S792IZZwlNpIQC5Q0g=;
 b=Wa4JJmEsSW657KZboi0NuNYCQXrcQKQCtgdmsY34DNdoKDodEQNsFhO+K82qcz6gnXw3Am
 bYFm5nlw2LlXa7zv3+yRNJKop2+0AW3SkmncBdXUTIvmnY6QEqvJD0OH5QYAXX3wWi5faE
 px3MGm5oi5ZdKAjrcO5E9eXxvseaqnQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-mfpi1OsCPjKSNXMW3mY4Qw-1; Mon, 08 Mar 2021 14:09:02 -0500
X-MC-Unique: mfpi1OsCPjKSNXMW3mY4Qw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8114801814;
 Mon,  8 Mar 2021 19:08:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B45F19C79;
 Mon,  8 Mar 2021 19:08:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210308185410.GE7284@fieldses.org>
References: <20210308185410.GE7284@fieldses.org>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <517184.1615194835@warthog.procyon.org.uk>
To: "J. Bruce Fields" <bfields@fieldses.org>
MIME-Version: 1.0
Content-ID: <19638.1615230532.1@warthog.procyon.org.uk>
Date: Mon, 08 Mar 2021 19:08:52 +0000
Message-ID: <19639.1615230532@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lJLFe-001g4y-1x
Subject: Re: [V9fs-developer] fscache: Redesigning the on-disk cache
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
Cc: Christoph Hellwig <hch@infradead.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 David Wysochanski <dwysocha@redhat.com>, Amir Goldstein <amir73il@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 Miklos Szeredi <miklos@szeredi.hu>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

J. Bruce Fields <bfields@fieldses.org> wrote:

> On Mon, Mar 08, 2021 at 09:13:55AM +0000, David Howells wrote:
> > Amir Goldstein <amir73il@gmail.com> wrote:
> > > With ->fiemap() you can at least make the distinction between a non existing
> > > and an UNWRITTEN extent.
> > 
> > I can't use that for XFS, Ext4 or btrfs, I suspect.  Christoph and Dave's
> > assertion is that the cache can't rely on the backing filesystem's metadata
> > because these can arbitrarily insert or remove blocks of zeros to bridge or
> > split extents.
> 
> Could you instead make some sort of explicit contract with the
> filesystem?  Maybe you'd flag it at mkfs time and query for it before
> allowing a filesystem to be used for fscache.  You don't need every
> filesystem to support fscache, right, just one acceptable one?

I've asked about that, but the filesystem maintainers are reluctant to do
that.

Something might be possible in ext4 using direct access to jbd2, though I
don't know exactly what facilities that offers.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
