Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ED84D3A96
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 20:47:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS2H9-0000th-Jl; Wed, 09 Mar 2022 19:47:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nS2H8-0000ta-83
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 19:47:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SExkNPD4HSVhmup0U2JPi/Bhwm7hxnLP6npiGS/irQk=; b=iiluNj0gjNi0NYg+qKlMBDiSrB
 x4DSsX6bX3Ub6+jOJfR2XI1WGoGJ1m5wsAvi36eoe1j2B9fwU/g8yqTjWNxQ/lgFwMDBnwMOD/wdL
 OMaQf6BnQRSv4vxPiqbz/sNtO9qfjUgP5li9NceX36ruXAEF6UUApIKPYMnLco6iTLaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SExkNPD4HSVhmup0U2JPi/Bhwm7hxnLP6npiGS/irQk=; b=kaBHRmcesLevcOB6dVmVr5uvUX
 TFAp4WpR1kDJ4WiJSslD2OXnGyHTKbRDrarp4G0w/dWbLla7OHkpA/V22IZlLPHufBYpmSqlpYKpc
 TkD8pT0CJVyKQBq2OeVCFpqSzpmg2bzr8CM4dzw8NIN9ByPfUpw/zwToXY4DyBI7T374=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS2H6-00039v-1T
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 19:47:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EA2C4B82365;
 Wed,  9 Mar 2022 19:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47679C340EC;
 Wed,  9 Mar 2022 19:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646855215;
 bh=dtsgPPBOF4aKczoSHHusq0zXiGSQrjZKnGswyuM+XJE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=MFEq8OQOCv7mjY36/BZPDOg/6xDn+q4ZCsq+GEWtvmnAi594FNAO6of8LjsCMztt9
 57A7cOSy3CmT85vAUV/B+bmymMDuOdmg9cb22Y/sFXJVT89FykAjJCcA5EA3lFp9sc
 AGbCiBTUQs/6tIlx2bRi7dmWAFoiNUxHAziXlP3VwiitMTrD7yabK+82+UQdwp4lYK
 Co18p/9jk8YY2IJsInOgeVJ6I4QnnwQuAWGMbTis2ffwKDj1RLdrebL9T3xU9fkGy3
 XJGkLC48xuoVGZoyAjbn7ZXG+lyDVzoBwpdrd5+nGQSEEhx3HN4QjeQ/tVTcEOl9pG
 8SGi3EsPtc6Bw==
Message-ID: <beaf4f6a6c2575ed489adb14b257253c868f9a5c.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Wed, 09 Mar 2022 14:46:52 -0500
In-Reply-To: <1790300.1646853782@warthog.procyon.org.uk>
References: <8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org>
 <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678213320.1200972.16807551936267647470.stgit@warthog.procyon.org.uk>
 <1790300.1646853782@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2022-03-09 at 19:23 +0000, David Howells wrote: >
 Jeff Layton <jlayton@kernel.org> wrote: > > > > Add a netfs_i_context struct
 that should be included in the network > > > filesystem's own ino [...] 
 Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS2H6-00039v-1T
Subject: Re: [V9fs-developer] [PATCH v2 12/19] netfs: Add a netfs inode
 context
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, David Wysochanski <dwysocha@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2022-03-09 at 19:23 +0000, David Howells wrote:
> Jeff Layton <jlayton@kernel.org> wrote:
> 
> > > Add a netfs_i_context struct that should be included in the network
> > > filesystem's own inode struct wrapper, directly after the VFS's inode
> > > struct, e.g.:
> > > 
> > > 	struct my_inode {
> > > 		struct {
> > > 			struct inode		vfs_inode;
> > > 			struct netfs_i_context	netfs_ctx;
> > > 		};
> > 
> > This seems a bit klunky.
> > 
> > I think it'd be better encapsulation to give this struct a name (e.g.
> > netfs_inode) and then have the filesystems replace the embedded
> > vfs_inode with a netfs_inode.
> 
> I think what you really want is:
> 
> 	struct my_inode : netfs_inode {
> 	};
> 
> right? ;-)
> 

Sort of, I guess.  The natural way to enforce the requirement that the
inode and context be ordered and adjacent like that is to make a struct
that embeds them both.

My thinking was that someone at some point will try to move things
around if they're just adjacent like this rather than an encapsulated
"object".

If we go this route, then please leave some comments in each filesystem
warning people off from breaking them up.

> > That way it's still just pointer math to get to the context from the
> > inode and vice versa, but the replacement seems a bit cleaner.
> > 
> > It might mean a bit more churn in the filesystems themselves as you
> > convert them, but most of them use macros or inline functions as
> > accessors so it shouldn't be _too_ bad.
> 
> That's a lot of churn - and will definitely cause conflicts with other
> patches aimed at those filesystems.  I'd prefer to avoid that if I can.
> 

Good point. Looks like around 200 or so places that would need to change
in the affected filesystems.

> > > +static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
> > > +{
> > > ...
> > > +}
> > > +
> > 
> > ^^^
> > The above change seems like it should be in its own patch. Wasn't it at
> > one point? Converting this to use init_request doesn't seem to rely on
> > the new embedded context.
> 
> Well, I wrote it as a separate patch on the end for convenience, but I
> intended to merge it here otherwise ceph wouldn't be able to do readahead for
> a few patches.
> 
> I was thinking that it would require the context change to work and certainly
> it requires the error-return-from-init_request patch to work, but actually it
> probably doesn't require the former so I could probably separate that bit out
> and put it between 11 and 12.
> 

Ok.

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
