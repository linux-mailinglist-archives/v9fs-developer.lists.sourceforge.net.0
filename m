Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2BA536287
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 14:27:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuZ4N-0006E5-Mm; Fri, 27 May 2022 12:27:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nuZ4L-0006Dy-Ui
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 12:27:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RJxrf4ooyTqpiAItg7I/Q/q7XnsebEkQQNQ2A5YOD9I=; b=m0kcOsYepZ6oETBzYzGeLmINup
 nsEIOLYOIBzib//2ZsLo5BG/eEBqkRkgYyIG5k8iOrLztbmNwNv292HQ7ZLFWddrLDNZgUcPV88DV
 95T7vGW9LgHBTf+KPM7KyvaTt6B6kxfjV4oW82LQ761FzgmYnmFfw5ntglg+u/SJcRnk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RJxrf4ooyTqpiAItg7I/Q/q7XnsebEkQQNQ2A5YOD9I=; b=MIF0FNGhYIMLL0lWnHWb58YC5L
 6YEEgs4iINK10RZ/BuOuzJmeRqs++9LEiYyRwSnTLyYU0Gc0XslWVoCv3o3GZsBmpOaFPJpgntnaY
 hWY78k1QPS8mng+23AIolvarT/w+GslCT0gu0RoulOwTfE2e+F1rDCbYBeui5KVfRnIU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuZ4G-0001T6-4e
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 12:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653654463;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RJxrf4ooyTqpiAItg7I/Q/q7XnsebEkQQNQ2A5YOD9I=;
 b=Co1tSshUMCi3FjIl3T0V4I6phbN7o0O2EuWQrOy5KdBQr8SAi7iiToXeOpmgclAAIo5ko+
 ofRWtrkEW6pdyB2gdAOoNTWGKCQ9gurXP9Kozl2pDcRPQezKhzPnVlyUxx/VbDeNljka0D
 qeWs5+0w7ZzZ4l72Be4JkHUr9aOEPC8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-251-jXjVmR17Pi2O2lmDWrKoXw-1; Fri, 27 May 2022 08:27:38 -0400
X-MC-Unique: jXjVmR17Pi2O2lmDWrKoXw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29875101AA45;
 Fri, 27 May 2022 12:27:37 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2504E1410DD5;
 Fri, 27 May 2022 12:27:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <202205190704.1DC660E5E@keescook>
References: <202205190704.1DC660E5E@keescook>
 <165296786831.3591209.12111293034669289733.stgit@warthog.procyon.org.uk>
To: Kees Cook <keescook@chromium.org>
MIME-Version: 1.0
Content-ID: <3598051.1653654453.1@warthog.procyon.org.uk>
Date: Fri, 27 May 2022 13:27:33 +0100
Message-ID: <3598052.1653654453@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Kees,
 Is v2 good for you? I realise I left your R-b attached
 to it when I posted it, but I can remove that if you don't have time to review
 it. David 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nuZ4G-0001T6-4e
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-doc@vger.kernel.org,
 jlayton@kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 dhowells@redhat.com, William Kucharski <william.kucharski@oracle.com>,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-fsdevek@vger.kernel.org, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Kees,

Is v2 good for you?  I realise I left your R-b attached to it when I posted
it, but I can remove that if you don't have time to review it.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
