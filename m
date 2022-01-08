Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA513488291
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 Jan 2022 09:45:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n67Lb-00084Q-VM; Sat, 08 Jan 2022 08:45:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n67La-00083v-JL
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jan 2022 08:45:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CuAQLvFAvrXC/CGaNT1eE7oPqrX2KbSln6Qc3hozJtk=; b=hdPMTKtrTyivmrEtkxwfy7AunM
 VmVWkNO3jfqpp1q0jVXWb7gtDNjRe16/NKj0/q9RY0mKVZzRfyqzPGxwejUlFXuLyaldob3qaP8cB
 q15thg6IjZaP4pguIs5dGvNeqmA5C7Rd1PyVbPYxJ7S1V80cvlY28zfwIAkwoLQPVSqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CuAQLvFAvrXC/CGaNT1eE7oPqrX2KbSln6Qc3hozJtk=; b=StPAuvEP28FaTgU58RHw7QVkzQ
 uZ+Q6cnpVljuvVEHx3h/MWoJJdr9ZpsMicczJLQ5aiBMA3+ynKf6krPf5uJtqdHznN4ZipoU/0l/s
 MNO79CV63yNDGTRgUNgdlaa5Ezc8YottJhsC518v+sJnOg9jr+Oq4jaVVsuPgA+JK2GQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n67LX-0003Hi-Lg
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jan 2022 08:45:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641631501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CuAQLvFAvrXC/CGaNT1eE7oPqrX2KbSln6Qc3hozJtk=;
 b=J40MGhgO7fX16s7ugJ2b1jor8AEechM6GXJRJJbPhHsDF2tt6chage+Fci0g7+KOccKBxy
 7ZsQqfoepHndLxznBAhoC4JQupAYYzCuCqcK6liVcMqzVIpfnh/QeUCVh9tC8rVPDThx3L
 BRfDt+WVNvhENsUt/kwOtHPekAchCFA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-118-xHmu0LN6MMyH2esABKG0fQ-1; Sat, 08 Jan 2022 03:43:22 -0500
X-MC-Unique: xHmu0LN6MMyH2esABKG0fQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3CF418397A7;
 Sat,  8 Jan 2022 08:43:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2554F5F4EA;
 Sat,  8 Jan 2022 08:43:11 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <Ydk6jWmFH6TZLPZq@casper.infradead.org>
References: <Ydk6jWmFH6TZLPZq@casper.infradead.org>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021541207.640689.564689725898537127.stgit@warthog.procyon.org.uk>
 <CAOQ4uxjEcvffv=rNXS-r+NLz+=6yk4abRuX_AMq9v-M4nf_PtA@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <3492247.1641631391.1@warthog.procyon.org.uk>
Date: Sat, 08 Jan 2022 08:43:11 +0000
Message-ID: <3492248.1641631391@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Matthew Wilcox <willy@infradead.org> wrote: > > Huh? If some
 other kernel module sets it, cachefiles will try to set it, > see it's already
 set, and fail. Presumably cachefiles does not go round > randomly "unusing"
 files that it has not previo [...] 
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
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n67LX-0003Hi-Lg
Subject: Re: [V9fs-developer] [PATCH v4 38/68] vfs,
 cachefiles: Mark a backing file in use with an inode flag
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
Cc: Steve French <sfrench@samba.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel <ceph-devel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> 
> Huh?  If some other kernel module sets it, cachefiles will try to set it,
> see it's already set, and fail.  Presumably cachefiles does not go round
> randomly "unusing" files that it has not previously started using.

Correct.  It only unuses a file that it marked in-use in the first place.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
