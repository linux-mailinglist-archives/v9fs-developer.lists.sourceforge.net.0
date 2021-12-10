Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F225470903
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Dec 2021 19:39:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvknp-0004Fb-0c; Fri, 10 Dec 2021 18:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dwysocha@redhat.com>) id 1mvkno-0004FV-1c
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 18:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GurlPRtI5DjwhyG1HNpuzM5yzLd94hulymgYprj0SKk=; b=XEAfLRv9gazbpFRI+5eATP35Pi
 TZPrMOVV9hUpjziJpB5qsd92lCAqbNpjg2I+B/dy9gHQ7vrH/EZUfrpAteLx9m7lcJVJQ7HjL7g4n
 YctFd9uqipjN/qLhnsO7B+0QZUW1hrX2FI+VO8ahU0EX4aJJ4dTDb6HvQE7zQEPG5+Os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GurlPRtI5DjwhyG1HNpuzM5yzLd94hulymgYprj0SKk=; b=D1nvICQhM4pYQz+cec7oWMPbuz
 06v4xzhWk1mfDqkML//I61qZf/lI1fqgxTLJGzUjOfKKzqr1MgarmNrZKSh8GwiFWW32xFNjkiL/p
 qX8xGJ2wmW+YsV80BSAaGGMmKE8hrBywwSEjqAGGPPfR2AhiePCiRZz1433XGkPahTyE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvknj-0002Wb-ME
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 18:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639161557;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GurlPRtI5DjwhyG1HNpuzM5yzLd94hulymgYprj0SKk=;
 b=YbOUXpaqWKrxHADqkrIOq0vYCXWlt5il91yTBA+GyM6mWXbCzfJgsc1kc0edI5XCYDHm6K
 Dhl3TnOpv12Iv2aG7EJso0KWasrsJuwzfhFKeXvA+ENrconsGK9dX1ojDZZ4cTvnnz79BG
 nQRqIDKbQPaDnMrJgAMXE5wEPALqAcE=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-431-G7Um9cDtPgSTA22JSKzTFQ-1; Fri, 10 Dec 2021 13:39:15 -0500
X-MC-Unique: G7Um9cDtPgSTA22JSKzTFQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 eg20-20020a056402289400b003eb56fcf6easo8891418edb.20
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Dec 2021 10:39:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GurlPRtI5DjwhyG1HNpuzM5yzLd94hulymgYprj0SKk=;
 b=ateV1jim4qM45dKxeDx2uOsScm6cczj0mWiaJT+dtTxjHTWjnMgZ2OcGzjLt9JCfja
 DU+fFxOe2jXAbR/hMziTJpj90UlMtl2EgH9m4Kl32wUUJkiDk/uPmA7L+KQ71FsjQyW2
 jj1iyBglRwzzJYL7pxi4fBCDm6B25L91JO0nZJPN7QZULdfjvwleGQJ/k/XSWKs5M88M
 FgVLt2XkxEw/1CyI3a81NGPlJvWHWk3TjK3mA6927ckLfiugkuhXxcFnaHTN45misSkt
 GgmOVDHE0OvoP6YNzyYCvw1Da5KBdt+Ngvm/N73mm5aEdJbrrHXxQ2OgcJuuPEBYxIsk
 50EA==
X-Gm-Message-State: AOAM533ULJdr1JmghjP19afV5EcpflX6TZk0R5HhNzDSqfc4pzStHr+2
 GAODsqKqkSNy4JUNH6qUBeBVPtx2KZHRAZPcY8ZoCS2ipcqLbbdfeUniLuDaq8MLEf6HySxrNpw
 yPyLjlMAhGBCYg/sN/3Z6qplNlTCgu5ejpW/ukPcojkDH3AuiMjg=
X-Received: by 2002:a50:d594:: with SMTP id v20mr40666959edi.401.1639161554067; 
 Fri, 10 Dec 2021 10:39:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxt3elsBBXmEhGluHpQxg/8kut6KO0B/mSE/g6kBEtL3HT9FSkwEdwGwuPw96N5KvBpLLV06lXdwy5O+QC1J2Q=
X-Received: by 2002:a50:d594:: with SMTP id v20mr40666889edi.401.1639161553504; 
 Fri, 10 Dec 2021 10:39:13 -0800 (PST)
MIME-Version: 1.0
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
From: David Wysochanski <dwysocha@redhat.com>
Date: Fri, 10 Dec 2021 13:38:36 -0500
Message-ID: <CALF+zOnA2U6LjDTE8m2REDTMmFVnWkcBkn0ZJQRGULPUjeQW4Q@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwysocha@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 9,
 2021 at 11:53 AM David Howells <dhowells@redhat.com>
 wrote: > > > Here's a set of patches implements a rewrite of the fscache
 driver and a > matching rewrite of the cachefiles driver, s [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvknj-0002Wb-ME
Subject: Re: [V9fs-developer] [PATCH v2 00/67] fscache, cachefiles: Rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs <linux-cifs@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-cachefs <linux-cachefs@redhat.com>,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 9, 2021 at 11:53 AM David Howells <dhowells@redhat.com> wrote:
>
>
> Here's a set of patches implements a rewrite of the fscache driver and a
> matching rewrite of the cachefiles driver, significantly simplifying the
> code compared to what's upstream, removing the complex operation scheduling
> and object state machine in favour of something much smaller and simpler.
>
> The patchset is structured such that the first few patches disable fscache
> use by the network filesystems using it, remove the cachefiles driver
> entirely and as much of the fscache driver as can be got away with without
> causing build failures in the network filesystems.  The patches after that
> recreate fscache and then cachefiles, attempting to add the pieces in a
> logical order.  Finally, the filesystems are reenabled and then the very
> last patch changes the documentation.
>
>
> WHY REWRITE?
> ============
>
> Fscache's operation scheduling API was intended to handle sequencing of
> cache operations, which were all required (where possible) to run
> asynchronously in parallel with the operations being done by the network
> filesystem, whilst allowing the cache to be brought online and offline and
> to interrupt service for invalidation.
>
> With the advent of the tmpfile capacity in the VFS, however, an opportunity
> arises to do invalidation much more simply, without having to wait for I/O
> that's actually in progress: Cachefiles can simply create a tmpfile, cut
> over the file pointer for the backing object attached to a cookie and
> abandon the in-progress I/O, dismissing it upon completion.
>
> Future work here would involve using Omar Sandoval's vfs_link() with
> AT_LINK_REPLACE[1] to allow an extant file to be displaced by a new hard
> link from a tmpfile as currently I have to unlink the old file first.
>
> These patches can also simplify the object state handling as I/O operations
> to the cache don't all have to be brought to a stop in order to invalidate
> a file.  To that end, and with an eye on to writing a new backing cache
> model in the future, I've taken the opportunity to simplify the indexing
> structure.
>
> I've separated the index cookie concept from the file cookie concept by C
> type now.  The former is now called a "volume cookie" (struct
> fscache_volume) and there is a container of file cookies.  There are then
> just the two levels.  All the index cookie levels are collapsed into a
> single volume cookie, and this has a single printable string as a key.  For
> instance, an AFS volume would have a key of something like
> "afs,example.com,1000555", combining the filesystem name, cell name and
> volume ID.  This is freeform, but must not have '/' chars in it.
>
> I've also eliminated all pointers back from fscache into the network
> filesystem.  This required the duplication of a little bit of data in the
> cookie (cookie key, coherency data and file size), but it's not actually
> that much.  This gets rid of problems with making sure we keep netfs data
> structures around so that the cache can access them.
>
> These patches mean that most of the code that was in the drivers before is
> simply gone and those drivers are now almost entirely new code.  That being
> the case, there doesn't seem any particular reason to try and maintain
> bisectability across it.  Further, there has to be a point in the middle
> where things are cut over as there's a single point everything has to go
> through (ie. /dev/cachefiles) and it can't be in use by two drivers at
> once.
>
>
> ISSUES YET OUTSTANDING
> ======================
>
> There are some issues still outstanding, unaddressed by this patchset, that
> will need fixing in future patchsets, but that don't stop this series from
> being usable:
>
>  (1) The cachefiles driver needs to stop using the backing filesystem's
>      metadata to store information about what parts of the cache are
>      populated.  This is not reliable with modern extent-based filesystems.
>
>      Fixing this is deferred to a separate patchset as it involves
>      negotiation with the network filesystem and the VM as to how much data
>      to download to fulfil a read - which brings me on to (2)...
>
>  (2) NFS and CIFS do not take account of how the cache would like I/O to be
>      structured to meet its granularity requirements.  Previously, the
>      cache used page granularity, which was fine as the network filesystems
>      also dealt in page granularity, and the backing filesystem (ext4, xfs
>      or whatever) did whatever it did out of sight.  However, we now have
>      folios to deal with and the cache will now have to store its own
>      metadata to track its contents.
>
>      The change I'm looking at making for cachefiles is to store content
>      bitmaps in one or more xattrs and making a bit in the map correspond
>      to something like a 256KiB block.  However, the size of an xattr and
>      the fact that they have to be read/updated in one go means that I'm
>      looking at covering 1GiB of data per 512-byte map and storing each map
>      in an xattr.  Cachefiles has the potential to grow into a fully
>      fledged filesystem of its very own if I'm not careful.
>
>      However, I'm also looking at changing things even more radically and
>      going to a different model of how the cache is arranged and managed -
>      one that's more akin to the way, say, openafs does things - which
>      brings me on to (3)...
>
>  (3) The way cachefilesd does culling is very inefficient for large caches
>      and it would be better to move it into the kernel if I can as
>      cachefilesd has to keep asking the kernel if it can cull a file.
>      Changing the way the backend works would allow this to be addressed.
>
>
> BITS THAT MAY BE CONTROVERSIAL
> ==============================
>
> There are some bits I've added that may be controversial:
>
>  (1) I've provided a flag, S_KERNEL_FILE, that cachefiles uses to check if
>      a files is already being used by some other kernel service (e.g. a
>      duplicate cachefiles cache in the same directory) and reject it if it
>      is.  This isn't entirely necessary, but it helps prevent accidental
>      data corruption.
>
>      I don't want to use S_SWAPFILE as that has other effects, but quite
>      possibly swapon() should set S_KERNEL_FILE too.
>
>      Note that it doesn't prevent userspace from interfering, though
>      perhaps it should.  (I have made it prevent a marked directory from
>      being rmdir-able).
>
>  (2) Cachefiles wants to keep the backing file for a cookie open whilst we
>      might need to write to it from network filesystem writeback.  The
>      problem is that the network filesystem unuses its cookie when its file
>      is closed, and so we have nothing pinning the cachefiles file open and
>      it will get closed automatically after a short time to avoid
>      EMFILE/ENFILE problems.
>
>      Reopening the cache file, however, is a problem if this is being done
>      due to writeback triggered by exit().  Some filesystems will oops if
>      we try to open a file in that context because they want to access
>      current->fs or suchlike.
>
>      To get around this, I added the following:
>
>      (A) An inode flag, I_PINNING_FSCACHE_WB, to be set on a network
>          filesystem inode to indicate that we have a usage count on the
>          cookie caching that inode.
>
>      (B) A flag in struct writeback_control, unpinned_fscache_wb, that is
>          set when __writeback_single_inode() clears the last dirty page
>          from i_pages - at which point it clears I_PINNING_FSCACHE_WB and
>          sets this flag.
>
>          This has to be done here so that clearing I_PINNING_FSCACHE_WB can
>          be done atomically with the check of PAGECACHE_TAG_DIRTY that
>          clears I_DIRTY_PAGES.
>
>      (C) A function, fscache_set_page_dirty(), which if it is not set, sets
>          I_PINNING_FSCACHE_WB and calls fscache_use_cookie() to pin the
>          cache resources.
>
>      (D) A function, fscache_unpin_writeback(), to be called by
>          ->write_inode() to unuse the cookie.
>
>      (E) A function, fscache_clear_inode_writeback(), to be called when the
>          inode is evicted, before clear_inode() is called.  This cleans up
>          any lingering I_PINNING_FSCACHE_WB.
>
>      The network filesystem can then use these tools to make sure that
>      fscache_write_to_cache() can write locally modified data to the cache
>      as well as to the server.
>
>      For the future, I'm working on write helpers for netfs lib that should
>      allow this facility to be removed by keeping track of the dirty
>      regions separately - but that's incomplete at the moment and is also
>      going to be affected by folios, one way or another, since it deals
>      with pages.
>
>
> These patches can be found also on:
>
>         https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-rewrite
>
> David
>
>
> Changes
> =======
> ver #2:
>  - Fix an unused-var warning due to CONFIG_9P_FSCACHE=n.
>  - Use gfpflags_allow_blocking() rather than using flag directly.
>  - Fixed some error logging in a couple of cachefiles functions.
>  - Fixed an error check in the fscache volume allocation.
>  - Need to unmark an inode we've moved to the graveyard before unlocking.
>  - Upgraded to -rc4 to allow for upstream changes to cifs.
>  - Should only change to inval state if can get access to cache.
>  - Don't hold n_accesses elevated whilst cache is bound to a cookie, but
>    rather add a flag that prevents the state machine from being queued when
>    n_accesses reaches 0.
>  - Remove the unused cookie pointer field from the fscache_acquire
>    tracepoint.
>  - Added missing transition to LRU_DISCARDING state.
>  - Added two ceph patches from Jeff Layton[2].
>  - Remove NFS_INO_FSCACHE as it's no longer used.
>  - In NFS, need to unuse a cookie on file-release, not inode-clear.
>  - Filled in the NFS cache I/O routines, borrowing from the previously posted
>    fallback I/O code[3].
>
>
> Link: https://lore.kernel.org/r/cover.1580251857.git.osandov@fb.com/ [1]
> Link: https://lore.kernel.org/r/20211207134451.66296-1-jlayton@kernel.org/ [2]
> Link: https://lore.kernel.org/r/163189108292.2509237.12615909591150927232.stgit@warthog.procyon.org.uk/ [3]
>
> References
> ==========
>
> These patches have been published for review before, firstly as part of a
> larger set:
>
> Link: https://lore.kernel.org/r/158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk/
>
> Link: https://lore.kernel.org/r/159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk/
>
> Link: https://lore.kernel.org/r/160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk/
>
> Then as a cut-down set:
>
> Link: https://lore.kernel.org/r/161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk/ # v3
> Link: https://lore.kernel.org/r/161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk/ # v4
> Link: https://lore.kernel.org/r/161653784755.2770958.11820491619308713741.stgit@warthog.procyon.org.uk/ # v5
>
> I split out a set to just restructure the I/O, which got merged back in to
> this one:
>
> Link: https://lore.kernel.org/r/163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/163189104510.2509237.10805032055807259087.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk/ # v3
> Link: https://lore.kernel.org/r/163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk/ # v4
>
> ... and a larger set to do the conversion, also merged back into this one:
>
> Link: https://lore.kernel.org/r/163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk/ # v2
>
> Older versions of this one:
>
> Link: https://lore.kernel.org/r/163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk/ # v1
>
> Proposals/information about the design have been published here:
>
> Link: https://lore.kernel.org/r/24942.1573667720@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/2758811.1610621106@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/1441311.1598547738@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/160655.1611012999@warthog.procyon.org.uk/
>
> And requests for information:
>
> Link: https://lore.kernel.org/r/3326.1579019665@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/4467.1579020509@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/3577430.1579705075@warthog.procyon.org.uk/
>
> I've posted partial patches to try and help 9p and cifs along:
>
> Link: https://lore.kernel.org/r/1514086.1605697347@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/1794123.1605713481@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/241017.1612263863@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/270998.1612265397@warthog.procyon.org.uk/
>
> ---
> Dave Wysochanski (1):
>       nfs: Convert to new fscache volume/cookie API
>
> David Howells (64):
>       fscache, cachefiles: Disable configuration
>       cachefiles: Delete the cachefiles driver pending rewrite
>       fscache: Remove the contents of the fscache driver, pending rewrite
>       netfs: Display the netfs inode number in the netfs_read tracepoint
>       netfs: Pass a flag to ->prepare_write() to say if there's no alloc'd space
>       fscache: Introduce new driver
>       fscache: Implement a hash function
>       fscache: Implement cache registration
>       fscache: Implement volume registration
>       fscache: Implement cookie registration
>       fscache: Implement cache-level access helpers
>       fscache: Implement volume-level access helpers
>       fscache: Implement cookie-level access helpers
>       fscache: Implement functions add/remove a cache
>       fscache: Provide and use cache methods to lookup/create/free a volume
>       fscache: Add a function for a cache backend to note an I/O error
>       fscache: Implement simple cookie state machine
>       fscache: Implement cookie user counting and resource pinning
>       fscache: Implement cookie invalidation
>       fscache: Provide a means to begin an operation
>       fscache: Count data storage objects in a cache
>       fscache: Provide read/write stat counters for the cache
>       fscache: Provide a function to let the netfs update its coherency data
>       netfs: Pass more information on how to deal with a hole in the cache
>       fscache: Implement raw I/O interface
>       fscache: Implement higher-level write I/O interface
>       vfs, fscache: Implement pinning of cache usage for writeback
>       fscache: Provide a function to note the release of a page
>       fscache: Provide a function to resize a cookie
>       cachefiles: Introduce rewritten driver
>       cachefiles: Define structs
>       cachefiles: Add some error injection support
>       cachefiles: Add a couple of tracepoints for logging errors
>       cachefiles: Add cache error reporting macro
>       cachefiles: Add security derivation
>       cachefiles: Register a miscdev and parse commands over it
>       cachefiles: Provide a function to check how much space there is
>       vfs, cachefiles: Mark a backing file in use with an inode flag
>       cachefiles: Implement a function to get/create a directory in the cache
>       cachefiles: Implement cache registration and withdrawal
>       cachefiles: Implement volume support
>       cachefiles: Add tracepoints for calls to the VFS
>       cachefiles: Implement object lifecycle funcs
>       cachefiles: Implement key to filename encoding
>       cachefiles: Implement metadata/coherency data storage in xattrs
>       cachefiles: Mark a backing file in use with an inode flag
>       cachefiles: Implement culling daemon commands
>       cachefiles: Implement backing file wrangling
>       cachefiles: Implement begin and end I/O operation
>       cachefiles: Implement cookie resize for truncate
>       cachefiles: Implement the I/O routines
>       cachefiles: Allow cachefiles to actually function
>       fscache, cachefiles: Display stats of no-space events
>       fscache, cachefiles: Display stat of culling events
>       afs: Handle len being extending over page end in write_begin/write_end
>       afs: Fix afs_write_end() to handle len > page size
>       afs: Convert afs to use the new fscache API
>       afs: Copy local writes to the cache when writing to the server
>       afs: Skip truncation on the server of data we haven't written yet
>       9p: Use fscache indexing rewrite and reenable caching
>       9p: Copy local writes to the cache when writing to the server
>       nfs: Implement cache I/O by accessing the cache directly
>       cifs: Support fscache indexing rewrite (untested)
>       fscache: Rewrite documentation
>
> Jeff Layton (2):
>       ceph: conversion to new fscache API
>       ceph: add fscache writeback support
>
>
>  .../filesystems/caching/backend-api.rst       |  847 ++++------
>  .../filesystems/caching/cachefiles.rst        |    6 +-
>  Documentation/filesystems/caching/fscache.rst |  525 ++----
>  Documentation/filesystems/caching/index.rst   |    4 +-
>  .../filesystems/caching/netfs-api.rst         | 1083 ++++---------
>  Documentation/filesystems/caching/object.rst  |  313 ----
>  .../filesystems/caching/operations.rst        |  210 ---
>  Documentation/filesystems/netfs_library.rst   |   16 +-
>  fs/9p/Kconfig                                 |    2 +-
>  fs/9p/cache.c                                 |  193 +--
>  fs/9p/cache.h                                 |   25 +-
>  fs/9p/v9fs.c                                  |   17 +-
>  fs/9p/v9fs.h                                  |   13 +-
>  fs/9p/vfs_addr.c                              |   54 +-
>  fs/9p/vfs_dir.c                               |   11 +
>  fs/9p/vfs_file.c                              |    3 +-
>  fs/9p/vfs_inode.c                             |   24 +-
>  fs/9p/vfs_inode_dotl.c                        |    3 +-
>  fs/9p/vfs_super.c                             |    3 +
>  fs/afs/Kconfig                                |    2 +-
>  fs/afs/Makefile                               |    3 -
>  fs/afs/cache.c                                |   68 -
>  fs/afs/cell.c                                 |   12 -
>  fs/afs/file.c                                 |   37 +-
>  fs/afs/inode.c                                |  101 +-
>  fs/afs/internal.h                             |   37 +-
>  fs/afs/main.c                                 |   14 -
>  fs/afs/super.c                                |    1 +
>  fs/afs/volume.c                               |   29 +-
>  fs/afs/write.c                                |  100 +-
>  fs/cachefiles/Kconfig                         |    7 +
>  fs/cachefiles/Makefile                        |    6 +-
>  fs/cachefiles/bind.c                          |  278 ----
>  fs/cachefiles/cache.c                         |  378 +++++
>  fs/cachefiles/daemon.c                        |  180 +--
>  fs/cachefiles/error_inject.c                  |   46 +
>  fs/cachefiles/interface.c                     |  747 ++++-----
>  fs/cachefiles/internal.h                      |  265 ++--
>  fs/cachefiles/io.c                            |  330 ++--
>  fs/cachefiles/key.c                           |  201 ++-
>  fs/cachefiles/main.c                          |   22 +-
>  fs/cachefiles/namei.c                         | 1221 ++++++--------
>  fs/cachefiles/rdwr.c                          |  972 ------------
>  fs/cachefiles/security.c                      |    2 +-
>  fs/cachefiles/volume.c                        |  118 ++
>  fs/cachefiles/xattr.c                         |  369 ++---
>  fs/ceph/Kconfig                               |    2 +-
>  fs/ceph/addr.c                                |  101 +-
>  fs/ceph/cache.c                               |  218 +--
>  fs/ceph/cache.h                               |   97 +-
>  fs/ceph/caps.c                                |    3 +-
>  fs/ceph/file.c                                |   13 +-
>  fs/ceph/inode.c                               |   22 +-
>  fs/ceph/super.c                               |   10 +-
>  fs/ceph/super.h                               |    3 +-
>  fs/cifs/Kconfig                               |    2 +-
>  fs/cifs/Makefile                              |    2 +-
>  fs/cifs/cache.c                               |  105 --
>  fs/cifs/cifsfs.c                              |   11 +-
>  fs/cifs/cifsglob.h                            |    5 +-
>  fs/cifs/connect.c                             |   12 -
>  fs/cifs/file.c                                |   64 +-
>  fs/cifs/fscache.c                             |  319 +---
>  fs/cifs/fscache.h                             |  106 +-
>  fs/cifs/inode.c                               |   36 +-
>  fs/fs-writeback.c                             |    8 +
>  fs/fscache/Makefile                           |    6 +-
>  fs/fscache/cache.c                            |  618 ++++----
>  fs/fscache/cookie.c                           | 1402 +++++++++--------
>  fs/fscache/fsdef.c                            |   98 --
>  fs/fscache/internal.h                         |  315 +---
>  fs/fscache/io.c                               |  376 ++++-
>  fs/fscache/main.c                             |  136 +-
>  fs/fscache/netfs.c                            |   74 -
>  fs/fscache/object.c                           | 1125 -------------
>  fs/fscache/operation.c                        |  633 --------
>  fs/fscache/page.c                             | 1242 ---------------
>  fs/fscache/proc.c                             |   45 +-
>  fs/fscache/stats.c                            |  293 +---
>  fs/fscache/volume.c                           |  508 ++++++
>  fs/namei.c                                    |    3 +-
>  fs/netfs/read_helper.c                        |   10 +-
>  fs/nfs/Kconfig                                |    2 +-
>  fs/nfs/Makefile                               |    2 +-
>  fs/nfs/client.c                               |    4 -
>  fs/nfs/direct.c                               |    2 +
>  fs/nfs/file.c                                 |   13 +-
>  fs/nfs/fscache-index.c                        |  140 --
>  fs/nfs/fscache.c                              |  490 ++----
>  fs/nfs/fscache.h                              |  182 +--
>  fs/nfs/inode.c                                |   11 +-
>  fs/nfs/nfstrace.h                             |    1 -
>  fs/nfs/read.c                                 |   25 +-
>  fs/nfs/super.c                                |   28 +-
>  fs/nfs/write.c                                |    8 +-
>  include/linux/fs.h                            |    4 +
>  include/linux/fscache-cache.h                 |  614 ++------
>  include/linux/fscache.h                       | 1015 +++++-------
>  include/linux/netfs.h                         |   15 +-
>  include/linux/nfs_fs.h                        |    1 -
>  include/linux/nfs_fs_sb.h                     |    9 +-
>  include/linux/writeback.h                     |    1 +
>  include/trace/events/cachefiles.h             |  487 ++++--
>  include/trace/events/fscache.h                |  626 ++++----
>  include/trace/events/netfs.h                  |    5 +-
>  105 files changed, 7121 insertions(+), 13485 deletions(-)
>  delete mode 100644 Documentation/filesystems/caching/object.rst
>  delete mode 100644 Documentation/filesystems/caching/operations.rst
>  delete mode 100644 fs/afs/cache.c
>  delete mode 100644 fs/cachefiles/bind.c
>  create mode 100644 fs/cachefiles/cache.c
>  create mode 100644 fs/cachefiles/error_inject.c
>  delete mode 100644 fs/cachefiles/rdwr.c
>  create mode 100644 fs/cachefiles/volume.c
>  delete mode 100644 fs/cifs/cache.c
>  delete mode 100644 fs/fscache/fsdef.c
>  delete mode 100644 fs/fscache/netfs.c
>  delete mode 100644 fs/fscache/object.c
>  delete mode 100644 fs/fscache/operation.c
>  delete mode 100644 fs/fscache/page.c
>  create mode 100644 fs/fscache/volume.c
>  delete mode 100644 fs/nfs/fscache-index.c
>
>

Testing this with NFS and fscache enabled.
- fscache unit tests: PASS
- xfstests NFSv4.2 (rhel8 server): PASS
- xfstests NFSv4.1 (netapp server): PASS
- xfstests NFSv4.0 (netapp server): PASS
- xfstests NFSv3 (rhel8 server): FAIL (see below use after free w/kasan)

NOTE: I had one patch that converted nfs fscache dfprintk's dfprintks
to trace events on top of your series, but tracepoints were not
enabled, and I don't think my patch was a contributor to this kasan
use-after-free.  Unfortunately after I rebuilt it, I did not reproduce
the problem so far.  I wonder if there is a race with
nfs_fscache_open_file(), fscache_use_cookie() and then
fscache_invalidate(), but I've not read through this enough to map out
a possible theory.  Maybe you can spot it faster than me.


[  405.242590] run fstests generic/011 at 2021-12-10 11:44:26^M
[  432.920087] ==================================================================^M
[  432.921382] BUG: KASAN: use-after-free in
fscache_unhash_cookie+0x9e/0x160 [fscache]^M
[  432.922617] Write of size 8 at addr ffff88812c185200 by task
kworker/u16:179/8137^M
[  432.923795] ^M
[  432.924059] CPU: 0 PID: 8137 Comm: kworker/u16:179 Kdump: loaded
Not tainted 5.16.0-rc4-fscache-rewrite-trace-kasan+ #13^M
[  432.925737] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009),
BIOS 1.14.0-4.fc34 04/01/2014^M
[  432.927057] Workqueue: fscache fscache_cookie_worker [fscache]^M
[  432.928035] Call Trace:^M
[  432.928467]  <TASK>^M
[  432.928844]  dump_stack_lvl+0x48/0x5e^M
[  432.929447]  print_address_description.constprop.0+0x1f/0x140^M
[  432.930363]  ? fscache_unhash_cookie+0x9e/0x160 [fscache]^M
[  432.931240]  kasan_report.cold+0x7f/0x11b^M
[  432.931891]  ? fscache_unhash_cookie+0x9e/0x160 [fscache]^M
[  432.932773]  fscache_unhash_cookie+0x9e/0x160 [fscache]^M
[  432.933626]  fscache_cookie_worker+0x1f0/0xad0 [fscache]^M
[  432.934477]  ? _raw_spin_unlock_bh+0x20/0x20^M
[  432.935180]  ? __list_add_valid+0x2f/0x60^M
[  432.935820]  process_one_work+0x3d2/0x710^M
[  432.936702]  worker_thread+0x2d2/0x6e0^M
[  432.937475]  ? process_one_work+0x710/0x710^M
[  432.938177]  kthread+0x223/0x260^M
[  432.938711]  ? set_kthread_struct+0x80/0x80^M
[  432.939395]  ret_from_fork+0x22/0x30^M
[  432.940010]  </TASK>^M
[  432.940388] ^M
[  432.940672] Allocated by task 9139:^M
[  432.941253]  kasan_save_stack+0x1e/0x50^M
[  432.941888]  __kasan_slab_alloc+0x66/0x80^M
[  432.942553]  kmem_cache_alloc+0x147/0x2c0^M
[  432.943233]  __fscache_acquire_cookie+0xa1/0x9b0 [fscache]^M
[  432.944125]  nfs_fscache_init_inode+0x2dc/0x340 [nfs]^M
[  432.945038]  nfs_fhget+0x757/0xcd0 [nfs]^M
[  432.945745]  nfs_add_or_obtain+0x163/0x190 [nfs]^M
[  432.946563]  nfs3_proc_create+0x1e0/0x4f0 [nfsv3]^M
[  432.947324]  nfs_create+0x106/0x270 [nfs]^M
[  432.948054]  path_openat+0x14ec/0x1810^M
[  432.948679]  do_filp_open+0x131/0x230^M
[  432.949281]  do_sys_openat2+0xe4/0x240^M
[  432.949903]  __x64_sys_creat+0x99/0xb0^M
[  432.949903]  __x64_sys_creat+0x99/0xb0^M
[  432.950520]  do_syscall_64+0x3b/0x90^M
[  432.951113]  entry_SYSCALL_64_after_hwframe+0x44/0xae^M
[  432.951932] ^M
[  432.952207] Freed by task 8191:^M
[  432.952727]  kasan_save_stack+0x1e/0x50^M
[  432.953369]  kasan_set_track+0x21/0x30^M
[  432.953969]  kasan_set_free_info+0x20/0x30^M
[  432.954626]  __kasan_slab_free+0xec/0x120^M
[  432.955288]  slab_free_freelist_hook+0x66/0x130^M
[  432.956002]  kmem_cache_free+0x108/0x400^M
[  432.956640]  fscache_put_cookie+0x10f/0x150 [fscache]^M
[  432.957454]  process_one_work+0x3d2/0x710^M
[  432.958111]  worker_thread+0x2d2/0x6e0^M
[  432.958761]  kthread+0x223/0x260^M
[  432.959298]  ret_from_fork+0x22/0x30^M
[  432.959884] ^M
[  432.960151] Last potentially related work creation:^M
[  432.960914]  kasan_save_stack+0x1e/0x50^M
[  432.961531]  __kasan_record_aux_stack+0xae/0xc0^M
[  432.962255]  insert_work+0x34/0x190^M
[  432.962825]  __queue_work+0x336/0x680^M
[  432.963412]  queue_work_on+0x60/0x70^M
[  432.963983]  __fscache_withdraw_cookie+0xab/0x160 [fscache]^M
[  432.964860]  fscache_cookie_lru_worker+0x227/0x2f0 [fscache]^M
[  432.965746]  process_one_work+0x3d2/0x710^M
[  432.966394]  worker_thread+0x2d2/0x6e0^M
[  432.966982]  kthread+0x223/0x260^M
[  432.967515]  ret_from_fork+0x22/0x30^M
[  432.968088] ^M
[  432.968354] Second to last potentially related work creation:^M
[  432.969236]  kasan_save_stack+0x1e/0x50^M
[  432.969843]  __kasan_record_aux_stack+0xae/0xc0^M
[  432.970554]  insert_work+0x34/0x190^M
[  432.971109]  __queue_work+0x336/0x680^M
[  432.971688]  queue_work_on+0x60/0x70^M
[  432.972252]  __fscache_use_cookie+0x25b/0x370 [fscache]^M
[  432.973083]  nfs_fscache_open_file+0xb0/0x230 [nfs]^M
[  432.973918]  nfs_open+0x7a/0xc0 [nfs]^M
[  432.974592]  do_dentry_open+0x28c/0x690^M
[  432.975203]  path_openat+0x1139/0x1810^M
[  432.975796]  do_filp_open+0x131/0x230^M
[  432.976374]  do_sys_openat2+0xe4/0x240^M
[  432.976978]  __x64_sys_creat+0x99/0xb0^M
[  432.977573]  do_syscall_64+0x3b/0x90^M
[  432.978147]  entry_SYSCALL_64_after_hwframe+0x44/0xae^M
[  432.978927] ^M
[  432.979191] The buggy address belongs to the object at ffff88812c1851d0^M
[  432.979191]  which belongs to the cache fscache_cookie_jar of size 176^M
[  432.981138] The buggy address is located 48 bytes inside of^M
[  432.981138]  176-byte region [ffff88812c1851d0, ffff88812c185280)^M
[  432.982859] The buggy address belongs to the page:^M
[  432.983604] page:00000000200db521 refcount:1 mapcount:0
mapping:0000000000000000 index:0xffff88812c1852c0 pfn:0x12c184^M
[  432.985230] head:00000000200db521 order:1 compound_mapcount:0^M
[  432.986102] flags:
0x17ffffc0010200(slab|head|node=0|zone=2|lastcpupid=0x1fffff)^M
[  432.987245] raw: 0017ffffc0010200 ffffea00042d6f00 dead000000000004
ffff888110b8d180^M
[  432.988413] raw: ffff88812c1852c0 0000000080220020 00000001ffffffff
0000000000000000^M
[  432.989589] page dumped because: kasan: bad access detected^M
[  432.990470] ^M
[  432.990751] Memory state around the buggy address:^M
[  432.991487]  ffff88812c185100: fb fb fb fb fb fb fb fb fb fb fb fb
fb fb fb fb^M
[  432.992586]  ffff88812c185180: fb fb fc fc fc fc fc fc fc fc fa fb
fb fb fb fb^M
[  432.993696] >ffff88812c185200: fb fb fb fb fb fb fb fb fb fb fb fb
fb fb fb fb^M
[  432.994803]                    ^^M
[  432.995330]  ffff88812c185280: fc fc fc fc fc fc fc fc fb fb fb fb
fb fb fb fb^M
[  432.996439]  ffff88812c185300: fb fb fb fb fb fb fb fb fb fb fb fb
fb fb fc fc^M
[  432.997536] ==================================================================^M
[  432.998622] Disabling lock debugging due to kernel taint^M
[  452.411206] run fstests generic/012 at 2021-12-10 11:45:14^M



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
