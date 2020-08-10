Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD87240ACB
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 17:48:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k5A2Q-0008Kz-L5; Mon, 10 Aug 2020 15:48:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1k5A2P-0008Kk-1z
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 15:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d/FqTzD6Anemh3gFgcLo0ThBd0ys9n4r95cTlaSJ7w8=; b=VZ/iVCEGzgFnDtXI0Lmg2h/UDp
 0GUSJjr7op0gyGowSGItwNp4PueiTsZJfgBl3+w3MbfeB4WLjNtPA0fUVeRY50QnlNQvPH4Hl62bt
 FPV78drGneuuGCWdBgpVXSsaf3ITAD5Y52HSzbxuG33nN8FqWAgQxyvXYUY+sx36nShM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d/FqTzD6Anemh3gFgcLo0ThBd0ys9n4r95cTlaSJ7w8=; b=etJwD74ORjhFpBBPkzc4lliUHp
 lkph1zVXrcj0TJ+op600XkspGF/vCMCxwryI5yVpQPeP+JIG3SGaU1b1QkfKMLMX9lkCVAvy72VXd
 dxGyN5oAzUyD5aPZ7HCAhgVR/ag/OJKDl4U2TVqlz5X+C0EYgU4TEeJh7WWuMBSXnBPE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k5A2N-002wL9-To
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 15:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597074502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=d/FqTzD6Anemh3gFgcLo0ThBd0ys9n4r95cTlaSJ7w8=;
 b=DPcy/uDMtDOG+aMLbEjTYPrsr4PbglllxJa1LlWXyIFcCNbmd6OxUIAq4pWyKuwQ7/rnz9
 QYYoiJrarF6myjlnPZvalxIDN7kQME3X1e9D9CEed/w43mllAuacv7Kp2uEbw9Q/3cqYtU
 VzX0zHTNOcLbWwKXkImcf6PucdE3voc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-BblU8oHRP1W5aFMWkcTb1w-1; Mon, 10 Aug 2020 11:48:19 -0400
X-MC-Unique: BblU8oHRP1W5aFMWkcTb1w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A55980046C;
 Mon, 10 Aug 2020 15:48:16 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-113-69.rdu2.redhat.com
 [10.10.113.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BCC8C7B92F;
 Mon, 10 Aug 2020 15:48:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
References: <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
 <447452.1596109876@warthog.procyon.org.uk>
 <1851200.1596472222@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
To: Steve French <smfrench@gmail.com>
MIME-Version: 1.0
Content-ID: <672168.1597074488.1@warthog.procyon.org.uk>
Date: Mon, 10 Aug 2020 16:48:08 +0100
Message-ID: <672169.1597074488@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k5A2N-002wL9-To
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 Dave Wysochanski <dwysocha@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Steve French <smfrench@gmail.com> wrote:

> cifs.ko also can set rsize quite small (even 1K for example, although
> that will be more than 10x slower than the default 4MB so hopefully no
> one is crazy enough to do that).

You can set rsize < PAGE_SIZE?

> I can't imagine an SMB3 server negotiating an rsize or wsize smaller than
> 64K in today's world (and typical is 1MB to 8MB) but the user can specify a
> much smaller rsize on mount.  If 64K is an adequate minimum, we could change
> the cifs mount option parsing to require a certain minimum rsize if fscache
> is selected.

I've borrowed the 256K granule size used by various AFS implementations for
the moment.  A 512-byte xattr can thus hold a bitmap covering 1G of file
space.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
