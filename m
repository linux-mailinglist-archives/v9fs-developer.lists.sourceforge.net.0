Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5BF631CB9
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 10:21:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ox2zC-0007Fa-28;
	Mon, 21 Nov 2022 09:21:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1ox2ya-0007Ep-GI
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 09:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OGkxOou+BFCxzhmgYIR3dXgS0X+5SRauyNMovfNuRSA=; b=dXdypf2wIwcPLHtNu17VElbtQb
 esrmIpdz4D/98ME7gCSJ3LxRItipQ0e005bfR/gB+I7XMZz6vEUYwjK2p+PiJL1Sdg8oVZPF7MdQz
 YcSP0mWtYu/NLk5cdwNQvSuZahV/BNX+bVREmI7YsanEd3DEde+PnzsUozR2Ky+Rs+0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OGkxOou+BFCxzhmgYIR3dXgS0X+5SRauyNMovfNuRSA=; b=XTsiy7QwtZnhrEtzd3HIhiUwf0
 wzNSdVCqEoIqX6Dx4AIGhgKWPmd0qFPuQVt5mXG4B+3zfVRlvtSSm7WXLVu3ZypjzgkQvxawRa4Eu
 H3vruJsL3Jmm7BjVA1/bEQAp0wpJbbPI7GNMTjtbzT4xgsX+URIGTM9N0ublsO7ZAntY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ox2yV-0003Ch-VM for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 09:20:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 499A9B80AB2;
 Mon, 21 Nov 2022 09:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F592C433C1;
 Mon, 21 Nov 2022 09:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669022413;
 bh=Rod4QLy3YHTf6Pn4dep500jsC9mccpeOXc9og6+BDkE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AwhEY/dDW/xAQXKQY06ZdkenKH1tWXsfjYhpJkI7EXSR2DgDwEwDCSHzNF9BXj9SQ
 SRmwXBtkXFLo5i45Xf9DkLbPHTkzLhgSyU6Ewy+/E0iimScwd7sLrltK4hfnHmfW7d
 8oOYBFprjXXNqmeSRYCEp55DvWIHg95tusp6OMpmYNe5vkGsQYiv1ais/6fskFZuzK
 uUbHhjNrsueFnhzd2mOqwd0qe/UoMHjckc6z+qtLRQY3ZNPeN5L9zkefeakhpbiPjO
 9DJMO1GukybzD83AVos0vGE7HL0vhvIWV/ZtQqIyXq/7BH3gAP7oHnpceMszm/pILM
 yD+FZeeIzoiPw==
Date: Mon, 21 Nov 2022 10:19:59 +0100
From: Christian Brauner <brauner@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20221121091959.nzcunop3byncxa77@wittgenstein>
References: <20221120210004.381842-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221120210004.381842-1-jlayton@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
 > The file locking definitions have lived in fs.h since the dawn of time,
 > but they are only used by a small subset of the source files th [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ox2yV-0003Ch-VM
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

On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
> The file locking definitions have lived in fs.h since the dawn of time,
> but they are only used by a small subset of the source files that
> include it.
> 
> Move the file locking definitions to a new header file, and add the
> appropriate #include directives to the source files that need them. By
> doing this we trim down fs.h a bit and limit the amount of rebuilding
> that has to be done when we make changes to the file locking APIs.
> 
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---

Looks good to me,
Reviewed-by: Christian Brauner (Microsoft) <brauner@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
