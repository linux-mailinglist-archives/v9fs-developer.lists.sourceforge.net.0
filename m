Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE3F545774
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jun 2022 00:31:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzQgd-0003Zr-8R; Thu, 09 Jun 2022 22:31:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1nzQgb-0003Zl-Te
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 22:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nEoo9nf6uoR86Ps06V8ScDCUYmvkWwacynGHe7RF+ws=; b=RHhXX9dYfM/f6vJ68k44l90Y4x
 WDxQR36oPfo1sTv0jQnYZ15epeO+7KihgXc0Id32IFW4sr1+o6gKWk7AE7xMV+wq3NSPa5JGu67ZF
 3RoYE8WCsLyLNn2Tx3OsBLd1+3ai/FkyxlWw95AFDFZ31WvDZZQjofGDPJMeDr98dE48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nEoo9nf6uoR86Ps06V8ScDCUYmvkWwacynGHe7RF+ws=; b=S5xQVmXUuPlsZFl18j1GD8a0Na
 iRr9Ie7DHyyWJbRjJynmD/lRSv75n+LUMrlyS1gQK6KO1/056KrlWQKbobjrX4KhQv+I7ACYaOGes
 TcwqhWucJIGBTKf5Yc85BpaXAYNDYEk72ZgZ6mgW08Fe0L7tv6Ec8wzN8UCL8R3Czyc8=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzQgW-0007xx-Gq
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 22:31:30 +0000
Received: by mail-wr1-f44.google.com with SMTP id u8so29906511wrm.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Jun 2022 15:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nEoo9nf6uoR86Ps06V8ScDCUYmvkWwacynGHe7RF+ws=;
 b=ghk7xzjGGy/Dz/HTRD96htdkv+0frxmQazCf9uMvgNp1Z1wLEcG5ERbmUjxEESzPQp
 yRM8fjscWfp5jmsENIatZmPJ+qs576kPyOyIvWF+++ET4ShZ1UWYcLDhHWzwT6KNJU9Z
 XlPAcP5otspGV9g6xU4a4P4/9+4XRpzNWEgiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nEoo9nf6uoR86Ps06V8ScDCUYmvkWwacynGHe7RF+ws=;
 b=OhyGUuhJNlyUT7YXPuB49dbk5GUAorIXCMz8dx/NM0/pSyaxPsn4amjEhzL8rz4NFH
 gx3XtFysSVhFPI3VsfD98P6ZgeRY30feW5XdiV5ni9vWJ9jXz34Y3zVBKY/6OJ6QCbGB
 vapdjoW/GTz30iBg1E533wSWycdyr4S/5Xw7JDbZUCRIMvcHBgDHSkwYS+zOqkSt0AeQ
 P6avw+GJwsDIGee7e3TPR7BmUI5xTA6PFmP8F2RcKYPlE73R7+qfc6O3NHtRb9iSwv0J
 tNYlL69mV2iG29WugizenmjZTZS3fyse13EumsJuI7fXvxb/IdELPQmlSgwvWsm5hdoy
 iT7A==
X-Gm-Message-State: AOAM5311yFSDVLRayDI1lN4CFQbKBAmXRdSkvEy9d3jjJEKnx4Gn07GU
 2H7iCyhmqtYmY71wH8bXJf9eohDCSi2WFSCIXug=
X-Google-Smtp-Source: ABdhPJyihGJxV4ya4Pm5gZ6a9NiSoyMbkdS+3zY3vL+CmqPeMfKBalsm9I3Q/xcRlrEi/obTyW+wYw==
X-Received: by 2002:a17:907:d24:b0:712:1142:88c7 with SMTP id
 gn36-20020a1709070d2400b00712114288c7mr3263989ejc.435.1654812260484; 
 Thu, 09 Jun 2022 15:04:20 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52]) by smtp.gmail.com with ESMTPSA id
 ge24-20020a170907909800b00704757b1debsm11028356ejb.9.2022.06.09.15.04.18
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jun 2022 15:04:18 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id a15so25656685wrh.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Jun 2022 15:04:18 -0700 (PDT)
X-Received: by 2002:a05:6000:1b0f:b0:210:313a:ef2a with SMTP id
 f15-20020a0560001b0f00b00210313aef2amr39748721wrz.281.1654812258016; Thu, 09
 Jun 2022 15:04:18 -0700 (PDT)
MIME-Version: 1.0
References: <40676.1654807564@warthog.procyon.org.uk>
In-Reply-To: <40676.1654807564@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 9 Jun 2022 15:04:01 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgkwKyNmNdKpQkqZ6DnmUL-x9hp0YBnUGjaPFEAdxDTbw@mail.gmail.com>
Message-ID: <CAHk-=wgkwKyNmNdKpQkqZ6DnmUL-x9hp0YBnUGjaPFEAdxDTbw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 9,
 2022 at 1:46 PM David Howells <dhowells@redhat.com>
 wrote: > > struct my_inode { > - struct { > - /* These must be contiguous
 */ > - struct inode vfs_inode; > - struct netfs_i_context n [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nzQgW-0007xx-Gq
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Dave Chinner <david@fromorbit.com>,
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

On Thu, Jun 9, 2022 at 1:46 PM David Howells <dhowells@redhat.com> wrote:
>
>         struct my_inode {
> -               struct {
> -                       /* These must be contiguous */
> -                       struct inode            vfs_inode;
> -                       struct netfs_i_context  netfs_ctx;
> -               };
> +               struct netfs_inode netfs; /* Netfslib context and vfs inode */
>                 ...

Side note: I think this could have been done with an unnamed union as

        struct my_inode {
                union {
                        struct inode            vfs_inode;
                        struct netfs_inode netfs_inode;
                };
        [...]

instead, with the rule that 'netfs_inode' always starts with a 'struct inode'.

The advantage would have been that the old 'vfs_inode' syntax would
have continued to work, and much less of the ugliness.

So a fair amount of the noise in this patch could have been avoided.

That said, I think the end result is fine (and maybe less complicated
than using that union trick), so that's not the big deal.

But what I actually *really* detest in this patch is that

        struct netfs_inode *ctx = netfs_inode(file_inode(file));

pattern.

In several cases that's just a different syntax for almost the same
problem that gcc-12 already complained about.

And yes, in some cases you do need it - particularly in the
"mapping->host" situation, you really have lost sight of the fact that
you really have a "struct netfs_inode *", and all you have is the
"struct inode *".

But in a lot of cases you really could do so much better: you *have* a
"struct netfs_inode" to begin with, but you converted it to just
"struct inode *", and now you're converting it back.

Look at that AFS code, for example, where we have afs_vnode_cache() doing

        return netfs_i_cookie(&vnode->netfs.inode);

and look how it *had* a netfs structure, and it was passing it to a
netfs function, but it explicitly passed the WRONG TYPE, so now we've
lost the type information and it is using that cast to fake it all
back.

So I think the 'netfs' functions should take a 'struct netfs_inode
*ctx' as their argument.

Because the callers know what kind of inode they have, and they can -
and should - then pass the proper netfs context down.

IOW, I think you really should do something like the attached on top
of this all.

Only *very* lightly build-tested, but let me quote part of the diff to explain:

  -static inline struct fscache_cookie *netfs_i_cookie(struct inode *inode)
  +static inline struct fscache_cookie *netfs_i_cookie(struct netfs_inode *ctx)
   {
   #if IS_ENABLED(CONFIG_FSCACHE)
  -       struct netfs_inode *ctx = netfs_inode(inode);
          return ctx->cache;
   #else


look, this part is obvious. If you are doing a "netfs_i_cookie()"
call, you had *better* know that you actually have a netfs_inode, not
some random "inode".

And most of the users already knew exactly that, so other paths of the
patch actually get cleaner too:

  -       return netfs_i_cookie(&v9inode->netfs.inode);
  +       return netfs_i_cookie(&v9inode->netfs);

but even when that wasn't the case, as in netfs_inode_init() use, we have:

   static void v9fs_set_netfs_context(struct inode *inode)
   {
  -       netfs_inode_init(inode, &v9fs_req_ops);
  +       struct v9fs_inode *v9inode = V9FS_I(inode);
  +       netfs_inode_init(&v9inode->netfs, &v9fs_req_ops);
   }

and now we're basically doing that same "taek inode pointer, convert
it to someting else" that I'm complaining about wrt the netfs code,
but notice how we are now doing it within the context of the 9p
filesystem.

So now we're converting not a 'random inode pointer that could come
from many different filesystems', but an *actual* well-defined 'this
is a 9p inode, so doing that V9FS_I(inode) conversion is normal' kind
of situation.

And at that point, we now have that 'struct netfs_inode' directly, and
don't need to play any other games.

Yes, a few 'netfs_inode()' users still remain. I don't love them
either, but they tend to be places where we really did get just the
raw inode pointer from the VFS layer (eg netfs_readahead is just used
directly as the ".readahead" function for filesystems).

Hmm?

                    Linus

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
