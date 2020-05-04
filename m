Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 244231C435B
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:54:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVfIl-0001Wr-Uw; Mon, 04 May 2020 17:54:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1jVfIl-0001Wk-Aa
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+o4SdY0w3UouF91y2gLQuR1sVRgD2BPdPwIappEYt/U=; b=HzjlypCwbz1ipfPWmNGsPs4NGq
 J/JG3rD+uyxC4t3A0DEtKZjPl5LE3J/1EzJVHNPIyo7G7LeZwlgmYQQeQDLFuSqPaiqdHroxs8iIN
 EtkF1iUtm2H6FmCPd2ZPjCpQhBx+GcHF+X5nreoptXb1Z+aMOsXJnTHQVRnvJ9v8RqKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+o4SdY0w3UouF91y2gLQuR1sVRgD2BPdPwIappEYt/U=; b=P5FKRLb2lu/GD8/+Rq7W8KUAYi
 xaBOjw44FSTgN7ycReQXleKuCENXCLWgwC2dRnEN0qrW2vSEDz8lm61lEHJo+3NXSszlYxt5IwSwl
 SkppxqGXpbYBjxAtrfYqhe8TYcwJ25ccLXh/xQA6xJJfiMxPXCKb/j4wFzhqolOdGlPk=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVfIh-007EJE-KL
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588614877;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+o4SdY0w3UouF91y2gLQuR1sVRgD2BPdPwIappEYt/U=;
 b=RlXQPhgzh3gsilovZehVqYRsakFgZ6Pe7x9oLVqBETYyJ9pS8HJmW9EL29O741nN9aiza7
 6ttt4WCuyL+HVeGs2t8GJTudfQwNiAhVitQ1orQCw6+XfTd11I8p0yRWPljUDRAz4S0fCG
 n5AxVilHmDDaxRpnr6IwqrPQXZq9IGg=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-mOZ9KwpLPiSrn8MHYLtvqQ-1; Mon, 04 May 2020 13:54:36 -0400
X-MC-Unique: mOZ9KwpLPiSrn8MHYLtvqQ-1
Received: by mail-qk1-f197.google.com with SMTP id g143so87729qke.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 04 May 2020 10:54:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=+o4SdY0w3UouF91y2gLQuR1sVRgD2BPdPwIappEYt/U=;
 b=Kx4VadxIbK1wAqZD8nwLaXDYIUis4v1zd0PCarmsx9vfP8qMvls3EZpZ6hI8udJfTT
 R5FJlexXeLCpOA+zQdilYuK0eoaH2LOkUzlIOJ56rqQv90nyF1bfb+EvDNVjg/k56PFf
 i3pSEVxYGjTiKVINn8SEqT8fz7PF1GKAcbpEquW/xq1uSqaepc/ojRjGoZSqgVTyEkNp
 TREjgTz1XbPjRwWWi24VB0EjexwBSjwCTlCAkT+tNDYwYLY5/gnrsZoceppbZJXgnyw0
 rHYGf5FWLXw66e+0nEx7yu7XIdWDylLOaz/HQP+UFWM2RTjUftf1K2VN8LdGrGWYmghn
 Rrog==
X-Gm-Message-State: AGi0PuYG5/4ZMHn17LMCuuU77c1zC0j5ISkzpMjrDp5zrRaMGOTECNtK
 +3ZA1DhRmeb4SJJDM+LwlLjlsP0VUnoVeNf9o2noBxsa6KUpdM1jPh6WXskF//vzsIukoIZJcSS
 b4Nw+ku42zWfV7IePVV5JXqmtKoruuxBIxeg=
X-Received: by 2002:a05:620a:7ca:: with SMTP id
 10mr370214qkb.131.1588614875627; 
 Mon, 04 May 2020 10:54:35 -0700 (PDT)
X-Google-Smtp-Source: APiQypK3uCi6lFkdGRP90/JqMNVl2EPo4jU4+vUXICbUKWh5Z7zHzwK3PWjYZaZSl3+osjCddPgO1g==
X-Received: by 2002:a05:620a:7ca:: with SMTP id
 10mr370193qkb.131.1588614875436; 
 Mon, 04 May 2020 10:54:35 -0700 (PDT)
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net. [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id q32sm12123066qta.13.2020.05.04.10.54.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 10:54:34 -0700 (PDT)
Message-ID: <63498a6eedc7994b1e96a59d12468bfd15e15ef4.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, Trond Myklebust
 <trondmy@hammerspace.com>, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>
Date: Mon, 04 May 2020 13:54:33 -0400
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jVfIh-007EJE-KL
Subject: Re: [V9fs-developer] [RFC PATCH 00/61] fscache,
 cachefiles: Rewrite the I/O interface in terms of kiocb/iov_iter
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2020-05-04 at 18:07 +0100, David Howells wrote:
> 
>  (3) Make NFS, CIFS, Ceph, 9P work with it.  I'm hoping that Jeff Layton will
>      do Ceph.  As mentioned, I'm having a crack at NFS, but it's evolved a bit
>      since I last looked at it and it might be easier if I can palm that off
>      to someone more current in the NFS I/O code.
> 
> 

[...]

This looks like a really nice overhaul. I particularly love the
diffstat. Net removal of ~4000 lines!

I'll plan to draft up a patch for Ceph in the near future. The new API
seems to be quite different, so I imagine this will more or less be a
rip and replace on the old code.
-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
