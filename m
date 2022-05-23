Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EC2530E82
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 May 2022 13:05:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nt5sm-0001Ab-Qe; Mon, 23 May 2022 11:05:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@kernel.org>) id 1nt5sk-00019s-Kk
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 11:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EdLcKfbCVThSAKV/Z0YYk7oUaXDqnxKSmBb3mVYsWUE=; b=HU2ULSad6rMWPBD5/kRlmfg1Lf
 9KLC9EdGGY+gSVDFOJe1Jlc/2/7LkxggQRvRYi35Kd5hcshvOnsayXTVy3FUcEjzpUqhYVfRKaqZp
 Co18Mo1khRdlUSVXJwCA1gbFiPoYSEgohpbO6w1/5J5QUDOizGPKe7YjpL4DIadQhbSI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EdLcKfbCVThSAKV/Z0YYk7oUaXDqnxKSmBb3mVYsWUE=; b=fA56UB5FBvkXKLMXzC+ic214gD
 Ixu1bcgwj1JhvvYQu5wSo+6pZvmaS28bfgVXEN1Gx9H171UwDi/ek7GYNkQFM3eY+ZqucPwMkJs/h
 CehxYDRTuRBw8HJXbBnTmkSwyKEGC6W9/JOWYsLiRticlf6K+FPTTLLcfBUaTtw9E6kA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nt5sg-0003AT-Lg
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 11:05:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A583060F84;
 Mon, 23 May 2022 11:05:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D4DFC385A9;
 Mon, 23 May 2022 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653303935;
 bh=EdLcKfbCVThSAKV/Z0YYk7oUaXDqnxKSmBb3mVYsWUE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=LAHnKRPIkbkfMVNjbAyfzyBGCdi2KgHR9Hk21uKh5rihEuvZS73c5L0mfGt0ucm7C
 cueg4jQS56PHv16C855VGL/+3WwpoUBquCXt/dM9L8motbs7R1uZAzh2zvBQ5Z4tNM
 ehS3+qSQ+H2QZvBJdHf+Rexpb+vkHupp9+p90ctoOrXkv5V0UBeLy7zNpI2WYGj5m8
 ICzukBSSGbTSVoiy6SRD/xP4usqk3sQEppvYkY04GvA7MTr/O3kezVFU9SI5n7x8KQ
 n1LoOx7Ete/Rb6ZvfbwaHETb2AY7VCyQdaiRjgwYv6Xza70EnVloWYW5X/zxQOScwN
 BZA0HmWFceqrw==
Message-ID: <e4fcdf88a9b35a9f1ca6e75fdf75ad469f824380.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Mon, 23 May 2022 07:05:31 -0400
In-Reply-To: <658391.1653302817@warthog.procyon.org.uk>
References: <1b5daa4695b62795b617049e32c784052deabad4.camel@kernel.org>
 <165305805651.4094995.7763502506786714216.stgit@warthog.procyon.org.uk>
 <658391.1653302817@warthog.procyon.org.uk>
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2022-05-23 at 11:46 +0100, David Howells wrote: >
 Jeff Layton <jlayton@kernel.org> wrote: > > > > > Note that there are some
 conflicts between this patch and some of the > > patches in the cur [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nt5sg-0003AT-Lg
Subject: Re: [V9fs-developer] [PATCH v2] netfs: Fix gcc-12 warning by
 embedding vfs inode in netfs_i_context
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
 William Kucharski <william.kucharski@oracle.com>, keescook@chromium.org,
 Jonathan Corbet <corbet@lwn.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, ceph-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, linux-afs@lists.infradead.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2022-05-23 at 11:46 +0100, David Howells wrote:
> Jeff Layton <jlayton@kernel.org> wrote:
> 
> > 
> > Note that there are some conflicts between this patch and some of the
> > patches in the current ceph-client/testing branch. Depending on the
> > order of merge, one or the other will need to be fixed.
> 
> Do you think it could be taken through the ceph tree?
> 
> David
> 

Since this touches a lot of non-ceph code, it may be best to just plan
to merge it ASAP, and we'll just base our merge branch on top of it.

Ilya/Xiubo, do you have an opinion here?
 
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
