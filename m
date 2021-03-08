Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46549330C52
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Mar 2021 12:29:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJE4U-0006r2-L7; Mon, 08 Mar 2021 11:29:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lJE4S-0006qc-LK
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 11:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fl2MWGAcY5BbmiIvDIGebdX2XvBppoO5EAECGMxonAU=; b=JwFGwj6E44aCahpZ35hOnm6BZL
 L0Y39N/kvi8z79m7DAQ02lvjQMjxLsqqa/qaBZ0ZJyKH3k+sxu5+Eqw2A+7WMM25wEFr6dOFUpt0+
 COPT5Es3wpaqLqGcPDlE2N2MQvIZ8SYTe/nME+KvT61d8P8z6BPc5FOOCXw9U5swREyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fl2MWGAcY5BbmiIvDIGebdX2XvBppoO5EAECGMxonAU=; b=CfLMYdHpV5EuV0BtexR37iA2xg
 ccrpn3Pbnqed6CDuY1hXUwrM5Q+zh9L27HAzVD8F0hgLso0iZlWL6wWBMozUfXvzvTwddKnVRVPmu
 DtQlcfPuwtUqGHLnzWK92yKfyMsGutIikMlJRtHuMJl3KdOilsELKOrTicuRdY4sqrHM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lJE4L-0002By-W8
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 11:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615202935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fl2MWGAcY5BbmiIvDIGebdX2XvBppoO5EAECGMxonAU=;
 b=HMpyXtrmMBcxs4+qelU8KCO4cA8q7OOoocnYqBZ4UIhiy9B2do4/EF8Zf6fOMLKIAopi05
 qX/reCYMY8SPJ6VfBFlHlk2HqCloZDIGLdUR8OA6GIexQjnj9Z/EOqGgh93C6486seazon
 z8j1qKs1F/6MThUQ7VNbOTR+Ukb82ho=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-HhcYaZeaNNCawHZ5I0Rf6A-1; Mon, 08 Mar 2021 06:28:52 -0500
X-MC-Unique: HhcYaZeaNNCawHZ5I0Rf6A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBF5F1018F74;
 Mon,  8 Mar 2021 11:28:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-79.rdu2.redhat.com
 [10.10.112.79])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BF3E5D756;
 Mon,  8 Mar 2021 11:28:42 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAOQ4uxjYWprb7trvamCx+DaP2yn8HCaZeZx1dSvPyFH2My303w@mail.gmail.com>
References: <CAOQ4uxjYWprb7trvamCx+DaP2yn8HCaZeZx1dSvPyFH2My303w@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <517184.1615194835@warthog.procyon.org.uk>
To: Amir Goldstein <amir73il@gmail.com>
MIME-Version: 1.0
Content-ID: <584528.1615202921.1@warthog.procyon.org.uk>
Date: Mon, 08 Mar 2021 11:28:41 +0000
Message-ID: <584529.1615202921@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
X-Headers-End: 1lJE4L-0002By-W8
Subject: [V9fs-developer] Metadata writtenback notification? -- was Re:
 fscache: Redesigning the on-disk cache
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
 Miklos Szeredi <miklos@szeredi.hu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Amir Goldstein <amir73il@gmail.com> wrote:

> > But after I've written and sync'd the data, I set the xattr to mark the
> > file not open.  At the moment I'm doing this too lazily, only doing it
> > when a netfs file gets evicted or when the cache gets withdrawn, but I
> > really need to add a queue of objects to be sealed as they're closed.  The
> > balance is working out how often to do the sealing as something like a
> > shell script can do a lot of consecutive open/write/close ops.
> 
> You could add an internal vfs API wait_for_multiple_inodes_to_be_synced().
> For example, xfs keeps the "LSN" on each inode, so once the transaction
> with some LSN has been committed, all the relevant inodes, if not dirty, can
> be declared as synced, without having to call fsync() on any file and without
> having to force transaction commit or any IO at all.
> 
> Since fscache takes care of submitting the IO, and it shouldn't care about any
> specific time that the data/metadata hits the disk(?), you can make use of the
> existing periodic writeback and rolling transaction commit and only ever need
> to wait for that to happen before marking cache files "closed".
> 
> There was a discussion about fsyncing a range of files on LSFMM [1].
> In the last comment on the article dchinner argues why we already have that
> API (and now also with io_uring(), but AFAIK, we do not have a useful
> wait_for_sync() API. And it doesn't need to be exposed to userspace at all.
> 
> [1] https://lwn.net/Articles/789024/

This sounds like an interesting idea.  Actually, what I probably want is a
notification to say that a particular object has been completely sync'd to
disk, metadata and all.

I'm not sure that io_uring is particularly usable from within the kernel,
though.

> If I were you, I would try to avoid re-implementing a journaled filesystem or
> a database for fscache and try to make use of crash consistency guarantees
> that filesystems already provide.
> Namely, use the data dependency already provided by temp files.
> It doesn't need to be one temp file per cached file.
> 
> Always easier said than done ;-)

Yes.

There are a number of considerations I have to deal with, and they're somewhat
at odds with each other:

 (1) I need to record what data I have stored from a file.

 (2) I need to record where I stored the data.

 (3) I need to make sure that I don't see old data.

 (4) I need to make sure that I don't see data in the wrong file.

 (5) I need to make sure I lose as little as possible on a crash.

 (6) I want to be able to record what changes were made in the event we're
     disconnected from the server.

For my fscache-iter branch, (1) is done with a map in an xattr, but I only
cache up to 1G in a file at the moment; (2), (4) and, to some extent (5), are
handled by the backing fs; (3) is handled by tagging the file and storing
coherency data in in an xattr (though tmpfiles are used on full invalidation).
(6) is not yet supported.

For upstream, (1), (2), (4) and to some extent (5) are handled through the
backing fs.  (3) is handled by storing coherency data in an xattr and
truncating the file on invalidation; (6) is not yet supported.

However, there are some performance problems are arising in my fscache-iter
branch:

 (1) It's doing a lot of synchronous metadata operations (tmpfile, truncate,
     setxattr).

 (2) It's retaining a lot of open file structs on cache files.  Cachefiles
     opens the file when it's first asked to access it and retains that till
     the cookie is relinquished or the cache withdrawn (the file* doesn't
     contribute to ENFILE/EMFILE but it still eats memory).

     I can mitigate this by closing much sooner, perhaps opening the file for
     each operation - but at the cost of having to spend time doing more opens
     and closes.  What's in upstream gets away without having to do open/close
     for reads because it calls readpage.

     Alternatively, I can have a background file closer - which requires an
     LRU queue.  This could be combined with a file "sealer".

     Deferred writeback on the netfs starting writes to the cache makes this
     more interesting as I have to retain the interest on the cache object
     beyond the netfs file being closed.

 (3) Trimming excess data from the end of the cache file.  The problem with
     using DIO to write to the cache is that the write has to be rounded up to
     a multiple of the backing fs DIO blocksize, but if the file is truncated
     larger, that excess data now becomes part of the file.

     Possibly it's sufficient to just clear the excess page space before
     writing, but that doesn't necessarily stop a writable mmap from
     scribbling on it.

 (4) Committing outstanding cache metadata at cache withdrawal or netfs
     unmount.  I've previously mentioned this: it ends up with a whole slew of
     synchronous metadata changes being committed to the cache in one go
     (truncates, fallocates, fsync, xattrs, unlink+link of tmpfile) - and this
     can take quite a long time.  The cache needs to be more proactive in
     getting stuff committed as it goes along.

 (5) Attaching to an object requires a pathwalk to it (normally only two
     steps) and then reading various xattrs on it - all synchronous, but can
     be punted to a background threadpool.

Amongst the reasons I was considering moving to an index and a single datafile
is to replace the path-lookup step for each object and the xattr reads to
looking in a single file and to reduce the number of open files in the cache
at any one time to around four.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
