Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2A13D1505
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 19:20:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6Ftw-00063c-RH; Wed, 21 Jul 2021 17:20:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1m6Ftd-00063C-Ja
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 17:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BIt0Yb9H5DHJEMvOYSUbKkxcwoKM/Ncp4O7tCakc/1Q=; b=lLiTEVLy+tdZ4kkYM/KiEu6zhA
 GvFLnsceHl/ihHCO4cOgO5J8oNCASYmX81zgFNpY0rYn7sJT5VhI6u9zN86kPyi9b5YU1eMIS+tKW
 jSRkagItQb9hKcRNQcuZ+/8cgPK5rB9KTOtRckQUmKhKJuiexCB5cGt4nyPi2amUKDGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BIt0Yb9H5DHJEMvOYSUbKkxcwoKM/Ncp4O7tCakc/1Q=; b=A3DxTva+EdCyk9jhxvIZ3MjZ/R
 dXcgDybpRGsQ6PHoIimOXBoOPI5i/156S8I2rv7yPIy8//ZVutOoxbki3oEP1W/UmceSr53g5PWcZ
 QGQBXQB+lxqaRBiMVMLiX5tw08hllt68m9LtpIXNMZB0GK+b2tdk2JgrQy4bRBEUqT10=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6FtZ-00FvJY-5F
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 17:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626888027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BIt0Yb9H5DHJEMvOYSUbKkxcwoKM/Ncp4O7tCakc/1Q=;
 b=eXyLgZrSPve50INxI3GJEvydet7VfEqLZPm7S1AIsNpq2WLQ7lu0V25UdMMjQTmjNFH0VG
 C/7cxK4HNxa4mM0JIQ326fMU4OPhrh+U/zKFBQ4Xar4i+cvhyS7oFBXbGeXgSkwWFtsiks
 5lWvUmM5YOQ/bkonkZkUbgIYMvqVNPY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-386-GhHEOI8XMz2fV-_JkEc7ng-1; Wed, 21 Jul 2021 13:20:25 -0400
X-MC-Unique: GhHEOI8XMz2fV-_JkEc7ng-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FF0C192CC46;
 Wed, 21 Jul 2021 17:20:23 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-62.rdu2.redhat.com
 [10.10.112.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A7BD35D9DD;
 Wed, 21 Jul 2021 17:20:15 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <0555748529d483fb9b69eceb56bf9ebc1efceaf1.camel@redhat.com>
References: <0555748529d483fb9b69eceb56bf9ebc1efceaf1.camel@redhat.com>
 <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
 <162687509306.276387.7579641363406546284.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <289703.1626888014.1@warthog.procyon.org.uk>
Date: Wed, 21 Jul 2021 18:20:14 +0100
Message-ID: <289704.1626888014@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.5 (-)
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6FtZ-00FvJY-5F
Subject: Re: [V9fs-developer] [RFC PATCH 02/12] netfs: Add an iov_iter to
 the read subreq for the network fs/cache to use
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
 linux-nfs@vger.kernel.org, Miklos Szeredi <miklos@szeredi.hu>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> > -	iov_iter_xarray(&iter, WRITE, &subreq->rreq->mapping->i_pages,
> > +	iov_iter_xarray(&iter, READ, &subreq->rreq->mapping->i_pages,
> 
> What's up with the WRITE -> READ change here? Was that a preexisting
> bug?

Actually, yes - I need to split that out and send it to Linus.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
