Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEAD33EEDA
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Mar 2021 11:54:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMToR-0001QT-60; Wed, 17 Mar 2021 10:54:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lMToP-0001Pj-Ja
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 10:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CrP2lfrrdq12nJd/eCkP5MvOV60FCODOOLwLlbcHJdc=; b=XPU51cZarXnXCIYeXhyp3rPnCA
 WPKQYpESkhriSMaDnrNeMSyxUPsjcWLheLgI0vBwDvriXnhfOnomHkwLErgN0apa3q2Weox+RC0Tv
 79CvvbQnR/w3bs8FK0dkLjki03g0MqcBgxIWC8+6Inwf7VxZ7Y5A7fzggqYDIB5OhBro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CrP2lfrrdq12nJd/eCkP5MvOV60FCODOOLwLlbcHJdc=; b=eZLOF+MYjnxuM/vlTAGDIht14w
 MEg4xc/RUWwDXfpD7GDLuOSlfcnl9sgJYrauwHuSXWX8hH/JGSnOhLE10drShJvC83DOmWudHscJ6
 HBmD6MCLdRgOpkj/ATJsTOpkV9+8X+57OI014DSLtKEWoAhKPUMfs1ufyimxlAc95rXo=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lMToK-0007Sn-Sd
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 10:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615978430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CrP2lfrrdq12nJd/eCkP5MvOV60FCODOOLwLlbcHJdc=;
 b=BXgd9mFEKFsNVzraqleu/LAUXDgwd35VgXYK4Qxm1rLofSc1fFY+MZJI5Gh/ev2gh2Nyle
 /o/8ma8oVffjRKKn1ERgWjpjQVp9GECc9g1w40p1woBs+3u8aZavh4D6s+Hgd1o4k+agti
 qaay9OMm2uk6gWgK7WsosFr/gvsjb90=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-YK1MK1d2OtGgyArc0_7DAQ-1; Wed, 17 Mar 2021 06:53:49 -0400
X-MC-Unique: YK1MK1d2OtGgyArc0_7DAQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B60C84BA43;
 Wed, 17 Mar 2021 10:53:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-113-138.rdu2.redhat.com
 [10.10.113.138])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D8CE6C32F;
 Wed, 17 Mar 2021 10:53:42 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <31382.1615971849@warthog.procyon.org.uk>
References: <31382.1615971849@warthog.procyon.org.uk>
 <CAHk-=whWoJhGeMn85LOh9FX-5d2-Upzmv1m2ZmYxvD31TKpUTA@mail.gmail.com>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <20210316190707.GD3420@casper.infradead.org>
 <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
 <887b9eb7-2764-3659-d0bf-6a034a031618@toxicpanda.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <38367.1615978421.1@warthog.procyon.org.uk>
Date: Wed, 17 Mar 2021 10:53:41 +0000
Message-ID: <38368.1615978421@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Headers-End: 1lMToK-0007Sn-Sd
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
Cc: dhowells@redhat.com, Linux-MM <linux-mm@kvack.org>,
 linux-afs@lists.infradead.org, CIFS <linux-cifs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Josef Bacik <josef@toxicpanda.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 ceph-devel@vger.kernel.org, "open list:NFS, 
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, Chris Mason <clm@fb.com>,
 David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

>  (1) For the old fscache code that I'm trying to phase out, it does not take a
>      ref when PG_fscache is taken (probably incorrectly), relying instead on
>      releasepage, etc. getting called to strip the PG_fscache bit.  PG_fscache
>      is held for the lifetime of the page, indicating that fscache knows about
>      it and might access it at any time (to write to the cache in the
>      background for example or to move pages around in the cache).
> 
>      Here PG_fscache should not prevent page eviction or migration and it's
>      analogous to PG_private.
> 
>      That said, the old fscache code keeps its own radix trees of pages that
>      are undergoing write to the cache, so to allow a page to be evicted,
>      releasepage and co. have to consult those
>      (__fscache_maybe_release_page()).

Note that, ideally, we'll be able to remove the old fscache I/O code in the
next merge window or the one after.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
