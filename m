Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6568938387D
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 May 2021 17:56:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lifbk-0002jD-UK; Mon, 17 May 2021 15:56:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lhenriques@suse.de>) id 1lifbj-0002ir-7k
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 15:56:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:
 Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U+HTIqJtyQj8YDrcG+aLKMROcae8ycUQgIfg0hXbkrQ=; b=krLG4NDSsrxBLEn4KvQeyDVeFU
 cjMzRU2kXuVB4VjQlI3ZteKKetGewDf9PjkXCLXiMUhbz4om8/4XTH6sijjo01x8XLbyqyfLdzcdr
 ykzH+ojJjBR03UJNyJ6ONaaEGVcvvtj0fXSwYX84nMviGlPKsozes3cbRUEqELyDVLj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U+HTIqJtyQj8YDrcG+aLKMROcae8ycUQgIfg0hXbkrQ=; b=HTz2wH5gdbj3jpm0kqLiI8cWP3
 aKrc0x+U3P+kOHHyU8/QJ3URQpwGjfqBWJuGufx5YtKuVU4jvbA1PU36SlNto78a4q1TBu8Mwuz2S
 HtOa7Eiv0X7Sjkh7zOKA50m79ZxIzZigVNYQ6RjxjD52yN5KRUZ3FtLVhRknKQu4FhgA=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lifbc-00Bczz-0h
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 15:56:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id AFD2AAE93;
 Mon, 17 May 2021 15:56:25 +0000 (UTC)
Received: from localhost (brahms [local])
 by brahms (OpenSMTPD) with ESMTPA id 68c11d86;
 Mon, 17 May 2021 15:56:24 +0000 (UTC)
From: Luis Henriques <lhenriques@suse.de>
To: Dominique Martinet <asmadeus@codewreck.org>
References: <YJvb9S8uxV2X45Cu@zeniv-ca.linux.org.uk>
 <YJvJWj/CEyEUWeIu@codewreck.org> <87tun8z2nd.fsf@suse.de>
 <87czu45gcs.fsf@suse.de> <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk> <87fsysyxh9.fsf@suse.de>
 <2891612.1620824231@warthog.procyon.org.uk>
 <2919958.1620828730@warthog.procyon.org.uk> <87bl9dwb1r.fsf@suse.de>
 <YJ7oxGY/eosPvCiA@codewreck.org>
Date: Mon, 17 May 2021 16:56:24 +0100
In-Reply-To: <YJ7oxGY/eosPvCiA@codewreck.org> (Dominique Martinet's message of
 "Sat, 15 May 2021 06:16:52 +0900")
Message-ID: <87eee5wdzr.fsf@suse.de>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lifbc-00Bczz-0h
Subject: Re: [V9fs-developer] What sort of inode state does ->evict_inode()
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
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 David Howells <dhowells@redhat.com>, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> writes:

> Hi Aneesh,
>
> I'm going to rely on your memory here... A long, long time ago (2011!),
> you've authored this commit:
> -------
> commit ed80fcfac2565fa866d93ba14f0e75de17a8223e
> Author: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
> Date:   Wed Jul 6 16:32:31 2011 +0530
>
>     fs/9p: Always ask new inode in create
>     
>     This make sure we don't end up reusing the unlinked inode object.
>     The ideal way is to use inode i_generation. But i_generation is
>     not available in userspace always.
>     
>     Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
>     Signed-off-by: Eric Van Hensbergen <ericvh@gmail.com>
> -------
>
> Do you happen to remember or know *why* you wanted to make sure we don't
> reuse the unlinked inode object?
>
> I'm asking because that's causing problems with (at least) fscache
> cookie, iget5_locked() gets us a new inode in v9fs_qid_iget_dotl()
> and tries to get a new cookie before the evict has happened and
> relinquished the former inode's.
> There's also problems with coherency in sight -- evict is also in charge
> of flushing all dirty pages, so the new inode can in theory issue IO and
> read from server data which has been written by another process on the
> same client and while 9p isn't known for coherency with multiple clients
> it's a different story with a single one! (didn't reproduce that one)
>
> Anyway, it'd be great to know why you did that so we can try another
> workaround.
> In theory I'd love to have qemu and others export fsid + a fhandle from
> name_to_handle_at that includes i_generation and full inode number in
> the qid path, but we're limited by the 64bits of the protocol so it's a
> tough one... In practice I don't see generation being used all that much
> by filesystems to reuse inode numbers though, so wondering which is the
> most problematic?
>
>
>
> You can find the rest of the thread here if you're not subscribed to
> v9fs-developer or linux-fsdevel:
> https://lkml.kernel.org/r/87czu45gcs.fsf@suse.de
>
>
>
> Luis Henriques wrote on Fri, May 14, 2021 at 05:10:56PM +0100:
>> So, from our last chat on IRC, we have the following happening:
>> 
>> v9fs_vfs_atomic_open_dotl
>>   v9fs_vfs_lookup
>>     v9fs_get_new_inode_from_fid
>>       v9fs_inode_from_fid_dotl
>>         v9fs_qid_iget_dotl
>> 
>> At this point, iget5_locked() gets called with the test function set to
>> v9fs_test_new_inode_dotl(), which *always* returns 0.  It's still not
>> clear to me why commit ed80fcfac256 ("fs/9p: Always ask new inode in
>> create") has introduced this behavior but even if that's not correct, we
>> still have a race regarding cookies handling, right?
>> 
>> I'm still seeing:
>> 
>> CPU0                     CPU1
>> v9fs_drop_inode          ...
>> v9fs_evict_inode         /* atomic_open */
>>                          v9fs_cache_inode_get_cookie <= COLLISION
>> fscache_relinquish
>
> Do you mean you still have that problem after ed80fcfac256 has been
> reverted?

No, I couldn't reproduce the issue after changing v9fs_qid_iget_dotl() to
never use v9fs_test_new_inode_dotl in the iget5_locked() test.  (So,
technically I didn't reverted that commit but the effect should be the
same.)

>> So, the question remains: would it be possible to do the relinquish
>> earlier (->drop_inode)?  Or is 9p really shooting itself in the foot by
>> forcing iget5_locked() to always create a new inode here?
>
> Ugh that is the kind of things I don't want to experiment with...
> ->drop_inode() seems to be called with i_lock taken and meant to be just
> a test, not something that can wait, but from what I'm reading it might
> be possible to set I_WILL_FREE, drop the lock, do our stuff and reaquire
> the lock at the end.. perhaps? It looks like inode lookup will just loop
> around on ilookup5_nowait while I_WILL_FREE is set so new inodes can't
> be taken at this point, it's a de-facto spin lock with iget5_locked and
> friends.
> I have no idea what will break though, I'd really rather leave it to the
> vfs and have 9p do the right thing with inode recycling.

Right, the fscache code would definitely need to be changed in this case.
Which makes me wonder if the following would be possible/acceptable:

Add a function fscache_reliquish_cookie_begin() that would set
FSCACHE_COOKIE_RELINQUISHING (currently unused AFAICS) in the cookie
flag.  This would allow ->drop_inode() to signal that a cookie is about to
be relinquished.

Then, fscache_hash_cookie() could do something like:

 	hlist_bl_lock(h);
 	hlist_bl_for_each_entry(cursor, p, h, hash_link) {
-		if (fscache_compare_cookie(candidate, cursor) == 0)
+		if ((fscache_compare_cookie(candidate, cursor) == 0) &&
+		    (!test_bit(FSCACHE_COOKIE_RELINQUISHING, &cursor->flags)))
 			goto collision;
 	}

Yeah, I'm sure the logic in fscache_acquire_cookie() would need to be
reworked and the old cookie would need to be removed from the list so that
the new one could be inserted.  And probably other places in the fscache
code would need to take the _RELINQUISHING flag into account.  But I guess
something like this could fix the race (although I'm not familiar with the
fscache code and this idea may be utterly wrong).

Cheers,
-- 
Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
