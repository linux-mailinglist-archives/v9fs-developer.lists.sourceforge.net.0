Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AD766589B
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Jan 2023 11:09:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pFY38-0004Vb-6t;
	Wed, 11 Jan 2023 10:09:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1pFY36-0004VE-Lg
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Jan 2023 10:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTG8tkGkgzpoXSI2/xLzI6Hvg87vZDKZ00P9yxoHI64=; b=hLOojsD6KEjsFghwKuozZ/qKKU
 axE5yz4/ZkZobbszyUnbMS+dtz/rfto8tWFBhbozPJo3tQ5AtWO6Kozzt48GWn73DVivLAbkZHnDt
 fOqY8sVvachIAcYjNRMJ60BgMbhQxRqIacvQBdWNWR738e04wR7fX1fELA+qESfwHIgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vTG8tkGkgzpoXSI2/xLzI6Hvg87vZDKZ00P9yxoHI64=; b=ZcAswlotoEb5mGJOHf3gb3JOt4
 Bl8yIQHcUDy0rMSJ2tFWOtGOwPuSyW/5YV2uBm2jSjEvhHSXYyXpYg835SylGPitTYPX8PEeXMgrR
 eQeOQndoj/qt7KDsOEU8OF+9vKTSq94cEMDXH01/scVAxlHavXeFoMEOSOxoVzQqc6VQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFY34-00029B-2e for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Jan 2023 10:09:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 918A061BCE;
 Wed, 11 Jan 2023 10:09:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFD77C433F0;
 Wed, 11 Jan 2023 10:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1673431768;
 bh=vTG8tkGkgzpoXSI2/xLzI6Hvg87vZDKZ00P9yxoHI64=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=KgIY9bOYwJCyOfCiW7o6nNIrn2iWWQQ5tXwTIwDD6HKYH/4GbiuaYsi5USHAueqfF
 qW+c9QphwXJnJEBBSkeZ3QzZ2qjL78DX6brtpjE96UlFGKckD3CshL11vT4uRRIWHz
 uUGbPHoGrJNEMH9NM6lzSSC+MCcnGvoWlKzsj1YG1ecUDwUwqKkPrgm4FQQGLXhuZ6
 tP2riGZnuacry7vNSFPRIhTvYGOxr/NRJY22iA4K0Dv3RFfUbw19rHig2ttj+ZUO0x
 2LDUVW+peqK8CV6IqOT/qJhTun4pq3CFSD/d/wg4wfgC4RYw29uJqQkwH1RoioVK2c
 R6J71KCrpkAKg==
Message-ID: <b93df374c14a0841823da7d5fadd96a0077762c6.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Date: Wed, 11 Jan 2023 05:09:22 -0500
In-Reply-To: <Y74bDlSiEb2dRFSx@ZenIV>
References: <20230105211937.1572384-1-jlayton@kernel.org>
 <Y74bDlSiEb2dRFSx@ZenIV>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2023-01-11 at 02:12 +0000, Al Viro wrote: > On Thu, 
 Jan 05, 2023 at 04:19:29PM -0500, Jeff Layton wrote: > > The file locking
 definitions have lived in fs.h since the dawn of time, > > but the [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pFY34-00029B-2e
Subject: Re: [V9fs-developer] [PATCH v2] filelock: move file locking
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
 Marc Dionne <marc.dionne@auristor.com>, linux-xfs@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Mike Marshall <hubcap@omnibond.com>,
 linux-cifs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Mark Fasheh <mark@fasheh.com>,
 Russell King <linux@armlinux.org.uk>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 linux-fsdevel@vger.kernel.org, David Teigland <teigland@redhat.com>,
 Joel Becker <jlbec@evilplan.org>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, Christian Brauner <brauner@kernel.org>,
 Paulo Alcantara <pc@cjr.nz>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, ocfs2-devel@oss.oracle.com,
 Anna Schumaker <anna@kernel.org>, Bob Peterson <rpeterso@redhat.com>,
 Steve French <stfrench@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2023-01-11 at 02:12 +0000, Al Viro wrote:
> On Thu, Jan 05, 2023 at 04:19:29PM -0500, Jeff Layton wrote:
> > The file locking definitions have lived in fs.h since the dawn of time,
> > but they are only used by a small subset of the source files that
> > include it.
> > 
> > Move the file locking definitions to a new header file, and add the
> > appropriate #include directives to the source files that need them. By
> > doing this we trim down fs.h a bit and limit the amount of rebuilding
> > that has to be done when we make changes to the file locking APIs.
> > 
> > Reviewed-by: Xiubo Li <xiubli@redhat.com>
> > Reviewed-by: Christian Brauner (Microsoft) <brauner@kernel.org>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > Reviewed-by: David Howells <dhowells@redhat.com>
> > Acked-by: Chuck Lever <chuck.lever@oracle.com>
> > Acked-by: Joseph Qi <joseph.qi@linux.alibaba.com>
> > Acked-by: Steve French <stfrench@microsoft.com>
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> 
> Same question re git tree preferences (and my Acked-by in any case)

I'll take this one via the file locking tree as well. FWIW, I have some
other filelock API changes I'd like to propose, so I think that'll be
easier.

Thanks,
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
