Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 326A14402A7
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Oct 2021 21:00:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mgX73-0005Ot-9x; Fri, 29 Oct 2021 19:00:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mgX6x-0005Oi-BS
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 19:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/vX1aXmgWDOmHXytC/xtmTFfVJMO+hskcobUwtJeMmI=; b=cETSR93UvasF7JUIYliTr8a8v9
 n34+HT2/Cu3Z5Pe6Xn8aujPP0mcs0yWwS6MqHDG5yC3dHtXuptAIi396484GS8GyiqA7m/IN7CvSB
 8ibU83t1IFi0TsyB+uzzm+qHVh5A0wJgCIMzJ8Vtba/nWH7uLM6ujviLbG6fUfPJg/No=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/vX1aXmgWDOmHXytC/xtmTFfVJMO+hskcobUwtJeMmI=; b=SlfWUl5ROKam0OwPk2h1oL87MI
 NLak7AZVWbCXZ6Qx34FXmR9+LcrBts6IK8C3+90IMqenrkGk1oKcVprTkvybSG+Ptm8MajolY4u4I
 bFqqiyHvAfpEiR1bKrhDCrd61byU60N9k3uLPkAuF01ds7B3pEoQ868GnB6BWLo+BQnQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mgX6n-0069Zb-43
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 19:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635534002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/vX1aXmgWDOmHXytC/xtmTFfVJMO+hskcobUwtJeMmI=;
 b=geNFri02RuDIjrUfWeMAWVFCnjLVfQbDP7UkFCNyBRdi3DZBOEBrIeWV0pnnQ/IN14bjXi
 RSf2RTlP1zMj7aszRAtKr6R3DFNhwnA8UD5ivr1z7gYBBV6tubLY/nGhaYZYr8ABC31SD3
 FFn+U6noBgR4qYfWpbWYCUyqILW+rwU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-p1zGB8TrMduU9GKrjace1w-1; Fri, 29 Oct 2021 14:51:55 -0400
X-MC-Unique: p1zGB8TrMduU9GKrjace1w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 008188F515;
 Fri, 29 Oct 2021 18:51:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E18845D6CF;
 Fri, 29 Oct 2021 18:51:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wg_C6V_S+Aox5Fn7MuFe13ADiRVnh6UcvY4WX9JjXn3dg@mail.gmail.com>
References: <CAHk-=wg_C6V_S+Aox5Fn7MuFe13ADiRVnh6UcvY4WX9JjXn3dg@mail.gmail.com>
 <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
 <CAHk-=wiy4KNREEqvd10Ku8VVSY1Lb=fxTA1TzGmqnLaHM3gdTg@mail.gmail.com>
 <1889041.1635530124@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <1891410.1635533494.1@warthog.procyon.org.uk>
Date: Fri, 29 Oct 2021 19:51:34 +0100
Message-ID: <1891411.1635533494@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Linus Torvalds <torvalds@linux-foundation.org> wrote: > But:
 > > > However, if you would rather I just removed all of fscache and (most
 of[*]) > > cachefiles, that I can do. > > I assume and think that if you
 just do that part first, then the > "convert [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mgX6n-0069Zb-43
Subject: Re: [V9fs-developer] [PATCH v4 00/10] fscache: Replace and remove
 old I/O API
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
Cc: Dave Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 "open list:NFS, SUNRPC, 
 AND..." <linux-nfs@vger.kernel.org>, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shyam Prasad N <nspmangalore@gmail.com>, Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> But:
> 
> > However, if you would rather I just removed all of fscache and (most of[*])
> > cachefiles, that I can do.
> 
> I assume and think that if you just do that part first, then the
> "convert to netfslib" of afs and ceph at that later stage will mean
> that the fallback code will never be needed?

The netfslib coversions for afs and ceph are already in your tree and I have a
patch here to do that for 9p (if you're willing to take that in the upcoming
merge window?).

The issue is cifs[*] and nfs.  I could leave caching in those disabled,
pending approved patches for those filesystems.  This would mean that I
wouldn't need the fallback code.

An alternative is that I could move the "fallback" code into fs/nfs/fscache.c
and fs/cifs/fscache.c if that would be easier and merge it into the functions
there.  The problem will come when the cache wants to do I/O in larger units
than page size to suit its own block size[**].

David

[*] As it happens, it turns out that cifs seems to have a bug in it that
causes the entire cache for a superblock to be discarded each time that
superblock is mounted.

[**] At some point the cache *has* to start keeping track of what data it is
holding rather than relying on bmap/SEEK_DATA/SEEK_HOLE to get round the
extent-bridging problem.  I'm trying to take a leaf out of the book of other
caching filesystems and use larger block sizes (e.g. 256K) to reduce the
overhead of cache metadata.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
