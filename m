Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7601352D591
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 May 2022 16:06:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nrgnD-0002xG-CE; Thu, 19 May 2022 14:06:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <keescook@chromium.org>) id 1nrgn0-0002wr-Sl
 for v9fs-developer@lists.sourceforge.net; Thu, 19 May 2022 14:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y986+ZdOckPzlJLXnwDbvrNORPQJ9hBww73y7LpLMPI=; b=c/LG5P7xefASx4FhYfhEzmMBQ8
 ANG1mgnxFqr+k0eQ3MPEQ4oIiGYMVoEmOCmbb6WeG9kL7AKWyQez3QmEKvJxmMIbmF3ZaUvHFfOy1
 uGrdOnCahNxKkMttp+vCXLOpPJ4zXU59o/m9xj8ZBMxdzvdZRBJZXx/FRdKlKAWtoNRM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y986+ZdOckPzlJLXnwDbvrNORPQJ9hBww73y7LpLMPI=; b=S+TplBmIazqYvLH8zME8BtlfIF
 XXel+GCsYAoARAwvf8t5mwSPxxsV9RzlbF7mVLnu9EWXvdBJcra809aQxkHG0pV/96gk3z6hRz8cN
 mCkEEIkVqDnCJ6OCf/J8h2AF/YFj3uT1G6p7nXogz0FnKbYqdXTLXGn3SishEt6SU1FU=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nrgmq-0004LL-5S
 for v9fs-developer@lists.sourceforge.net; Thu, 19 May 2022 14:05:59 +0000
Received: by mail-pf1-f182.google.com with SMTP id x143so5237594pfc.11
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 19 May 2022 07:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=y986+ZdOckPzlJLXnwDbvrNORPQJ9hBww73y7LpLMPI=;
 b=cSPr5PM/WyUmap+iM0KLutmdQ44fhG8oUl6rtz2CtZvLyKXw2Ax1ypdwik2OVPGWPZ
 9OtYgovB/0k2KitlgP6hokdD/5iVBiCSfEQSo8tVa56jYPRvcUeLABUdvrDyZ+y6HsAb
 8PbDL2S1P5jl+66HzLznx2V1z9a2LoxlWKkVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y986+ZdOckPzlJLXnwDbvrNORPQJ9hBww73y7LpLMPI=;
 b=jWCjhyDCQ+WPXVCFyNodJGpDGimZhmQ0lVLmSt/PycBu44c7d800XsC4i+UH1dmKC9
 XdYbiLheINgP79liSCibx1Ly914BVimP5viLnMGF473cIn4s5ImPWelLIJcdqU1jcs/L
 X8nPD+s2bB/26p1xpLsbtohsKLJUAXLh5hpw0LD8JeqINDMK6NOs+3a2ZChc27Qvu4yj
 jyYwj6qnG7eJ35nirKmjJh3l4SI8S6WZe38FbuSFKLRBWcJZjYol+VamqHNFALjiNJTY
 M7y3kf1EKyhF7kG6ua6KwyF3jXtit0jsKH9BXpExozSEB9mYPhy4yjMzCSfxaR8neJYz
 k+oA==
X-Gm-Message-State: AOAM531TtP66P2TcI/mn3xBrK8S3EKsIvxr0YvbrOAp3shMuQoDsnnZL
 0/cgo5q0uFj39AVasMHvE8Gp8g==
X-Google-Smtp-Source: ABdhPJwMigcttytqn51A8Stz9WgyRJpRz32o96ysMbkIOFG3N7lbCf8x6SeG3faP33vhjYsJ7UVViQ==
X-Received: by 2002:a63:fb02:0:b0:3c1:9513:2e11 with SMTP id
 o2-20020a63fb02000000b003c195132e11mr4183986pgh.258.1652969150525; 
 Thu, 19 May 2022 07:05:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 h7-20020a170902680700b0015e8d4eb2afsm3855534plk.249.2022.05.19.07.05.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 07:05:49 -0700 (PDT)
Date: Thu, 19 May 2022 07:05:49 -0700
From: Kees Cook <keescook@chromium.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <202205190704.1DC660E5E@keescook>
References: <165296786831.3591209.12111293034669289733.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <165296786831.3591209.12111293034669289733.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 19, 2022 at 02:44:28PM +0100,
 David Howells wrote:
 > While randstruct was satisfied with using an open-coded "void *" offset
 > cast for the netfs_i_context <-> inode casting, __builtin_obj [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nrgmq-0004LL-5S
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-cifs@vger.kernel.org,
 William Kucharski <william.kucharski@oracle.com>, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, jlayton@kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevek@vger.kernel.org, Steve French <smfrench@gmail.com>,
 ceph-devel@vger.kernel.org, linux-hardening@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, May 19, 2022 at 02:44:28PM +0100, David Howells wrote:
> While randstruct was satisfied with using an open-coded "void *" offset
> cast for the netfs_i_context <-> inode casting, __builtin_object_size() as
> used by FORTIFY_SOURCE was not as easily fooled.  This was causing the
> following complaint[1] from gcc v12:
> 
> In file included from ./include/linux/string.h:253,
>                  from ./include/linux/ceph/ceph_debug.h:7,
>                  from fs/ceph/inode.c:2:
> In function 'fortify_memset_chk',
>     inlined from 'netfs_i_context_init' at ./include/linux/netfs.h:326:2,
>     inlined from 'ceph_alloc_inode' at fs/ceph/inode.c:463:2:
> ./include/linux/fortify-string.h:242:25: warning: call to '__write_overflow_field' declared with attribute warning:
> detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
>   242 |                         __write_overflow_field(p_size_field, size);
>       |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fix this by embedding a struct inode into struct netfs_i_context (which
> should perhaps be renamed to struct netfs_inode).  The struct inode
> vfs_inode fields are then removed from the 9p, afs, ceph and cifs inode
> structs and vfs_inode is then simply changed to "nic.inode" in those
> filesystems.
> 
> Most of the changes were done with:
> 
>   perl -p -i -e 's/vfs_inode/nic.inode/'g \
> 	`git grep -l 'vfs_inode' -- fs/{9p,afs,ceph,cifs}/*.[ch]`
> 
> Kees suggested doing it with a pair structure[2] and a special declarator
> to insert that into the network filesystem's inode wrapper[3], but I think
> it's cleaner to embed it - and then it doesn't matter if struct
> randomisation reorders things.
> 
> Fixes: bc899ee1c898 ("netfs: Add a netfs inode context")
> Reported-by: Jeff Layton <jlayton@kernel.org>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Kees Cook <keescook@chromium.org>
> cc: Jonathan Corbet <corbet@lwn.net>
> cc: Eric Van Hensbergen <ericvh@gmail.com>
> cc: Latchesar Ionkov <lucho@ionkov.net>
> cc: Dominique Martinet <asmadeus@codewreck.org>
> cc: Christian Schoenebeck <linux_oss@crudebyte.com>
> cc: Marc Dionne <marc.dionne@auristor.com>
> cc: Xiubo Li <xiubli@redhat.com>
> cc: Ilya Dryomov <idryomov@gmail.com>
> cc: Steve French <smfrench@gmail.com>
> cc: William Kucharski <william.kucharski@oracle.com>
> cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> cc: linux-doc@vger.kernel.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: linux-afs@lists.infradead.org
> cc: ceph-devel@vger.kernel.org
> cc: linux-cifs@vger.kernel.org
> cc: samba-technical@lists.samba.org
> cc: linux-fsdevek@vger.kernel.org
> cc: linux-hardening@vger.kernel.org
> Link: https://lore.kernel.org/r/d2ad3a3d7bdd794c6efb562d2f2b655fb67756b9.camel@kernel.org/ [1]
> Link: https://lore.kernel.org/r/20220517210230.864239-1-keescook@chromium.org/ [2]
> Link: https://lore.kernel.org/r/20220518202212.2322058-1-keescook@chromium.org/ [3]

Works for me! :) Thanks for building the alternative.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
