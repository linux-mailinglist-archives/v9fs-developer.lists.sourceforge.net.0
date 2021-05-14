Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13362380DC8
	for <lists+v9fs-developer@lfdr.de>; Fri, 14 May 2021 18:09:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lhaNY-0002Jr-4m; Fri, 14 May 2021 16:09:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lhenriques@suse.de>) id 1lhaNW-0002Jh-JQ
 for v9fs-developer@lists.sourceforge.net; Fri, 14 May 2021 16:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:
 Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ee7gE0kI1I+tyaGxXQ41gwq+beXMSuno91XmWXp21dQ=; b=OJwdBJ8bgPk/P88v1SR6Bgw5eY
 X9HIWoCWt1od8jt549ycSjSUpBrnBrvPYkHpRSErJe1HLocxpx+GwyF1kk2MTRfucEVbVjPCI5P/S
 uGU+/KMf0pNihvqcqfafCWkdsB/BLdv69byO6DbHPminPdA1+SfISDZ4D5NueFdzmCFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ee7gE0kI1I+tyaGxXQ41gwq+beXMSuno91XmWXp21dQ=; b=P2c00ufSKW9Cpf6ueEIB1zzfW8
 yF/Sv+coClFvflf8Tz/I5LE/rMNHsEcLCraqnPx79YdZ82D4sy8iIDp4IDi/E5Z7TiKRInPi1qeb1
 vts4Lv9Gb3no3ZcKvZricbpj8rc6WkQ+YxsPQnSzCrmG/EW8C2nyhxpVoawO9QB8hqGE=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lhaNS-000450-MN
 for v9fs-developer@lists.sourceforge.net; Fri, 14 May 2021 16:09:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 2830FB123;
 Fri, 14 May 2021 16:09:21 +0000 (UTC)
Received: from localhost (brahms [local])
 by brahms (OpenSMTPD) with ESMTPA id 9cb50cc6;
 Fri, 14 May 2021 16:10:56 +0000 (UTC)
From: Luis Henriques <lhenriques@suse.de>
To: David Howells <dhowells@redhat.com>
References: <YJvb9S8uxV2X45Cu@zeniv-ca.linux.org.uk>
 <YJvJWj/CEyEUWeIu@codewreck.org> <87tun8z2nd.fsf@suse.de>
 <87czu45gcs.fsf@suse.de> <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk> <87fsysyxh9.fsf@suse.de>
 <2891612.1620824231@warthog.procyon.org.uk>
 <2919958.1620828730@warthog.procyon.org.uk>
Date: Fri, 14 May 2021 17:10:56 +0100
In-Reply-To: <2919958.1620828730@warthog.procyon.org.uk> (David Howells's
 message of "Wed, 12 May 2021 15:12:10 +0100")
Message-ID: <87bl9dwb1r.fsf@suse.de>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lhaNS-000450-MN
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
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> writes:

> Al Viro <viro@zeniv.linux.org.uk> wrote:
>
>> > We're seeing cases where fscache is reporting cookie collisions that appears
>> > to be due to ->evict_inode() running parallel with a new inode for the same
>> > filesystem object getting set up.
>> 
>> Huh?  Details, please.  What we are guaranteed is that iget{,5}_locked() et.al.
>> on the same object will either prevent the call of ->evict_inode() (if they
>> manage to grab the sucker before I_FREEING is set) or will wait until after
>> ->evict_inode() returns.
>
> See the trace from Luis in:
>
> 	https://lore.kernel.org/linux-fsdevel/87fsysyxh9.fsf@suse.de/
>
> It appears that process 20591 manages to set up a new inode that has the same
> key parameters as the one process 20585 is tearing down.
>
> 0000000097476aaa is the cookie pointer used by the old inode.
> 0000000011fa06b1 is the cookie pointer used by the new inode.
> 000000003080d900 is the cookie pointer for the parent superblock.
>
> The fscache_acquire traceline emission is caused by one of:
>
>  (*) v9fs_qid_iget() or v9fs_qid_iget_dotl() calling
>      v9fs_cache_inode_get_cookie().
>
>  (*) v9fs_file_open*(O_RDONLY) or v9fs_vfs_atomic_open*(O_RDONLY) calling
>      v9fs_cache_inode_set_cookie().
>
>  (*) v9fs_cache_inode_reset_cookie(), which appears unused.
>
> The fscache_relinquish traceline emission is caused by one of:
>
>  (*) v9fs_file_open(O_RDWR/O_WRONLY) or v9fs_vfs_atomic_open(O_RDWR/O_WRONLY)
>      calling v9fs_cache_inode_set_cookie().
>
>  (*) v9fs_evict_inode() calling v9fs_cache_inode_put_cookie().
>
>  (*) v9fs_cache_inode_reset_cookie(), which appears unused.
>
> From the backtrace in:
>
> 	https://lore.kernel.org/linux-fsdevel/87czu45gcs.fsf@suse.de/
>
> the acquisition is being triggered in v9fs_vfs_atomic_open_dotl(), so it seems
> v9fs_qid_iget_dotl() already happened - which *should* have created the
> cookie.

So, from our last chat on IRC, we have the following happening:

v9fs_vfs_atomic_open_dotl
  v9fs_vfs_lookup
    v9fs_get_new_inode_from_fid
      v9fs_inode_from_fid_dotl
        v9fs_qid_iget_dotl

At this point, iget5_locked() gets called with the test function set to
v9fs_test_new_inode_dotl(), which *always* returns 0.  It's still not
clear to me why commit ed80fcfac256 ("fs/9p: Always ask new inode in
create") has introduced this behavior but even if that's not correct, we
still have a race regarding cookies handling, right?

I'm still seeing:

CPU0                     CPU1
v9fs_drop_inode          ...
v9fs_evict_inode         /* atomic_open */
                         v9fs_cache_inode_get_cookie <= COLLISION
fscache_relinquish

So, the question remains: would it be possible to do the relinquish
earlier (->drop_inode)?  Or is 9p really shooting itself in the foot by
forcing iget5_locked() to always create a new inode here?

Cheers,
-- 
Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
