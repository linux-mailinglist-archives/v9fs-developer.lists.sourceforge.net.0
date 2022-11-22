Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E81CB633AF3
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 12:14:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxREF-00042O-E8;
	Tue, 22 Nov 2022 11:14:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1oxRE9-00042C-BU
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 11:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOJndy9oAQaULvL0DdDwPqbrgnyzProJoxd3/mKZ2aI=; b=XoDaLxkTTpFBVpVYiJ+7XxawNO
 KeGW+dmpLLFu6sQEYO+6fcSAIdpcy5m/YRv/J+9zFsDFN6au3WIgFMbi7gXgqQ+uLuseooiuCb0oY
 m4zbxbKRCsWgSvyjJuMOb9oc5Gk9OHZgAQZyWfGWKu/P5ipT4qUlGFKan4FtGuTrFyxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SOJndy9oAQaULvL0DdDwPqbrgnyzProJoxd3/mKZ2aI=; b=Do6LSQBYdnONl7fpfgSDiI+9Pa
 qqVGmTrKXEGi5nO1KS8+OxPcmkzXhX0pwOVvl6ih+6nV7VIO0g1xwFS7/NxLOWOMoqlnLVR4AKQab
 xbJqEh/E1kZau5ZgT/sHXOhQLYLda1PtwDoGQ5vp83LQ9HEMSi3az70NU5lQYW+TWcjc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxRE5-00048D-2X for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 11:14:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A6EDD6164C;
 Tue, 22 Nov 2022 11:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99661C433C1;
 Tue, 22 Nov 2022 11:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669115639;
 bh=bl116Cg89IGIZVG9NrRKWmlP6ed4aJACzNI0Wp3w7MQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=PW904WXq7B5dnjaE/n6/stkLttLw66q95uzaVXXfC57Gr8fGyA50W/Y+6YMHj6/Z6
 C+bp2zR/HpD7AL2kDXCaUnJHLo0QYTjCM7B7srSBYzv9QSoZunuSXqgWz/eURLlX6f
 bkLmFZpbKLyi6RqKREvtIsB+vKfLjAYsE4lMeS50ONpsJGmxbLEBM8TI6eOVtcA0LK
 FmF5vJc1DjzHEZ764Fk6lm5yRoCPsh46VllB8mEkIzIHUVtq1E/Ip3Df/1o0TdNO5Q
 AIsD9dU2QJjYYPKYl3/NasVd/l9SRjkJBU0cAIKGCY06yaw8kwOzVXEKArpk5buENB
 HvI5i9aGVVUAA==
Message-ID: <fcc7161712a2c8ff84420477b12b9114195e6624.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Date: Tue, 22 Nov 2022 06:13:54 -0500
In-Reply-To: <Y3xHQwM3UiD/SK0K@casper.infradead.org>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <Y3xHQwM3UiD/SK0K@casper.infradead.org>
User-Agent: Evolution 3.46.1 (3.46.1-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-11-22 at 03:51 +0000, Matthew Wilcox wrote: >
 On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote: > > Move the
 file locking definitions to a new header file, and add the > > appr [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxRE5-00048D-2X
Subject: Re: [V9fs-developer] [PATCH] filelock: move file locking
 definitions to separate header file
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
 Martin Brandenburg <martin@omnibond.com>,
 "Darrick J. Wong" <djwong@kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Marc Dionne <marc.dionne@auristor.com>, linux-xfs@vger.kernel.org, hch@lst.de,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 Andreas Gruenbacher <agruenba@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Mark Fasheh <mark@fasheh.com>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Tom Talpey <tom@talpey.com>, linux-fsdevel@vger.kernel.org,
 David Teigland <teigland@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Paulo Alcantara <pc@cjr.nz>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, Anna Schumaker <anna@kernel.org>,
 Bob Peterson <rpeterso@redhat.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-11-22 at 03:51 +0000, Matthew Wilcox wrote:
> On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
> > Move the file locking definitions to a new header file, and add the
> > appropriate #include directives to the source files that need them. By
> > doing this we trim down fs.h a bit and limit the amount of rebuilding
> > that has to be done when we make changes to the file locking APIs.
> 
> I'm in favour of this in general, but I think there's a few implicit
> includes.  Can you create a test.c that only #include
> <linnux/filelock.h> and see if there's anything missing?
> 
> > +	wait_queue_head_t fl_wait;
> > +	struct file *fl_file;
> 
> These two seem undefined at this point.
> 
> > +	struct fasync_struct *	fl_fasync; /* for lease break notifications */
> 
> Likewise.
> 

Yeah, there is quite a bit missing. I think I'll have to add this at the
head of filelock.h:

#include <linux/fs.h>

...as we need several definitions from fs.h for this header.
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
