Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8440D37A727
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 May 2021 14:54:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgRtx-0004VY-G2; Tue, 11 May 2021 12:54:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lgRtw-0004Su-3A
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 12:54:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ES3lo+LzI3IBSZTYaDNTFKRV/fpzrR23ONuVySbbDys=; b=YnbbW13cmVNv2FGIFZ85x+IiNX
 IWTjVuJmDToIBKPeUzOxmHC1Hr3jVup93tLRUepJ1w1v6mvXWaVPRDWufST7KuvhfelOBbGiJjPPs
 +rfGPn/wMcgaRxe2mr19QlXVWC+RvnW7Tis7wmta003x7cD3OtXqyAmViXEUbFbhv4CY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ES3lo+LzI3IBSZTYaDNTFKRV/fpzrR23ONuVySbbDys=; b=GmMUWRmmD56UcBfZiXf2q0nQbq
 zd8pXF07iWU0sCU1pZKArtETeuRPWYtHg0VzT3FPvmJbiCyL7UNcgFsivq4IWN6Yqy9ySWB0kub5y
 BTFfFxmFCW9H7hy2L7r9cX8jhVPcR84ScNIwK3IqQd1wCN33cd+muIHuGJhBprMwCjE8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgRto-0004Bk-Qm
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 12:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620737643;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ES3lo+LzI3IBSZTYaDNTFKRV/fpzrR23ONuVySbbDys=;
 b=GnoIreVOqcMWq3xKTch8Cl8vayuiz4MnlyjLEM42v1x4jCA+nwUGVFeIN2VoEdGqasAIZm
 cP23vF9q2J+G7GvmOm/MGb3HjzTH122Z5t9rzSmKlviJbpAm9XFRYB/hL1SHZZk/XTP2fk
 dGwwiZEiSOg2sOiihx0keqTpb0hamJY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-565-zdAR-4qdMQu6CKaKf189Pg-1; Tue, 11 May 2021 08:53:59 -0400
X-MC-Unique: zdAR-4qdMQu6CKaKf189Pg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 589AF1854E21;
 Tue, 11 May 2021 12:53:58 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 20F2C19C44;
 Tue, 11 May 2021 12:53:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <875yzq270z.fsf@suse.de>
References: <875yzq270z.fsf@suse.de> <87czu45gcs.fsf@suse.de>
 <YJPIyLZ9ofnPy3F6@codewreck.org> <87zgx83vj9.fsf@suse.de>
 <87r1ii4i2a.fsf@suse.de> <YJXfjDfw9KM50f4y@codewreck.org>
To: Luis Henriques <lhenriques@suse.de>
MIME-Version: 1.0
Content-ID: <2508765.1620737636.1@warthog.procyon.org.uk>
Date: Tue, 11 May 2021 13:53:56 +0100
Message-ID: <2508766.1620737636@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.8 (/)
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
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgRto-0004Bk-Qm
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Luis Henriques <lhenriques@suse.de> wrote:

> I've just done a quick experiment: moving the call to function
> v9fs_cache_inode_put_cookie() in v9fs_evict_inode() to the beginning
> (before truncate_inode_pages_final()) and it seems to, at least, narrow
> the window -- I'm not able to reproduce the issue anymore.  But I'll need
> to look closer.

The cookie needs to be relinquished after the pagecache has been cleared such
that any outstanding writes have been dealt with as ->invalidatepage() may
refer to the cookie in order to ditch references to pages.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
