Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF4F37BD82
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 14:57:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgoQe-0000sF-R6; Wed, 12 May 2021 12:57:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lgoQc-0000s5-3q
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 12:57:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ki09mF0tspJ6KFUpaOlyOAnAB4n3svOnlL/ruLe8uGQ=; b=kpqURFjwtrRkh1Hv71kwk/LtCT
 kFwl/OmQxj/cDxEIPrTgtD9Zgu2BIWz/gU4vKoTo5e29dkiVN5mk2nPbHBUXddjgFuWgklD9fezGr
 T++QysG4ZuTplYIKpYt46BbcXbo5CgIapVTpC5X10Dh9o56WsdXU/6aCR5Yj+xNJb+tY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ki09mF0tspJ6KFUpaOlyOAnAB4n3svOnlL/ruLe8uGQ=; b=k1bNFwA984FGUN28xytyhznxUy
 m9W3J2OH1SBc2PXOUCA2muze0HwfD/M9qugIzHZw0EAIOC9O9g+uVsHANf6kt+0y8TXc6i7MnPY4v
 oFkP/iQMwEqOkzCADFod5Jj8nJzk3nT5nsS7ST3lgvPQkNR4uUeJuofIWpWkbR5yWpo4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgoQW-00073R-R5
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 12:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620824239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ki09mF0tspJ6KFUpaOlyOAnAB4n3svOnlL/ruLe8uGQ=;
 b=cC8kmO8gHaN7jD+PgV9qnHVSWOPH8SxZkMv4SdY0lqNNy49EcR3j9affoIdBhy2ELDpbhL
 tS+q7TsQPC+tQeMp2/Q+XK5wK4RmhouMtzfd5uPrccEcsiNmpdpQXHhH+vT+dluqfwtM2j
 uHIq5XIaVSBhlFrrN33+Pd9xg+0C8KA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-mK13o95yOqqRB0Pm0D2nuA-1; Wed, 12 May 2021 08:57:15 -0400
X-MC-Unique: mK13o95yOqqRB0Pm0D2nuA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3863100945F;
 Wed, 12 May 2021 12:57:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 499605D6A8;
 Wed, 12 May 2021 12:57:12 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YJvJWj/CEyEUWeIu@codewreck.org>
References: <YJvJWj/CEyEUWeIu@codewreck.org> <87tun8z2nd.fsf@suse.de>
 <87czu45gcs.fsf@suse.de> <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk> <87fsysyxh9.fsf@suse.de>
To: Alexander Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <2891611.1620824231.1@warthog.procyon.org.uk>
Date: Wed, 12 May 2021 13:57:11 +0100
Message-ID: <2891612.1620824231@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgoQW-00073R-R5
Subject: [V9fs-developer] What sort of inode state does ->evict_inode()
 expect to see? [was Re: 9p: fscache duplicate cookie]
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Luis Henriques <lhenriques@suse.de>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Al,

We're seeing cases where fscache is reporting cookie collisions that appears
to be due to ->evict_inode() running parallel with a new inode for the same
filesystem object getting set up.

What's happening is that in all of 9p, afs, ceph, cifs and nfs, the fscache
cookie is being relinquished in ->evict_inode(), but that appears to be too
late because by that time, a new inode can be being allocated and a new cookie
get acquired.

evict_inode is a slow process, potentially, because it has to dismantle the
pagecache and wait for any outstanding DMA to the cache; then seal the cache
object - which involves a synchronous journalled op (setxattr), which means
that there's a lot of scope for a race.

Is there a better place to this?  drop_inode() maybe?  And is there a good
place to wait on all the DMAs that might be in progress to/from the cache?
(This might involve waiting for PG_locked or PG_fscache to be cleared on each
page).

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
