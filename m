Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C84037BF78
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 16:12:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgpbB-0008MS-Kh; Wed, 12 May 2021 14:12:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lgpbA-0008MD-CG
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 14:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KK1RK63cTihxwj29DLvKTN+9ElMIALQrC9nlHIXIqqQ=; b=We3HphWPTFWQy4NCH0U1l18AGO
 rNpc3dLxi7+PMGTK/9fiJej/yoJ+rfBWUqIXZKPabkxvMVuXnUdlxbvEKQI+WsP7EZFI2Auhb9OXG
 lKp9wR+q+Z5VKkO6vuHjxCC+SaJ4Qaltf10EokFPPGgxLoXE9LUL/CSQ+1Yjr7APFFVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KK1RK63cTihxwj29DLvKTN+9ElMIALQrC9nlHIXIqqQ=; b=mMzjVElWSDJ2ij/96hF/Znl2fm
 cc9gIQNjC8r9wVGFVK3Gq8/fqZOA6wvy1pUSmwJUp7UZlJ5FCxtKuM0SQIW0yV7kISlxBcF6TJFd2
 DwOzpPw/I3mv/L60o3O8V8wYKMW/ca+6tElq6mXgHPVPIlXElepDwuWG9ND00MR2l8b8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lgpb7-005W57-2f
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 14:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620828739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KK1RK63cTihxwj29DLvKTN+9ElMIALQrC9nlHIXIqqQ=;
 b=DqtTESZubIdWjB9jixWBJgvacHCv5bgdsZfBAl3Lnx//TMvE/oWhYf0fImW+kuyCfz3/V5
 dZg+shUc1qxWoAhXZ2ZkfGvXpjXDK1wUvI24mHzu5SwXpv56y5NJVBr+yxVgP/GWn/9XKW
 yUBejLGeev6vCdzuk6sCL5cbePa34K0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-oRiIFmxSNSeonLQjVFPA6Q-1; Wed, 12 May 2021 10:12:15 -0400
X-MC-Unique: oRiIFmxSNSeonLQjVFPA6Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1BFC800D55;
 Wed, 12 May 2021 14:12:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5522D6091A;
 Wed, 12 May 2021 14:12:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YJvb9S8uxV2X45Cu@zeniv-ca.linux.org.uk>
References: <YJvb9S8uxV2X45Cu@zeniv-ca.linux.org.uk>
 <YJvJWj/CEyEUWeIu@codewreck.org> <87tun8z2nd.fsf@suse.de>
 <87czu45gcs.fsf@suse.de> <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk> <87fsysyxh9.fsf@suse.de>
 <2891612.1620824231@warthog.procyon.org.uk>
To: Al Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <2919957.1620828730.1@warthog.procyon.org.uk>
Date: Wed, 12 May 2021 15:12:10 +0100
Message-ID: <2919958.1620828730@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: et.al]
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
X-Headers-End: 1lgpb7-005W57-2f
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
 Luis Henriques <lhenriques@suse.de>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Al Viro <viro@zeniv.linux.org.uk> wrote:

> > We're seeing cases where fscache is reporting cookie collisions that appears
> > to be due to ->evict_inode() running parallel with a new inode for the same
> > filesystem object getting set up.
> 
> Huh?  Details, please.  What we are guaranteed is that iget{,5}_locked() et.al.
> on the same object will either prevent the call of ->evict_inode() (if they
> manage to grab the sucker before I_FREEING is set) or will wait until after
> ->evict_inode() returns.

See the trace from Luis in:

	https://lore.kernel.org/linux-fsdevel/87fsysyxh9.fsf@suse.de/

It appears that process 20591 manages to set up a new inode that has the same
key parameters as the one process 20585 is tearing down.

0000000097476aaa is the cookie pointer used by the old inode.
0000000011fa06b1 is the cookie pointer used by the new inode.
000000003080d900 is the cookie pointer for the parent superblock.

The fscache_acquire traceline emission is caused by one of:

 (*) v9fs_qid_iget() or v9fs_qid_iget_dotl() calling
     v9fs_cache_inode_get_cookie().

 (*) v9fs_file_open*(O_RDONLY) or v9fs_vfs_atomic_open*(O_RDONLY) calling
     v9fs_cache_inode_set_cookie().

 (*) v9fs_cache_inode_reset_cookie(), which appears unused.

The fscache_relinquish traceline emission is caused by one of:

 (*) v9fs_file_open(O_RDWR/O_WRONLY) or v9fs_vfs_atomic_open(O_RDWR/O_WRONLY)
     calling v9fs_cache_inode_set_cookie().

 (*) v9fs_evict_inode() calling v9fs_cache_inode_put_cookie().

 (*) v9fs_cache_inode_reset_cookie(), which appears unused.

From the backtrace in:

	https://lore.kernel.org/linux-fsdevel/87czu45gcs.fsf@suse.de/

the acquisition is being triggered in v9fs_vfs_atomic_open_dotl(), so it seems
v9fs_qid_iget_dotl() already happened - which *should* have created the
cookie.

So it seems more complicated than I thought.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
