Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E434D3A2F
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 20:23:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS1uS-0006HL-EM; Wed, 09 Mar 2022 19:23:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nS1uQ-0006HB-1p
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 19:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Z5XscNfbcs+yg9O+mP46TlJqahAAprLj05WH8utWWM=; b=X3JgApsnWpUXl5wxwiVqLQbN2B
 BZdlFDiRq6eLni+jypDOw91q3LsdtEdP0+Ykwq05BZMoAB6zGap2geBh4GIhXpbL/lTJA5kZKIWSz
 +B8kpzVRNL/Zqf6ZASLptU7vCj5XmHqh/tMiDYzJwCdb+wp39Z4j/I4DvCvveCl/vUTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5Z5XscNfbcs+yg9O+mP46TlJqahAAprLj05WH8utWWM=; b=T+wCyFSidWe8Fot3L8IFB0s/Uz
 G/TXJ3eUZeWfC2/wqmgsapkkAg0+ObB5EXvGZ7irFMjyk+ihamSvSroEvYZDjafQqkSpqgYnOidC0
 IJWJNbSJu6N2cm3rNc7NCuoIwdXmbr2xsQy37a4ggHoVFP2XbpVi2aXCIwi/m0kZG/WU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS1uJ-0001s4-Na
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 19:23:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646853808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5Z5XscNfbcs+yg9O+mP46TlJqahAAprLj05WH8utWWM=;
 b=LcoYPrPKGmSsv2NWjJmHVTYX0GyYdeOd/48+7EwaTpCjqifnH1EDp9AziK7/VdF0m+Wttc
 L17j9CzVpXCPs5BiN9sNmPbha9jVAVo+KjFUo+XC15ro9YZnTavYh2EzlSy4lf6QT65Pw+
 ENNuiXgIs5IvhIqPshePxAq/Hsm0Zu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-458-YdxP3QPhOBahVoSrble-Vg-1; Wed, 09 Mar 2022 14:23:24 -0500
X-MC-Unique: YdxP3QPhOBahVoSrble-Vg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E7EB1854E21;
 Wed,  9 Mar 2022 19:23:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAFF345D76;
 Wed,  9 Mar 2022 19:23:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org>
References: <8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org>
 <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678213320.1200972.16807551936267647470.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <1790299.1646853782.1@warthog.procyon.org.uk>
Date: Wed, 09 Mar 2022 19:23:02 +0000
Message-ID: <1790300.1646853782@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > > Add a
 netfs_i_context
 struct that should be included in the network > > filesystem's own inode
 struct wrapper, directly after the VFS's inode > > struct, e.g.: > > > > struct
 my_inode { > > struct [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS1uJ-0001s4-Na
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> > Add a netfs_i_context struct that should be included in the network
> > filesystem's own inode struct wrapper, directly after the VFS's inode
> > struct, e.g.:
> > 
> > 	struct my_inode {
> > 		struct {
> > 			struct inode		vfs_inode;
> > 			struct netfs_i_context	netfs_ctx;
> > 		};
> 
> This seems a bit klunky.
>
> I think it'd be better encapsulation to give this struct a name (e.g.
> netfs_inode) and then have the filesystems replace the embedded
> vfs_inode with a netfs_inode.

I think what you really want is:

	struct my_inode : netfs_inode {
	};

right? ;-)

> That way it's still just pointer math to get to the context from the
> inode and vice versa, but the replacement seems a bit cleaner.
> 
> It might mean a bit more churn in the filesystems themselves as you
> convert them, but most of them use macros or inline functions as
> accessors so it shouldn't be _too_ bad.

That's a lot of churn - and will definitely cause conflicts with other
patches aimed at those filesystems.  I'd prefer to avoid that if I can.

> > +static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
> > +{
> > ...
> > +}
> > +
> 
> ^^^
> The above change seems like it should be in its own patch. Wasn't it at
> one point? Converting this to use init_request doesn't seem to rely on
> the new embedded context.

Well, I wrote it as a separate patch on the end for convenience, but I
intended to merge it here otherwise ceph wouldn't be able to do readahead for
a few patches.

I was thinking that it would require the context change to work and certainly
it requires the error-return-from-init_request patch to work, but actually it
probably doesn't require the former so I could probably separate that bit out
and put it between 11 and 12.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
