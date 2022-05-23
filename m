Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB50530E5B
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 May 2022 12:47:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nt5b0-0006Tz-5O; Mon, 23 May 2022 10:47:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nt5ay-0006Tt-Ed
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 10:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tufy4k9IUm7Dd+4tryigNXPHptoH5ASjzZkRMX/8R8c=; b=Pco+ezgcQn3U0gA2mBZdAZOYng
 IdzlBJtOBbVZhGK2OBE4ZMDxUGl9H+l4chXYh5d7r3PTcGxv2XgV773NGj30FRF9yyI3cfdaBx5s6
 F1PH2/W74uiFn7R4NrL/vALUtFqIC7F6nadCvBQGgurtx4e9ARbsalLORdeOpZChPRV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tufy4k9IUm7Dd+4tryigNXPHptoH5ASjzZkRMX/8R8c=; b=iloPwzQDcHO6KaeOMf6zSg/ad4
 MmzS4cajWoSyBeZB+qWonDtOxvBPl3tbw6tZe3U+YuqFFlIimfFMmWMS1XEFhzjCX/TRSpy/hRYcI
 VySac9MHLsWpbLXb98zjBHvaF5+LXYE6h711xzG9zV83PSdw6lAoPS3nniDf3DKrLtGQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nt5ar-002Gup-3u
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 10:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653302834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Tufy4k9IUm7Dd+4tryigNXPHptoH5ASjzZkRMX/8R8c=;
 b=aNineSb0koktGHQ5+oju+/E0bXsiZKEppb9bm1vjqr0nj4v8p/+QSGBoQH6rYd5CwF3xtY
 AWiKVXKkUXUJEvVIDAQtg5/VxejRghiLunkpL85wMeU47VNX+VsG+yEzffdmNmKh33E5a8
 Am+s0V3K/PrOUcks9AVY5JKv4lF/vf4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-212-KDjXxgU3PtSpCbc6xpsVuA-1; Mon, 23 May 2022 06:47:02 -0400
X-MC-Unique: KDjXxgU3PtSpCbc6xpsVuA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78C7E3C222C5;
 Mon, 23 May 2022 10:47:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8D71D1121314;
 Mon, 23 May 2022 10:46:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1b5daa4695b62795b617049e32c784052deabad4.camel@kernel.org>
References: <1b5daa4695b62795b617049e32c784052deabad4.camel@kernel.org>
 <165305805651.4094995.7763502506786714216.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <658390.1653302817.1@warthog.procyon.org.uk>
Date: Mon, 23 May 2022 11:46:57 +0100
Message-ID: <658391.1653302817@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > > Note that there
 are some conflicts between this patch and some of the > patches in the current
 ceph-client/testing branch. Depending on the > order of merge, one or the
 other will need to be fixed [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nt5ar-002Gup-3u
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-doc@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, dhowells@redhat.com,
 William Kucharski <william.kucharski@oracle.com>,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, keescook@chromium.org,
 Eric Van Hensbergen <ericvh@gmail.com>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> 
> Note that there are some conflicts between this patch and some of the
> patches in the current ceph-client/testing branch. Depending on the
> order of merge, one or the other will need to be fixed.

Do you think it could be taken through the ceph tree?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
