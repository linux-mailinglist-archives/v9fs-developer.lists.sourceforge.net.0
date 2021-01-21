Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A04992FF3A2
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 19:55:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2f7V-0004DP-64; Thu, 21 Jan 2021 18:55:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l2f7T-0004D3-SM
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 18:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8cQVBtElgHkrZu0TCW+Tp+86juePWkkpr+KAAgOabXU=; b=HbQKaxEpxq1MGOnmbKfaAXXESP
 MTTlIOYkCGAqOc9+dsobn3/kNTAs3ZmuFJ603kANdnY1TEspAYAO4oGBYqvqiMHCc44D+g+FZfusA
 qLp82ruPaKf8s81uKygGC8v7LJ9xlXclq6s89g/c49Cxvq02waoYnZBST+m63PQsrX+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8cQVBtElgHkrZu0TCW+Tp+86juePWkkpr+KAAgOabXU=; b=cg7lmca23MSniQDsMIUEchDhpH
 KNPu+ORT4RoB4ff86TxRSlBsZlDdcXUAsbLahec6Xo9mLU+FyZiuQr0cW5srfVvvyWBcWT1sLbYxK
 CaMssQY2LfQo0InkE4HvF3qDma6WR81ni+UkWnKz2mLczVbEflo5AIWYDU2ay9Tpuc8A=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l2f7F-003ycr-BK
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 18:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611255327;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8cQVBtElgHkrZu0TCW+Tp+86juePWkkpr+KAAgOabXU=;
 b=XHB60I467yiJ85D5AJUUD2CN9tZft61EkNIam1m5N7NlDsF2+UbEu7YjsoLIrspYtnuaXT
 Y4VB92DKD/wXl9T2OT9tahoFnsmIV3A0ir+U7uRgXCNm6ThsNHLZLARWQVXFlC212Q8ESr
 n6/En7hXwtyMOa78JfglvBcJKFDqG98=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-594-ogR02f57MSGANxw_NhZwKQ-1; Thu, 21 Jan 2021 13:55:23 -0500
X-MC-Unique: ogR02f57MSGANxw_NhZwKQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 570368066F2;
 Thu, 21 Jan 2021 18:55:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 810576EF42;
 Thu, 21 Jan 2021 18:55:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210121174306.GB20964@fieldses.org>
References: <20210121174306.GB20964@fieldses.org>
 <20210121164645.GA20964@fieldses.org>
 <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <1794286.1611248577@warthog.procyon.org.uk>
To: "J. Bruce Fields" <bfields@fieldses.org>
MIME-Version: 1.0
Content-ID: <1851803.1611255313.1@warthog.procyon.org.uk>
Date: Thu, 21 Jan 2021 18:55:13 +0000
Message-ID: <1851804.1611255313@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Headers-End: 1l2f7F-003ycr-BK
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

> > Fixing this requires a much bigger overhaul of cachefiles than this patchset
> > performs.
> 
> That sounds like "sometimes you may get file corruption and there's
> nothing you can do about it".  But I know people actually use fscache,
> so it must be reliable at least for some use cases.

Yes.  That's true for the upstream code because that uses bmap.  I'm switching
to use SEEK_HOLE/SEEK_DATA to get rid of the bmap usage, but it doesn't change
the issue.

> Is it that those "bridging" blocks only show up in certain corner cases
> that users can arrange to avoid?  Or that it's OK as long as you use
> certain specific file systems whose behavior goes beyond what's
> technically required by the bamp or seek interfaces?

That's a question for the xfs, ext4 and btrfs maintainers, and may vary
between kernel versions and fsck or filesystem packing utility versions.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
