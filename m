Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D9C3585CD
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:06:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUVIJ-0005UI-Q9; Thu, 08 Apr 2021 14:06:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUVII-0005U1-4F
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=osMqRXzPCzFvOMBAjjIkyuml1NmAZzNHo8F+JzdYm0A=; b=lxQBrGM1l6y6UaBKrsl9BTvXlD
 LwFQn7Ddnd/KG/lL4aaQkzWukjHc9SKC/YQUj2qOnWf/NmEWXwbEzb/TdQDMPNyMJATqzMf1THooZ
 pD0kRxInXF18yDGHYUDK5NnUcEHilhUlPxvWODLCKcNCd36mjPMl3tMDyQxWpopWbIQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=osMqRXzPCzFvOMBAjjIkyuml1NmAZzNHo8F+JzdYm0A=; b=iT7LyUpVvc75HjFgQLwWMXkY0o
 qjLQNBUdT7F4kn7Tb2HGGXvKBkdRVndUuBeOGKO4cgEP+X4cv0AFhAxCb8/f7y9FQSANuz/LJcze7
 yv5E/hlEoQCIPXKkc6bZ59q4JKYCn9TZBsvKhNrqDyfckybsbKQWBGeGrVi/nCGhGF94=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUVI2-0002yo-1X
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617890740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=osMqRXzPCzFvOMBAjjIkyuml1NmAZzNHo8F+JzdYm0A=;
 b=V84CP47kWqBvHl01sWYtMzxE/cvqEcjcX4hK4AdOtLGC0FGkEBqM36Z0Hpc2tkrAc0rBmj
 GvbpcADZa3J000yBJQ8QxYunRwLHlx6goj8geqzMCtpKCmBAySKbDc9w6bj5smIQlkzErj
 maxdEeA8WqdhaW/pBSLclkIP6uf3lcw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-SDqLPbPpMEuXWaEPSqKPJw-1; Thu, 08 Apr 2021 10:05:36 -0400
X-MC-Unique: SDqLPbPpMEuXWaEPSqKPJw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BCBB98018A7;
 Thu,  8 Apr 2021 14:05:34 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AEAF260657;
 Thu,  8 Apr 2021 14:05:26 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 08 Apr 2021 15:05:25 +0100
Message-ID: <161789072591.6155.9448294406920216219.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUVI2-0002yo-1X
Subject: [V9fs-developer] [PATCH v6 07/30] netfs: Documentation for helper
 library
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Steve French <sfrench@samba.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add interface documentation for the netfs helper library.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/161539533275.286939.6246011228676840978.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653791767.2770958.2012814194145060913.stgit@warthog.procyon.org.uk/ # v5
---

 Documentation/filesystems/index.rst         |    1 
 Documentation/filesystems/netfs_library.rst |  526 +++++++++++++++++++++++++++
 2 files changed, 527 insertions(+)
 create mode 100644 Documentation/filesystems/netfs_library.rst

diff --git a/Documentation/filesystems/index.rst b/Documentation/filesystems/index.rst
index 1f76b1cb3348..d4853cb919d2 100644
--- a/Documentation/filesystems/index.rst
+++ b/Documentation/filesystems/index.rst
@@ -53,6 +53,7 @@ filesystem implementations.
    journalling
    fscrypt
    fsverity
+   netfs_library
 
 Filesystems
 ===========
diff --git a/Documentation/filesystems/netfs_library.rst b/Documentation/filesystems/netfs_library.rst
new file mode 100644
index 000000000000..57a641847818
--- /dev/null
+++ b/Documentation/filesystems/netfs_library.rst
@@ -0,0 +1,526 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=================================
+NETWORK FILESYSTEM HELPER LIBRARY
+=================================
+
+.. Contents:
+
+ - Overview.
+ - Buffered read helpers.
+   - Read helper functions.
+   - Read helper structures.
+   - Read helper operations.
+   - Read helper procedure.
+   - Read helper cache API.
+
+
+Overview
+========
+
+The network filesystem helper library is a set of functions designed to aid a
+network filesystem in implementing VM/VFS operations.  For the moment, that
+just includes turning various VM buffered read operations into requests to read
+from the server.  The helper library, however, can also interpose other
+services, such as local caching or local data encryption.
+
+Note that the library module doesn't link against local caching directly, so
+access must be provided by the netfs.
+
+
+Buffered Read Helpers
+=====================
+
+The library provides a set of read helpers that handle the ->readpage(),
+->readahead() and much of the ->write_begin() VM operations and translate them
+into a common call framework.
+
+The following services are provided:
+
+ * Handles transparent huge pages (THPs).
+
+ * Insulates the netfs from VM interface changes.
+
+ * Allows the netfs to arbitrarily split reads up into pieces, even ones that
+   don't match page sizes or page alignments and that may cross pages.
+
+ * Allows the netfs to expand a readahead request in both directions to meet
+   its needs.
+
+ * Allows the netfs to partially fulfil a read, which will then be resubmitted.
+
+ * Handles local caching, allowing cached data and server-read data to be
+   interleaved for a single request.
+
+ * Handles clearing of bufferage that aren't on the server.
+
+ * Handle retrying of reads that failed, switching reads from the cache to the
+   server as necessary.
+
+ * In the future, this is a place that other services can be performed, such as
+   local encryption of data to be stored remotely or in the cache.
+
+From the network filesystem, the helpers require a table of operations.  This
+includes a mandatory method to issue a read operation along with a number of
+optional methods.
+
+
+Read Helper Functions
+---------------------
+
+Three read helpers are provided::
+
+ * void netfs_readahead(struct readahead_control *ractl,
+			const struct netfs_read_request_ops *ops,
+			void *netfs_priv);``
+ * int netfs_readpage(struct file *file,
+		      struct page *page,
+		      const struct netfs_read_request_ops *ops,
+		      void *netfs_priv);
+ * int netfs_write_begin(struct file *file,
+			 struct address_space *mapping,
+			 loff_t pos,
+			 unsigned int len,
+			 unsigned int flags,
+			 struct page **_page,
+			 void **_fsdata,
+			 const struct netfs_read_request_ops *ops,
+			 void *netfs_priv);
+
+Each corresponds to a VM operation, with the addition of a couple of parameters
+for the use of the read helpers:
+
+ * ``ops``
+
+   A table of operations through which the helpers can talk to the filesystem.
+
+ * ``netfs_priv``
+
+   Filesystem private data (can be NULL).
+
+Both of these values will be stored into the read request structure.
+
+For ->readahead() and ->readpage(), the network filesystem should just jump
+into the corresponding read helper; whereas for ->write_begin(), it may be a
+little more complicated as the network filesystem might want to flush
+conflicting writes or track dirty data and needs to put the acquired page if an
+error occurs after calling the helper.
+
+The helpers manage the read request, calling back into the network filesystem
+through the suppplied table of operations.  Waits will be performed as
+necessary before returning for helpers that are meant to be synchronous.
+
+If an error occurs and netfs_priv is non-NULL, ops->cleanup() will be called to
+deal with it.  If some parts of the request are in progress when an error
+occurs, the request will get partially completed if sufficient data is read.
+
+Additionally, there is::
+
+  * void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
+				 ssize_t transferred_or_error,
+				 bool was_async);
+
+which should be called to complete a read subrequest.  This is given the number
+of bytes transferred or a negative error code, plus a flag indicating whether
+the operation was asynchronous (ie. whether the follow-on processing can be
+done in the current context, given this may involve sleeping).
+
+
+Read Helper Structures
+----------------------
+
+The read helpers make use of a couple of structures to maintain the state of
+the read.  The first is a structure that manages a read request as a whole::
+
+	struct netfs_read_request {
+		struct inode		*inode;
+		struct address_space	*mapping;
+		struct netfs_cache_resources cache_resources;
+		void			*netfs_priv;
+		loff_t			start;
+		size_t			len;
+		loff_t			i_size;
+		const struct netfs_read_request_ops *netfs_ops;
+		unsigned int		debug_id;
+		...
+	};
+
+The above fields are the ones the netfs can use.  They are:
+
+ * ``inode``
+ * ``mapping``
+
+   The inode and the address space of the file being read from.  The mapping
+   may or may not point to inode->i_data.
+
+ * ``cache_resources``
+
+   Resources for the local cache to use, if present.
+
+ * ``netfs_priv``
+
+   The network filesystem's private data.  The value for this can be passed in
+   to the helper functions or set during the request.  The ->cleanup() op will
+   be called if this is non-NULL at the end.
+
+ * ``start``
+ * ``len``
+
+   The file position of the start of the read request and the length.  These
+   may be altered by the ->expand_readahead() op.
+
+ * ``i_size``
+
+   The size of the file at the start of the request.
+
+ * ``netfs_ops``
+
+   A pointer to the operation table.  The value for this is passed into the
+   helper functions.
+
+ * ``debug_id``
+
+   A number allocated to this operation that can be displayed in trace lines
+   for reference.
+
+
+The second structure is used to manage individual slices of the overall read
+request::
+
+	struct netfs_read_subrequest {
+		struct netfs_read_request *rreq;
+		loff_t			start;
+		size_t			len;
+		size_t			transferred;
+		unsigned long		flags;
+		unsigned short		debug_index;
+		...
+	};
+
+Each subrequest is expected to access a single source, though the helpers will
+handle falling back from one source type to another.  The members are:
+
+ * ``rreq``
+
+   A pointer to the read request.
+
+ * ``start``
+ * ``len``
+
+   The file position of the start of this slice of the read request and the
+   length.
+
+ * ``transferred``
+
+   The amount of data transferred so far of the length of this slice.  The
+   network filesystem or cache should start the operation this far into the
+   slice.  If a short read occurs, the helpers will call again, having updated
+   this to reflect the amount read so far.
+
+ * ``flags``
+
+   Flags pertaining to the read.  There are two of interest to the filesystem
+   or cache:
+
+   * ``NETFS_SREQ_CLEAR_TAIL``
+
+     This can be set to indicate that the remainder of the slice, from
+     transferred to len, should be cleared.
+
+   * ``NETFS_SREQ_SEEK_DATA_READ``
+
+     This is a hint to the cache that it might want to try skipping ahead to
+     the next data (ie. using SEEK_DATA).
+
+ * ``debug_index``
+
+   A number allocated to this slice that can be displayed in trace lines for
+   reference.
+
+
+Read Helper Operations
+----------------------
+
+The network filesystem must provide the read helpers with a table of operations
+through which it can issue requests and negotiate::
+
+	struct netfs_read_request_ops {
+		void (*init_rreq)(struct netfs_read_request *rreq, struct file *file);
+		bool (*is_cache_enabled)(struct inode *inode);
+		int (*begin_cache_operation)(struct netfs_read_request *rreq);
+		void (*expand_readahead)(struct netfs_read_request *rreq);
+		bool (*clamp_length)(struct netfs_read_subrequest *subreq);
+		void (*issue_op)(struct netfs_read_subrequest *subreq);
+		bool (*is_still_valid)(struct netfs_read_request *rreq);
+		int (*check_write_begin)(struct file *file, loff_t pos, unsigned len,
+					 struct page *page, void **_fsdata);
+		void (*done)(struct netfs_read_request *rreq);
+		void (*cleanup)(struct address_space *mapping, void *netfs_priv);
+	};
+
+The operations are as follows:
+
+ * ``init_rreq()``
+
+   [Optional] This is called to initialise the request structure.  It is given
+   the file for reference and can modify the ->netfs_priv value.
+
+ * ``is_cache_enabled()``
+
+   [Required] This is called by netfs_write_begin() to ask if the file is being
+   cached.  It should return true if it is being cached and false otherwise.
+
+ * ``begin_cache_operation()``
+
+   [Optional] This is called to ask the network filesystem to call into the
+   cache (if present) to initialise the caching state for this read.  The netfs
+   library module cannot access the cache directly, so the cache should call
+   something like fscache_begin_read_operation() to do this.
+
+   The cache gets to store its state in ->cache_resources and must set a table
+   of operations of its own there (though of a different type).
+
+   This should return 0 on success and an error code otherwise.  If an error is
+   reported, the operation may proceed anyway, just without local caching (only
+   out of memory and interruption errors cause failure here).
+
+ * ``expand_readahead()``
+
+   [Optional] This is called to allow the filesystem to expand the size of a
+   readahead read request.  The filesystem gets to expand the request in both
+   directions, though it's not permitted to reduce it as the numbers may
+   represent an allocation already made.  If local caching is enabled, it gets
+   to expand the request first.
+
+   Expansion is communicated by changing ->start and ->len in the request
+   structure.  Note that if any change is made, ->len must be increased by at
+   least as much as ->start is reduced.
+
+ * ``clamp_length()``
+
+   [Optional] This is called to allow the filesystem to reduce the size of a
+   subrequest.  The filesystem can use this, for example, to chop up a request
+   that has to be split across multiple servers or to put multiple reads in
+   flight.
+
+   This should return 0 on success and an error code on error.
+
+ * ``issue_op()``
+
+   [Required] The helpers use this to dispatch a subrequest to the server for
+   reading.  In the subrequest, ->start, ->len and ->transferred indicate what
+   data should be read from the server.
+
+   There is no return value; the netfs_subreq_terminated() function should be
+   called to indicate whether or not the operation succeeded and how much data
+   it transferred.  The filesystem also should not deal with setting pages
+   uptodate, unlocking them or dropping their refs - the helpers need to deal
+   with this as they have to coordinate with copying to the local cache.
+
+   Note that the helpers have the pages locked, but not pinned.  It is possible
+   to use the ITER_XARRAY iov iterator to refer to the range of the inode that
+   is being operated upon without the need to allocate large bvec tables.
+
+ * ``is_still_valid()``
+
+   [Optional] This is called to find out if the data just read from the local
+   cache is still valid.  It should return true if it is still valid and false
+   if not.  If it's not still valid, it will be reread from the server.
+
+ * ``check_write_begin()``
+
+   [Optional] This is called from the netfs_write_begin() helper once it has
+   allocated/grabbed the page to be modified to allow the filesystem to flush
+   conflicting state before allowing it to be modified.
+
+   It should return 0 if everything is now fine, -EAGAIN if the page should be
+   regrabbed and any other error code to abort the operation.
+
+ * ``done``
+
+   [Optional] This is called after the pages in the request have all been
+   unlocked (and marked uptodate if applicable).
+
+ * ``cleanup``
+
+   [Optional] This is called as the request is being deallocated so that the
+   filesystem can clean up ->netfs_priv.
+
+
+
+Read Helper Procedure
+---------------------
+
+The read helpers work by the following general procedure:
+
+ * Set up the request.
+
+ * For readahead, allow the local cache and then the network filesystem to
+   propose expansions to the read request.  This is then proposed to the VM.
+   If the VM cannot fully perform the expansion, a partially expanded read will
+   be performed, though this may not get written to the cache in its entirety.
+
+ * Loop around slicing chunks off of the request to form subrequests:
+
+   * If a local cache is present, it gets to do the slicing, otherwise the
+     helpers just try to generate maximal slices.
+
+   * The network filesystem gets to clamp the size of each slice if it is to be
+     the source.  This allows rsize and chunking to be implemented.
+
+   * The helpers issue a read from the cache or a read from the server or just
+     clears the slice as appropriate.
+
+   * The next slice begins at the end of the last one.
+
+   * As slices finish being read, they terminate.
+
+ * When all the subrequests have terminated, the subrequests are assessed and
+   any that are short or have failed are reissued:
+
+   * Failed cache requests are issued against the server instead.
+
+   * Failed server requests just fail.
+
+   * Short reads against either source will be reissued against that source
+     provided they have transferred some more data:
+
+     * The cache may need to skip holes that it can't do DIO from.
+
+     * If NETFS_SREQ_CLEAR_TAIL was set, a short read will be cleared to the
+       end of the slice instead of reissuing.
+
+ * Once the data is read, the pages that have been fully read/cleared:
+
+   * Will be marked uptodate.
+
+   * If a cache is present, will be marked with PG_fscache.
+
+   * Unlocked
+
+ * Any pages that need writing to the cache will then have DIO writes issued.
+
+ * Synchronous operations will wait for reading to be complete.
+
+ * Writes to the cache will proceed asynchronously and the pages will have the
+   PG_fscache mark removed when that completes.
+
+ * The request structures will be cleaned up when everything has completed.
+
+
+Read Helper Cache API
+---------------------
+
+When implementing a local cache to be used by the read helpers, two things are
+required: some way for the network filesystem to initialise the caching for a
+read request and a table of operations for the helpers to call.
+
+The network filesystem's ->begin_cache_operation() method is called to set up a
+cache and this must call into the cache to do the work.  If using fscache, for
+example, the cache would call::
+
+	int fscache_begin_read_operation(struct netfs_read_request *rreq,
+					 struct fscache_cookie *cookie);
+
+passing in the request pointer and the cookie corresponding to the file.
+
+The netfs_read_request object contains a place for the cache to hang its
+state::
+
+	struct netfs_cache_resources {
+		const struct netfs_cache_ops	*ops;
+		void				*cache_priv;
+		void				*cache_priv2;
+	};
+
+This contains an operations table pointer and two private pointers.  The
+operation table looks like the following::
+
+	struct netfs_cache_ops {
+		void (*end_operation)(struct netfs_cache_resources *cres);
+
+		void (*expand_readahead)(struct netfs_cache_resources *cres,
+					 loff_t *_start, size_t *_len, loff_t i_size);
+
+		enum netfs_read_source (*prepare_read)(struct netfs_read_subrequest *subreq,
+						       loff_t i_size);
+
+		int (*read)(struct netfs_cache_resources *cres,
+			    loff_t start_pos,
+			    struct iov_iter *iter,
+			    bool seek_data,
+			    netfs_io_terminated_t term_func,
+			    void *term_func_priv);
+
+		int (*write)(struct netfs_cache_resources *cres,
+			     loff_t start_pos,
+			     struct iov_iter *iter,
+			     netfs_io_terminated_t term_func,
+			     void *term_func_priv);
+	};
+
+With a termination handler function pointer::
+
+	typedef void (*netfs_io_terminated_t)(void *priv,
+					      ssize_t transferred_or_error,
+					      bool was_async);
+
+The methods defined in the table are:
+
+ * ``end_operation()``
+
+   [Required] Called to clean up the resources at the end of the read request.
+
+ * ``expand_readahead()``
+
+   [Optional] Called at the beginning of a netfs_readahead() operation to allow
+   the cache to expand a request in either direction.  This allows the cache to
+   size the request appropriately for the cache granularity.
+
+   The function is passed poiners to the start and length in its parameters,
+   plus the size of the file for reference, and adjusts the start and length
+   appropriately.  It should return one of:
+
+   * ``NETFS_FILL_WITH_ZEROES``
+   * ``NETFS_DOWNLOAD_FROM_SERVER``
+   * ``NETFS_READ_FROM_CACHE``
+   * ``NETFS_INVALID_READ``
+
+   to indicate whether the slice should just be cleared or whether it should be
+   downloaded from the server or read from the cache - or whether slicing
+   should be given up at the current point.
+
+ * ``prepare_read()``
+
+   [Required] Called to configure the next slice of a request.  ->start and
+   ->len in the subrequest indicate where and how big the next slice can be;
+   the cache gets to reduce the length to match its granularity requirements.
+
+ * ``read()``
+
+   [Required] Called to read from the cache.  The start file offset is given
+   along with an iterator to read to, which gives the length also.  It can be
+   given a hint requesting that it seek forward from that start position for
+   data.
+
+   Also provided is a pointer to a termination handler function and private
+   data to pass to that function.  The termination function should be called
+   with the number of bytes transferred or an error code, plus a flag
+   indicating whether the termination is definitely happening in the caller's
+   context.
+
+ * ``write()``
+
+   [Required] Called to write to the cache.  The start file offset is given
+   along with an iterator to write from, which gives the length also.
+
+   Also provided is a pointer to a termination handler function and private
+   data to pass to that function.  The termination function should be called
+   with the number of bytes transferred or an error code, plus a flag
+   indicating whether the termination is definitely happening in the caller's
+   context.
+
+Note that these methods are passed a pointer to the cache resource structure,
+not the read request structure as they could be used in other situations where
+there isn't a read request structure as well, such as writing dirty data to the
+cache.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
