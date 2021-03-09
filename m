Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF303321D1
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Mar 2021 10:22:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJYZH-0004Ta-S7; Tue, 09 Mar 2021 09:22:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lJYZF-0004TD-Dr
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Mar 2021 09:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JbGQhFsWORLegeM9HGujB/YiUTVMdc6Nb8R30vrP8qg=; b=ZQq+vIafp85VGH1xgeRt3+HxWQ
 DYySrdn55KqJo6dNMtJDBpnMfeYeOthnUwDCWz4AQIYtcgEXkca+Rv4NCRNk2OI8O5SDzilZklBYB
 odO5duIdqH+qqfKoBSd69RVwuWLsLA4APFn7cSXWq73krT/SkSGUhQma8DVEFqW/VVMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JbGQhFsWORLegeM9HGujB/YiUTVMdc6Nb8R30vrP8qg=; b=i4drfr1lkis1uvaF6a24EPq92L
 zmOY9P37vpWdGW3f0q5gaHE6mqoh8mdn8+3UN4BXhjBh5CnBOoHQOXAHPge/dlHLDGJdeuQmZlTfH
 Esg1Ei0aPV5CFLi5r79Z+d9uMzzdGPILoZoZgK6x/l9wFyYHQCRv0I8wxB30YVmjD9hY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lJYZ2-0007wu-Sz
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Mar 2021 09:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615281718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JbGQhFsWORLegeM9HGujB/YiUTVMdc6Nb8R30vrP8qg=;
 b=QANZGjB7q6airvkYHP7s24/3Y5T31h0I4MEXFYStBomr1I7e/F8+wGOwiOFDAI/hpfCgv3
 GcM1YE5ZQnsM0hFr2wJmRhvM6NJYZsfz3zLwrSFABEInCoZ+/ar5/M7JioDVKrI91Ib20q
 hnCupH9AHjs4vhtG/6/TDJVs2rpTbN8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-WXeLrfhUNES_-vEl3omWaQ-1; Tue, 09 Mar 2021 04:21:57 -0500
X-MC-Unique: WXeLrfhUNES_-vEl3omWaQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92A4B193F560;
 Tue,  9 Mar 2021 09:21:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-152.rdu2.redhat.com
 [10.10.118.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9F7059458;
 Tue,  9 Mar 2021 09:21:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210308215535.GA63242@dread.disaster.area>
References: <20210308215535.GA63242@dread.disaster.area>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <517184.1615194835@warthog.procyon.org.uk>
To: Dave Chinner <david@fromorbit.com>
MIME-Version: 1.0
Content-ID: <152280.1615281705.1@warthog.procyon.org.uk>
Date: Tue, 09 Mar 2021 09:21:45 +0000
Message-ID: <152281.1615281705@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fromorbit.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lJYZ2-0007wu-Sz
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
Cc: "J. Bruce Fields" <bfields@fieldses.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Amir Goldstein <amir73il@gmail.com>,
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

Dave Chinner <david@fromorbit.com> wrote:

> > > With ->fiemap() you can at least make the distinction between a non
> > > existing and an UNWRITTEN extent.
> > 
> > I can't use that for XFS, Ext4 or btrfs, I suspect.  Christoph and Dave's
> > assertion is that the cache can't rely on the backing filesystem's metadata
> > because these can arbitrarily insert or remove blocks of zeros to bridge or
> > split extents.
> 
> Well, that's not the big problem. The issue that makes FIEMAP
> unusable for determining if there is user data present in a file is
> that on-disk extent maps aren't exactly coherent with in-memory user
> data state.
> 
> That is, we can have a hole on disk with delalloc user data in
> memory.  There's user data in the file, just not on disk. Same goes
> for unwritten extents - there can be dirty data in memory over an
> unwritten extent, and it won't get converted to written until the
> data is written back and the filesystem runs a conversion
> transaction.
> 
> So, yeah, if you use FIEMAP to determine where data lies in a file
> that is being actively modified, you're going get corrupt data
> sooner rather than later.  SEEK_HOLE/DATA are coherent with in
> memory user data, so don't have this problem.

I thought you and/or Christoph said it *was* a problem to use the backing
filesystem's metadata to track presence of data in the cache because the
filesystem (or its tools) can arbitrarily insert blocks of zeros to
bridge/break up extents.

If that is the case, then that is a big problem, and SEEK_HOLE/DATA won't
suffice.

If it's not a problem - maybe if I can set a mark on a file to tell the
filesystem and tools not to do that - then that would obviate the need for me
to store my own maps.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
