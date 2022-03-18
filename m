Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E93D4DDC05
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Mar 2022 15:48:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nVDu5-0003uk-0y; Fri, 18 Mar 2022 14:48:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nVDu3-0003ud-Bs
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Mar 2022 14:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AXh1kXJA2Arm+k9zVpD08NoMYuNv/3gU6u7CxBA2E8s=; b=haelwudsaic4Q2swdLUeh0pkCp
 Ai9JZ6bsjXgiGGlbKQrAzgYmul3EGAdy4bZZBKHRdOwFvk2uRGRalk2JPXKOP0TOsDPlXE0rWotl9
 WFxzLlIkCyM5ySWXr74ZkY8JRbT+X3CAZvPCHfJNRAad/phw8V/aGDAWqh5fWTHit6nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AXh1kXJA2Arm+k9zVpD08NoMYuNv/3gU6u7CxBA2E8s=; b=djCJtWgjBEZB2fhwsVpEgRFpOL
 JkV6acL+IUqEcV1kOAQcLFi8SlJ/kHn03HC0w5kVurA9bnmMvNu8NuH3LoUgJmtDLuz9vSF5GKOmD
 0G6Tj4Z9jqGLkhrHyoI7lA9X2R7s/VrC1z+Id5VvMGPF0CtdaphBSgUMBu84mQkQ0uwo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVDtw-003Ah0-Ol
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Mar 2022 14:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647614898;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AXh1kXJA2Arm+k9zVpD08NoMYuNv/3gU6u7CxBA2E8s=;
 b=eL3fnSJkkPjULPlXkRSPeZrho2FlLoYHvVmcOUIYifY4l5ZnW+nUFG8xnr4gNHGwtaY45+
 d17qsmsYK6keutVE+ML6PNuJ2iCIYxgrJlAmKRzxaOIzI0O5IdbsLHS6Q5MS+GEn0ksh6u
 FkVG86cd32sGnKvbIJOQkIUZ5+r5SzA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-ZiK8pNwNPmCjf2x7J_dSuQ-1; Fri, 18 Mar 2022 10:48:13 -0400
X-MC-Unique: ZiK8pNwNPmCjf2x7J_dSuQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80D99296A625;
 Fri, 18 Mar 2022 14:48:12 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 16A4040D282F;
 Fri, 18 Mar 2022 14:48:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <f5633dea0bfabd40ba548fc8502e5838c033fbae.camel@kernel.org>
References: <f5633dea0bfabd40ba548fc8502e5838c033fbae.camel@kernel.org>
 <164692909854.2099075.9535537286264248057.stgit@warthog.procyon.org.uk>
 <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
 <306388.1647595110@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <666407.1647614889.1@warthog.procyon.org.uk>
Date: Fri, 18 Mar 2022 14:48:09 +0000
Message-ID: <666408.1647614889@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jeff Layton <jlayton@kernel.org> wrote: > > +static inline
 bool netfs_is_cache_enabled(struct netfs_i_context *ctx) > > +{ > > +#if
 IS_ENABLED(CONFIG_FSCACHE) > > + struct fscache_cookie *cookie = ctx->cache;
 > > + > > + return fscache_cook [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nVDtw-003Ah0-Ol
Subject: Re: [V9fs-developer] [PATCH v4 13/20] netfs: Add a netfs inode
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

> > +static inline bool netfs_is_cache_enabled(struct netfs_i_context *ctx)
> > +{
> > +#if IS_ENABLED(CONFIG_FSCACHE)
> > +	struct fscache_cookie *cookie = ctx->cache;
> > +
> > +	return fscache_cookie_valid(cookie) && cookie->cache_priv &&
> > +		fscache_cookie_enabled(cookie);
> 
> 
> As you mentioned in the other thread, it may be cleaner to move the
> cookie->cache_priv check into fscache_cookie_enabled. Is there ever a
> case where you'd need to separate the two checks?

I'm not sure, but I'd prefer not to do it in this series as it would affect
NFS plus some other operations, so will need retesting thoroughly.  I'd prefer
to defer it.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
