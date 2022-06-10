Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B2A546C21
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jun 2022 20:07:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzj2C-0002zp-KY; Fri, 10 Jun 2022 18:07:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nzj2A-0002zc-RA
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 18:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PMsjmdghjftZcHJYxe23lhIe8tlheZvEV884DJ3XaMQ=; b=ZQsGnwoOxkdBHzpvdHg5VXqalB
 rfqpvR7axp+qfKQgMrPJWVpS8DWGzet3ACeiYVHlobiMzTYF0OBdq+caxDFVIvC5ouN35yagBrCdT
 TGJFQzlweSYsJ1KZ2LWE3TEtvPaF2gaLrMUH6X+yx+ehjpEpdWxnzibYux2knAPHa714=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PMsjmdghjftZcHJYxe23lhIe8tlheZvEV884DJ3XaMQ=; b=BpfqFDkjX7N6mQRYRTNWS4aNuI
 YcTJe9lCgxDjxdqtDzjRiMWegAPd5NuStZMptumzlG12milq4LkQN4YX4fWkk4ruL9EMw6gN0ShhO
 kJbmB0FHZWUgsgJHBFoXfO7JOKv4kcb5HZssIzzL2MemUVjFMRpwjMkULkuMT0dJJD0s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzj21-0001Q8-Jk
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 18:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654884404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PMsjmdghjftZcHJYxe23lhIe8tlheZvEV884DJ3XaMQ=;
 b=V1HiOV/IFjhkwMeX8ma1Dr/HJqfCLNdveDPuShzW87coJn+CERHt8z6A07X8Do9WwIJ5d5
 AdLDumo5M81/IDyPG+wuXvEiZjGNeZRvtZjnSP0WKNffE4ovd8dM7DFAEokDFY2F+OXBGO
 7Qsv2Ep+ZHh3dWlm8g2esFBDH77+z4M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-RurBROcsP7ulDRyRjKQieg-1; Fri, 10 Jun 2022 14:06:40 -0400
X-MC-Unique: RurBROcsP7ulDRyRjKQieg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 055FD1C01B20;
 Fri, 10 Jun 2022 18:06:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A360018EA7;
 Fri, 10 Jun 2022 18:06:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wgkwKyNmNdKpQkqZ6DnmUL-x9hp0YBnUGjaPFEAdxDTbw@mail.gmail.com>
References: <CAHk-=wgkwKyNmNdKpQkqZ6DnmUL-x9hp0YBnUGjaPFEAdxDTbw@mail.gmail.com>
 <40676.1654807564@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <652127.1654884394.1@warthog.procyon.org.uk>
Date: Fri, 10 Jun 2022 19:06:34 +0100
Message-ID: <652128.1654884394@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Linus Torvalds <torvalds@linux-foundation.org> wrote: > Side
 note: I think this could have been done with an unnamed union as > > struct
 my_inode { > union { > struct inode vfs_inode; > struct netfs_inode netfs_inode;
 > }; > [...] > > instead, with the r [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzj21-0001Q8-Jk
Subject: Re: [V9fs-developer] [PATCH] netfs: Fix gcc-12 warning by embedding
 vfs inode in netfs_i_context
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, "open
 list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Dave Chinner <david@fromorbit.com>, dhowells@redhat.com,
 William Kucharski <william.kucharski@oracle.com>,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, CIFS <linux-cifs@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, Kees Cook <keescook@chromium.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> Side note: I think this could have been done with an unnamed union as
> 
>         struct my_inode {
>                 union {
>                         struct inode            vfs_inode;
>                         struct netfs_inode netfs_inode;
>                 };
>         [...]
> 
> instead, with the rule that 'netfs_inode' always starts with a 'struct inode'.

I'm slightly wary of that, lest struct netfs_inode gets randomised.  I'm not
sure how likely that would be without netfs_inode getting explicitly marked.

> But in a lot of cases you really could do so much better: you *have* a
> "struct netfs_inode" to begin with, but you converted it to just
> "struct inode *", and now you're converting it back.
> 
> Look at that AFS code, for example, where we have afs_vnode_cache() doing
> 
>         return netfs_i_cookie(&vnode->netfs.inode);
> 
> and look how it *had* a netfs structure, and it was passing it to a
> netfs function, but it explicitly passed the WRONG TYPE, so now we've
> lost the type information and it is using that cast to fake it all
> back.

Yeah, I didn't look at those as they didn't cause warnings, but you're right -
those should take struct netfs_inode pointers in some cases, rather than
struct inode.

Note that some functions, such as netfs_readpage() and netfs_readpages() do
need to take struct inode pointers as I'm trying to get the VFS ops to jump
into netfslib and get all the VM interface stuff out of the network
filesystems - the idea being that the network filesystem will provide netfslib
primarily with two functions: do a read op and do a write op.

I'll have a look at your patch in a bit.

Thanks,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
