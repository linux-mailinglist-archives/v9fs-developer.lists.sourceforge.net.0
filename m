Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B2B479B19
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Dec 2021 14:51:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mya7t-0002H1-9n; Sat, 18 Dec 2021 13:51:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mya7r-0002Gr-UM
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Dec 2021 13:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BIFz5ajtFoBBkDaiDzhdzEAut5QHeIJpeIasvSkTdck=; b=fInM+687mqhJK8IzNsYxer9dFz
 0i6GEThKG5kycVXFz8qQTwq+AKtObZJ+lt8SO/xDG4aCH9rLd/yeA+6IM1J4L53sE616jZhagO0QR
 LIsV2mcCF4q5bFHGmSIL+3h1ihqOGh1wG6thihkyaRk8LtnwNu7yOb1HLIgP7/eK0/rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BIFz5ajtFoBBkDaiDzhdzEAut5QHeIJpeIasvSkTdck=; b=DNxNF3AxTCgMZkr/ueolhPMmVQ
 a2gKMUFkCE6E4fpyVGdpdhPTc1VOwtiCKNV730Blo8F6oYiOTW6LXz+9E0WGTiEmWjCEM8pEwqzp1
 ilyyWJwoyefsqtsZTJ6ebQXF2fYcbm4xrYTChyAmu/4ryWxlnDi+C6+Zn8DYBPw3GbBo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mya7p-0003FY-CC
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Dec 2021 13:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639835502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BIFz5ajtFoBBkDaiDzhdzEAut5QHeIJpeIasvSkTdck=;
 b=he7t0X858fL9kxBAoWbkYDWtq9wGAOJ49ioJVcDAR0FkejhCOt3eW/lvR/O17HnfxHVq+r
 D7DjZbuYUgbx1v6bXUUUupS3WTWw2gpJ97MRbt5gnOMIirzc2nlcrX2zHUVh/vLeKpbzg+
 fcOflk+ASJiZ5Pu7sguBq//xmt7ZvDs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-399-Sg7s_sLVNYOqBjhC08zpgA-1; Sat, 18 Dec 2021 08:51:41 -0500
X-MC-Unique: Sg7s_sLVNYOqBjhC08zpgA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73E6D1853028;
 Sat, 18 Dec 2021 13:51:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B45F94B8A;
 Sat, 18 Dec 2021 13:51:37 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <Yb3AbFhc9ApdHpcA@codewreck.org>
References: <Yb3AbFhc9ApdHpcA@codewreck.org>
 <20211203185816.796637-1-arnd@kernel.org> <YaqwdNGlZDBDcg5R@codewreck.org>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <2222223.1639835496.1@warthog.procyon.org.uk>
Date: Sat, 18 Dec 2021 13:51:36 +0000
Message-ID: <2222224.1639835496@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet <asmadeus@codewreck.org> wrote: > David
 since then fixed the warning differently in v2 of the patch (he > moved the
 fscache_note_page_release() out of the ifdef), so I won't do > anything with
 this even if in principle I tend to agr [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mya7p-0003FY-CC
Subject: Re: [V9fs-developer] [PATCH] 9p: fix unused-variable warning
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Arnd Bergmann <arnd@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Eric Van Hensbergen <ericvh@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> wrote:

> David since then fixed the warning differently in v2 of the patch (he
> moved the fscache_note_page_release() out of the ifdef), so I won't do
> anything with this even if in principle I tend to agree that
> if(IS_ENABLED()) lead to better compiler coverage

Yeah, fscache_note_page_release() compiles out in such a case because
v9fs_inode_cookie() becomes unconditionally NULL if it's disabled.

If you want me to do something different, can you give me an incremental patch
to merge into mine?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
